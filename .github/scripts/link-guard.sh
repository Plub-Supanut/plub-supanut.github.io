#!/usr/bin/env bash
# Link guard — every public repo with GitHub Pages enabled must set its
# homepage (the GitHub "Website" field) to the Pages URL, and that URL must
# answer HTTP 200. Bash + curl + jq only, no other dependencies.
#
# Environment:
#   GITHUB_TOKEN            optional; sent as an Authorization header
#   LINK_GUARD_OWNER        account to check (default: Plub-Supanut)
#   LINK_GUARD_API          API base (default: https://api.github.com)
#   LINK_GUARD_REPOS_JSON   fixture file: JSON array of repos, replaces the
#                           repo listing for offline tests; an entry may carry
#                           "pages_html_url" to replace the Pages API call
#   LINK_GUARD_HTTP_RETRIES homepage probe attempts (default: 3)
#   LINK_GUARD_SKIP_HTTP    "1" skips the homepage HTTP check

set -uo pipefail

OWNER="${LINK_GUARD_OWNER:-Plub-Supanut}"
API="${LINK_GUARD_API:-https://api.github.com}"
FIXTURE="${LINK_GUARD_REPOS_JSON:-}"
RETRIES="${LINK_GUARD_HTTP_RETRIES:-3}"
SKIP_HTTP="${LINK_GUARD_SKIP_HTTP:-0}"
TOKEN="${GITHUB_TOKEN:-}"

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

problems=0
checked=0

api_get() { # path, body-file -> prints HTTP status
  local path="$1" body="$2" code
  code=$(curl -sS -o "$body" -w '%{http_code}' \
    -H 'Accept: application/vnd.github+json' \
    ${TOKEN:+-H "Authorization: Bearer $TOKEN"} \
    "$API$path" 2>/dev/null) || code="000"
  printf '%s' "$code"
}

check_http() { # url -> prints final status; 0 when 200
  local url="$1" i code
  for i in $(seq 1 "$RETRIES"); do
    code=$(curl -sS -L -o /dev/null -w '%{http_code}' --max-time 30 "$url" 2>/dev/null) || code="000"
    if [ "$code" = "200" ]; then printf '%s' "$code"; return 0; fi
    if [ "$i" -lt "$RETRIES" ]; then sleep $((i * 3)); fi
  done
  printf '%s' "$code"
  return 1
}

repos="$tmp/repos.json"
if [ -n "$FIXTURE" ]; then
  cp "$FIXTURE" "$repos"
else
  printf '[]\n' > "$repos"
  page=1
  while [ "$page" -le 5 ]; do
    code=$(api_get "/users/$OWNER/repos?per_page=100&page=$page&sort=updated&type=owner" "$tmp/page.json")
    if [ "$code" != "200" ]; then
      printf '::error::link-guard could not list repos for %s (HTTP %s)\n' "$OWNER" "$code"
      exit 1
    fi
    if ! jq -c --slurpfile page "$tmp/page.json" '. + $page[0]' "$repos" > "$tmp/merged.json"; then
      printf '::error::link-guard got invalid JSON from the repos API\n'
      exit 1
    fi
    mv "$tmp/merged.json" "$repos"
    count=$(jq 'length' "$tmp/page.json" 2>/dev/null) || count=0
    if [ "$count" -lt 100 ]; then break; fi
    page=$((page + 1))
  done
fi

if ! jq -c '[.[] | select(((.fork // false) | not) and ((.archived // false) | not) and ((.private // false) | not))]' \
  "$repos" > "$tmp/eligible.json"; then
  printf '::error::link-guard could not parse the repo list\n'
  exit 1
fi

while IFS= read -r repo; do
  name=$(jq -r '.name // empty' <<<"$repo")
  homepage=$(jq -r '.homepage // ""' <<<"$repo")
  [ -n "$name" ] || continue

  if [ -n "$FIXTURE" ] && jq -e 'has("pages_html_url")' <<<"$repo" >/dev/null 2>&1; then
    pages_html=$(jq -r '.pages_html_url // empty' <<<"$repo")
    if [ -n "$pages_html" ]; then pages_code="200"; else pages_code="404"; fi
  else
    pages_code=$(api_get "/repos/$OWNER/$name/pages" "$tmp/pages.json")
    pages_html=$(jq -r '.html_url // empty' "$tmp/pages.json" 2>/dev/null) || pages_html=""
  fi

  # No Pages -> nothing to guard for this repo.
  [ "$pages_code" = "200" ] || continue
  checked=$((checked + 1))

  if [ -z "$pages_html" ]; then
    printf '::error::%s: Pages is enabled but the API returned no html_url — fix: check Pages settings for %s/%s\n' \
      "$name" "$OWNER" "$name"
    problems=$((problems + 1))
    continue
  fi

  expected="${pages_html%/}"

  if [ -z "$homepage" ]; then
    printf '::error::%s: homepage is empty; expected %s — fix: gh repo edit %s/%s --homepage %s\n' \
      "$name" "$expected" "$OWNER" "$name" "$expected"
    problems=$((problems + 1))
    continue
  fi

  if [[ "$homepage" != https://* ]]; then
    printf '::error::%s: homepage is not https (%s); expected %s — fix: gh repo edit %s/%s --homepage %s\n' \
      "$name" "$homepage" "$expected" "$OWNER" "$name" "$expected"
    problems=$((problems + 1))
    continue
  fi

  if [ "${homepage%/}" != "$expected" ]; then
    printf '::error::%s: homepage %s does not match the live Pages URL; expected %s — fix: gh repo edit %s/%s --homepage %s\n' \
      "$name" "$homepage" "$expected" "$OWNER" "$name" "$expected"
    problems=$((problems + 1))
    continue
  fi

  if [ "$SKIP_HTTP" = "1" ]; then continue; fi
  if ! http_code=$(check_http "$expected"); then
    printf '::error::%s: %s answered HTTP %s instead of 200 — fix: repair the Pages build, then: gh repo edit %s/%s --homepage %s\n' \
      "$name" "$expected" "${http_code:-000}" "$OWNER" "$name" "$expected"
    problems=$((problems + 1))
  fi
done < <(jq -c '.[]' "$tmp/eligible.json")

printf 'link-guard: checked %s Pages repo(s), %s problem(s)\n' "$checked" "$problems"
if [ "$problems" -ne 0 ]; then exit 1; fi
