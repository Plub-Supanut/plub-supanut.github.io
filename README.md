<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verdict | Forensic Medicine Exam Prep</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=IBM+Plex+Mono:wght@400;500&family=IBM+Plex+Sans:ital,wght@0,300;0,400;0,500;0,600;1,400&display=swap" rel="stylesheet">
    <style>
        :root{--bg:#0e0e0f;--bg2:#141416;--bg3:#1c1c1f;--bg4:#242428;--border:#2e2e33;--border2:#3a3a40;--text:#e8e6e0;--text2:#a09e98;--text3:#6b6965;--amber:#d4883a;--amber2:#f0a050;--amber-dim:rgba(212,136,58,0.12);--red:#c0392b;--red-dim:rgba(192,57,43,0.15);--green2:#4caf50;--green-dim:rgba(46,125,50,0.15);--blue:#5b9bd5;--blue-dim:rgba(41,98,170,0.15);--mono:'IBM Plex Mono',monospace;--sans:'IBM Plex Sans',sans-serif;--display:'Bebas Neue',cursive;--radius:4px;--radius2:8px;--sidebar-w:220px;--trans:all 0.18s ease;}
        *,*::before,*::after{box-sizing:border-box;margin:0;padding:0;}
        html{font-size:15px;}
        body{background:var(--bg);color:var(--text);font-family:var(--sans);min-height:100vh;display:flex;overflow-x:hidden;}
        ::-webkit-scrollbar{width:6px;}::-webkit-scrollbar-track{background:var(--bg2);}::-webkit-scrollbar-thumb{background:var(--border2);border-radius:3px;}::-webkit-scrollbar-thumb:hover{background:var(--amber);}
        #app{display:flex;flex:1;min-height:100vh;}
        #sidebar{width:var(--sidebar-w);background:var(--bg2);border-right:1px solid var(--border);display:flex;flex-direction:column;position:fixed;left:0;top:0;bottom:0;z-index:100;transition:transform 0.25s ease;}
        #sidebar-logo{padding:20px 20px 16px;border-bottom:1px solid var(--border);}
        .logo-text{font-family:var(--display);font-size:2rem;color:var(--amber);letter-spacing:2px;line-height:1;}
        .logo-sub{font-family:var(--mono);font-size:0.62rem;color:var(--text3);letter-spacing:0.1em;margin-top:3px;text-transform:uppercase;}
        #sidebar-rank-chip{margin:14px 16px 0;background:var(--amber-dim);border:1px solid var(--amber);border-radius:var(--radius);padding:8px 12px;}
        .rank-label{font-family:var(--mono);font-size:0.58rem;color:var(--amber);letter-spacing:0.1em;text-transform:uppercase;}
        .rank-name{font-weight:600;font-size:0.82rem;color:var(--text);margin-top:2px;}
        .xp-bar-wrap{margin-top:8px;background:var(--bg3);height:4px;border-radius:2px;overflow:hidden;}
        .xp-bar-fill{height:100%;background:var(--amber);border-radius:2px;transition:width 0.5s ease;}
        .xp-text{font-family:var(--mono);font-size:0.6rem;color:var(--text3);margin-top:4px;}
        .nav-links{flex:1;padding:16px 10px;overflow-y:auto;}
        .nav-section-label{font-family:var(--mono);font-size:0.58rem;color:var(--text3);letter-spacing:0.12em;text-transform:uppercase;padding:0 10px;margin:12px 0 6px;}
        .nav-item{display:flex;align-items:center;gap:10px;padding:9px 10px;border-radius:var(--radius);cursor:pointer;font-size:0.88rem;color:var(--text2);transition:var(--trans);border:1px solid transparent;user-select:none;text-decoration:none;}
        .nav-item:hover{background:var(--bg3);color:var(--text);}
        .nav-item.active{background:var(--amber-dim);color:var(--amber);border-color:rgba(212,136,58,0.3);}
        .nav-icon{font-size:1rem;width:18px;text-align:center;}
        #sidebar-footer{padding:14px 16px;border-top:1px solid var(--border);}
        .streak-badge{display:flex;align-items:center;gap:8px;font-size:0.82rem;color:var(--text2);}
        .streak-badge .streak-num{font-family:var(--display);font-size:1.4rem;color:var(--amber2);line-height:1;}
        #main{margin-left:var(--sidebar-w);flex:1;display:flex;flex-direction:column;min-height:100vh;}
        #topbar{height:52px;background:var(--bg2);border-bottom:1px solid var(--border);display:flex;align-items:center;padding:0 24px;gap:16px;position:sticky;top:0;z-index:50;}
        #topbar-title{font-family:var(--display);font-size:1.3rem;letter-spacing:1px;color:var(--text);flex:1;}
        #hamburger{display:none;background:none;border:none;color:var(--text);font-size:1.3rem;cursor:pointer;padding:4px;}
        .content-area{padding:28px 28px 48px;flex:1;overflow-y:auto;}
        .view-section{display:none;max-width:840px;}
        .view-section.active{display:block;}
        .card{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius2);padding:20px;margin-bottom:16px;}
        .grid-2{display:grid;grid-template-columns:1fr 1fr;gap:16px;}
        .grid-3{display:grid;grid-template-columns:repeat(3,1fr);gap:16px;}
        h1{font-family:var(--display);font-size:1.8rem;letter-spacing:1.5px;color:var(--text);margin-bottom:4px;}
        h2{font-family:var(--display);font-size:1.15rem;letter-spacing:1px;color:var(--text);margin-bottom:8px;border:none;padding:0;}
        h3{font-family:var(--mono);font-size:0.7rem;color:var(--amber);letter-spacing:0.1em;text-transform:uppercase;border-bottom:1px solid var(--border);padding-bottom:6px;margin:16px 0 12px;}
        p{margin-bottom:0.8rem;font-size:0.88rem;line-height:1.7;color:var(--text2);}
        ul,ol{margin-bottom:0.8rem;padding-left:20px;}
        li{margin-bottom:4px;font-size:0.88rem;line-height:1.7;color:var(--text2);}
        strong{color:var(--text);}
        .text-accent{color:var(--amber);}
        .text-muted{color:var(--text3);}
        .text-center{text-align:center;}
        .hidden{display:none!important;}
        .dash-grid{display:grid;grid-template-columns:1fr 1fr 1fr;gap:16px;}
        .dash-welcome{grid-column:1/-1;background:var(--bg3);border:1px solid var(--border2);border-radius:var(--radius2);padding:24px 28px;display:flex;align-items:center;justify-content:space-between;gap:20px;}
        .dash-welcome h1{font-size:2.4rem;letter-spacing:2px;line-height:1;margin:0;}
        .dash-welcome h1 span{color:var(--amber);}
        .dash-welcome p{font-size:0.85rem;color:var(--text2);margin:6px 0 0;}
        .dash-stat-card{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius2);padding:18px 20px;}
        .dash-stat-label{font-family:var(--mono);font-size:0.62rem;color:var(--text3);letter-spacing:0.1em;text-transform:uppercase;margin-bottom:8px;}
        .dash-stat-val{font-family:var(--display);font-size:2.2rem;color:var(--amber);line-height:1;}
        .dash-stat-sub{font-size:0.78rem;color:var(--text2);margin-top:4px;}
        .topic-bar-row{display:flex;align-items:center;gap:12px;margin-bottom:10px;}
        .topic-bar-label{font-size:0.78rem;color:var(--text2);width:180px;flex-shrink:0;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}
        .topic-bar-track{flex:1;background:var(--bg4);height:6px;border-radius:3px;overflow:hidden;}
        .topic-bar-fill{height:100%;border-radius:3px;background:var(--amber);transition:width 0.4s ease;}
        .topic-bar-fill.weak{background:var(--red);}
        .topic-bar-fill.mastered{background:var(--green2);}
        .topic-bar-pct{font-family:var(--mono);font-size:0.68rem;color:var(--text3);width:32px;text-align:right;}
        .weak-tag{display:inline-block;background:var(--red-dim);border:1px solid rgba(192,57,43,0.4);color:#e57373;font-family:var(--mono);font-size:0.7rem;padding:3px 9px;border-radius:var(--radius);margin:3px;}
        .quick-actions{display:flex;gap:10px;flex-wrap:wrap;margin-top:8px;}
        .btn{display:inline-flex;align-items:center;gap:6px;padding:9px 18px;border-radius:var(--radius);border:1px solid transparent;font-family:var(--sans);font-size:0.82rem;font-weight:500;cursor:pointer;transition:var(--trans);user-select:none;}
        .btn-primary{background:var(--amber);color:#0e0e0f;border-color:var(--amber);}
        .btn-primary:hover{background:var(--amber2);}
        .btn-secondary{background:transparent;color:var(--text2);border-color:var(--border2);}
        .btn-secondary:hover{background:var(--bg3);color:var(--text);border-color:var(--text3);}
        .btn-danger{background:transparent;color:#e57373;border-color:rgba(192,57,43,0.4);}
        .btn-danger:hover{background:var(--red-dim);}
        .btn-sm{padding:6px 12px;font-size:0.75rem;}
        .btn-full{width:100%;justify-content:center;}
        .badge{font-family:var(--mono);font-size:0.6rem;padding:2px 7px;border-radius:var(--radius);border:1px solid transparent;}
        .badge-success,.badge-studied{background:var(--green-dim);color:var(--green2);border-color:rgba(76,175,80,0.3);}
        .badge-warning,.badge-bookmarked{background:var(--amber-dim);color:var(--amber);border-color:rgba(212,136,58,0.3);}
        .module-list-item{display:flex;justify-content:space-between;align-items:center;padding:10px 14px;border:1px solid var(--border);border-radius:var(--radius);margin-bottom:8px;cursor:pointer;transition:var(--trans);font-size:0.88rem;color:var(--text2);}
        .module-list-item:hover{border-color:var(--border2);background:var(--bg3);color:var(--text);}
        .pearl-box,.callout-pearl{background:var(--amber-dim);border-left:3px solid var(--amber);color:var(--text);padding:12px 16px;border-radius:var(--radius);margin:12px 0;font-size:0.85rem;line-height:1.6;}
        .pearl-box::before,.callout-pearl::before{content:'💡 EXAM PEARL — ';font-family:var(--mono);font-size:0.65rem;color:var(--amber);letter-spacing:0.08em;text-transform:uppercase;display:block;margin-bottom:4px;}
        .confuse-box,.callout-warn{background:var(--red-dim);border-left:3px solid #e57373;color:var(--text);padding:12px 16px;border-radius:var(--radius);margin:12px 0;font-size:0.85rem;line-height:1.6;}
        .confuse-box::before,.callout-warn::before{content:'⚠️ MUST NOT CONFUSE — ';font-family:var(--mono);font-size:0.65rem;color:#e57373;letter-spacing:0.08em;text-transform:uppercase;display:block;margin-bottom:4px;}
        .active-recall{background:var(--blue-dim);border:1px dashed rgba(91,155,213,0.3);padding:12px 16px;border-radius:var(--radius);margin:12px 0;text-align:center;font-size:0.85rem;line-height:1.6;}
        .active-recall span{cursor:pointer;color:var(--blue);font-weight:600;border-bottom:1px dotted var(--blue);}
        .active-recall .answer{display:none;margin-top:0.5rem;color:var(--text);text-align:left;}
        table{width:100%;border-collapse:collapse;margin:0.8rem 0;font-size:0.82rem;}
        th,td{border:1px solid var(--border);padding:8px 12px;text-align:left;}
        th{background:var(--bg4);font-family:var(--mono);font-size:0.7rem;color:var(--amber);letter-spacing:0.06em;text-transform:uppercase;}
        td{color:var(--text2);vertical-align:top;line-height:1.5;}
        tr:nth-child(even) td{background:rgba(255,255,255,0.02);}
        .quiz-option{display:block;width:100%;text-align:left;padding:12px 16px;margin-bottom:8px;background:var(--bg3);border:1px solid var(--border);border-radius:var(--radius);cursor:pointer;transition:var(--trans);font-size:0.88rem;font-family:var(--sans);color:var(--text2);}
        .quiz-option:hover:not(:disabled){border-color:var(--border2);color:var(--text);background:var(--bg4);}
        .quiz-option.correct{border-color:var(--green2);background:var(--green-dim);color:var(--green2);}
        .quiz-option.wrong{border-color:#e57373;background:var(--red-dim);color:#e57373;}
        .quiz-option:disabled{cursor:default;opacity:.65;}
        .quiz-feedback{margin-top:16px;padding:14px 16px;background:var(--bg4);border:1px solid var(--border2);border-radius:var(--radius);font-size:0.84rem;line-height:1.65;color:var(--text2);display:none;}
        .quiz-feedback.show{display:block;}
        #timer-bar{height:3px;background:linear-gradient(90deg,#e57373,var(--amber));width:100%;transition:width 1s linear;margin-bottom:16px;display:none;border-radius:3px;}
        #results-score{font-family:var(--display);font-size:5rem;line-height:1;color:var(--amber);}
        .progress-bar-bg{width:100%;background:var(--bg4);border-radius:3px;height:5px;overflow:hidden;margin-top:6px;}
        .progress-bar-fill{height:100%;background:var(--amber);transition:width 0.4s ease;border-radius:3px;}
        .rank-ladder{display:flex;flex-direction:column;gap:10px;}
        .rank-row{display:flex;align-items:center;gap:12px;padding:10px 14px;border:1px solid var(--border);border-radius:var(--radius);font-size:0.85rem;color:var(--text2);}
        .rank-row.current{border-color:var(--amber);background:var(--amber-dim);color:var(--text);}
        .rank-row.achieved{border-color:rgba(76,175,80,0.3);background:var(--green-dim);color:var(--green2);}
        .rank-row-xp{font-family:var(--mono);font-size:0.7rem;color:var(--text3);margin-left:auto;}
        .rank-row-icon{font-size:1.1rem;}
        .switch{position:relative;display:inline-block;width:44px;height:24px;}
        .switch input{opacity:0;width:0;height:0;}
        .slider{position:absolute;cursor:pointer;top:0;left:0;right:0;bottom:0;background-color:var(--bg);transition:.4s;border-radius:24px;border:1px solid var(--border);}
        .slider:before{position:absolute;content:"";height:16px;width:16px;left:3px;bottom:3px;background-color:var(--text3);transition:.4s;border-radius:50%;}
        input:checked+.slider{background-color:var(--amber-dim);border-color:var(--amber);}
        input:checked+.slider:before{transform:translateX(20px);background-color:var(--amber);}
        body.reduce-anim *{animation:none!important;transition:none!important;}
        #toast{position:fixed;bottom:24px;right:24px;background:var(--bg3);border:1px solid var(--border2);border-radius:var(--radius2);padding:12px 18px;font-size:0.85rem;color:var(--text);z-index:999;transform:translateY(100px);opacity:0;transition:all 0.3s ease;max-width:300px;}
        #toast.show{transform:translateY(0);opacity:1;}
        #toast.amber{border-color:var(--amber);}
        #toast.green{border-color:var(--green2);}
        #sidebar-overlay{display:none;position:fixed;inset:0;background:rgba(0,0,0,0.6);z-index:90;}
        .section-title{font-family:var(--display);font-size:1.5rem;letter-spacing:1px;color:var(--text);margin-bottom:4px;}
        .section-sub{font-size:0.82rem;color:var(--text3);font-family:var(--mono);margin-bottom:20px;}
        .card-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(260px,1fr));gap:16px;}
        .dash-grid{display:grid;grid-template-columns:1fr 1fr 1fr;grid-template-rows:auto;gap:16px;}
        .dash-welcome{grid-column:1/-1;background:var(--bg3);border:1px solid var(--border2);border-radius:var(--radius2);padding:24px 28px;display:flex;align-items:center;justify-content:space-between;gap:20px;}
        .dash-stat-card{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius2);padding:18px 20px;}
        .dash-stat-label{font-family:var(--mono);font-size:0.62rem;color:var(--text3);letter-spacing:0.1em;text-transform:uppercase;margin-bottom:8px;}
        .dash-stat-val{font-family:var(--display);font-size:2.2rem;color:var(--amber);line-height:1;}
        .dash-stat-sub{font-size:0.78rem;color:var(--text2);margin-top:4px;}
        .topic-overview-card{grid-column:1/3;background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius2);padding:18px 20px;}
        .topic-bar-row{display:flex;align-items:center;gap:12px;margin-bottom:10px;}
        .topic-bar-label{font-size:0.78rem;color:var(--text2);width:180px;flex-shrink:0;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}
        .topic-bar-track{flex:1;background:var(--bg4);height:6px;border-radius:3px;overflow:hidden;}
        .topic-bar-fill{height:100%;border-radius:3px;background:var(--amber);transition:width 0.4s ease;}
        .topic-bar-fill.weak{background:var(--red);}
        .topic-bar-fill.mastered{background:var(--green2);}
        .topic-bar-pct{font-family:var(--mono);font-size:0.68rem;color:var(--text3);width:32px;text-align:right;}
        .weak-tag{display:inline-block;background:var(--red-dim);border:1px solid rgba(192,57,43,0.4);color:#e57373;font-family:var(--mono);font-size:0.7rem;padding:3px 9px;border-radius:var(--radius);margin:3px;}
        .quick-actions{display:flex;gap:10px;flex-wrap:wrap;margin-top:8px;}
        .rank-ladder{display:flex;flex-direction:column;gap:10px;margin-top:12px;}
        .rank-row{display:flex;align-items:center;gap:12px;padding:10px 14px;border:1px solid var(--border);border-radius:var(--radius);font-size:0.85rem;color:var(--text2);position:relative;overflow:hidden;}
        .rank-row.current{border-color:var(--amber);background:var(--amber-dim);color:var(--text);}
        .rank-row.achieved{border-color:rgba(76,175,80,0.3);background:var(--green-dim);color:var(--green2);}
        .rank-row-xp{font-family:var(--mono);font-size:0.7rem;color:var(--text3);margin-left:auto;}
        .rank-row-icon{font-size:1.1rem;}
        .badge{font-family:var(--mono);font-size:0.6rem;padding:2px 7px;border-radius:var(--radius);border:1px solid transparent;}
        .badge-studied{background:var(--green-dim);color:var(--green2);border-color:rgba(76,175,80,0.3);}
        .badge-bookmarked{background:var(--amber-dim);color:var(--amber);border-color:rgba(212,136,58,0.3);}
        .dash-welcome-left h1{font-family:var(--display);font-size:2.4rem;letter-spacing:2px;line-height:1;color:var(--text);}
        .dash-welcome-left h1 span{color:var(--amber);}
        .dash-welcome-left p{font-size:0.85rem;color:var(--text2);margin-top:6px;}
        .module-list{display:flex;flex-direction:column;gap:12px;}
        .module-card{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius2);overflow:hidden;transition:border-color 0.2s;}
        .module-card:hover{border-color:var(--border2);}
        .module-header{padding:16px 20px;cursor:pointer;display:flex;align-items:center;gap:14px;user-select:none;}
        .module-num{font-family:var(--display);font-size:1.8rem;color:var(--amber);line-height:1;width:36px;flex-shrink:0;}
        .module-info{flex:1;min-width:0;}
        .module-title-text{font-weight:600;font-size:0.95rem;color:var(--text);}
        .module-desc{font-size:0.78rem;color:var(--text3);margin-top:2px;}
        .module-badges{display:flex;gap:6px;flex-shrink:0;align-items:center;}
        .module-chevron{color:var(--text3);font-size:0.8rem;transition:transform 0.2s;flex-shrink:0;}
        .module-chevron.open{transform:rotate(180deg);}
        .module-body{display:none;padding:0 20px 20px;}
        .module-body.open{display:block;}
        .module-actions{display:flex;gap:10px;margin-top:16px;padding-top:16px;border-top:1px solid var(--border);flex-wrap:wrap;}
        .lesson-section{margin-bottom:20px;}
        .lesson-section h3{font-family:var(--mono);font-size:0.7rem;color:var(--amber);letter-spacing:0.1em;text-transform:uppercase;border-bottom:1px solid var(--border);padding-bottom:6px;margin-bottom:12px;}
        .lesson-section p,.lesson-section li{font-size:0.88rem;line-height:1.7;color:var(--text2);}
        .lesson-section ul,.lesson-section ol{padding-left:20px;}
        .lesson-section li{margin-bottom:4px;}
        .callout{border-radius:var(--radius);padding:12px 16px;margin:12px 0;font-size:0.85rem;line-height:1.6;}
        .callout-recall{background:var(--blue-dim);border-left:3px solid var(--blue);color:var(--text);}
        .callout-recall::before{content:'🧠 ACTIVE RECALL — ';font-family:var(--mono);font-size:0.65rem;color:var(--blue);letter-spacing:0.08em;text-transform:uppercase;display:block;margin-bottom:4px;}
        .compare-table{width:100%;border-collapse:collapse;font-size:0.82rem;margin:12px 0;}
        .compare-table th{background:var(--bg4);padding:8px 12px;text-align:left;font-family:var(--mono);font-size:0.7rem;color:var(--amber);letter-spacing:0.06em;text-transform:uppercase;border:1px solid var(--border);}
        .compare-table td{padding:8px 12px;border:1px solid var(--border);color:var(--text2);vertical-align:top;line-height:1.5;}
        .compare-table tr:nth-child(even) td{background:rgba(255,255,255,0.02);}
        .quiz-setup-card{max-width:600px;margin:0 auto;background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius2);padding:28px;}
        .topic-select-grid{display:grid;grid-template-columns:1fr 1fr;gap:8px;margin:16px 0;}
        .topic-chip{display:flex;align-items:center;gap:8px;padding:10px 14px;border:1px solid var(--border);border-radius:var(--radius);cursor:pointer;font-size:0.8rem;color:var(--text2);background:var(--bg3);transition:var(--trans);user-select:none;}
        .topic-chip:hover{border-color:var(--border2);color:var(--text);}
        .topic-chip.selected{border-color:var(--amber);background:var(--amber-dim);color:var(--amber);}
        .topic-chip input{display:none;}
        .quiz-progress-bar{height:3px;background:var(--bg4);border-radius:2px;margin-bottom:24px;overflow:hidden;}
        .quiz-progress-fill{height:100%;background:var(--amber);border-radius:2px;transition:width 0.3s ease;}
        .question-card{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius2);padding:24px 28px;max-width:700px;}
        .q-meta{font-family:var(--mono);font-size:0.65rem;color:var(--text3);letter-spacing:0.08em;text-transform:uppercase;margin-bottom:12px;display:flex;gap:16px;}
        .q-topic-tag{color:var(--amber);}
        .q-text{font-size:0.98rem;line-height:1.65;color:var(--text);margin-bottom:20px;}
        .q-options{display:flex;flex-direction:column;gap:10px;}
        .q-option{padding:12px 16px;border:1px solid var(--border);border-radius:var(--radius);cursor:pointer;font-size:0.88rem;color:var(--text2);background:var(--bg3);transition:var(--trans);display:flex;align-items:flex-start;gap:10px;user-select:none;}
        .q-option:hover:not(.disabled){border-color:var(--border2);color:var(--text);background:var(--bg4);}
        .q-option.selected{border-color:var(--amber);color:var(--text);}
        .q-option.correct{border-color:var(--green2);background:var(--green-dim);color:var(--green2);}
        .q-option.incorrect{border-color:#e57373;background:var(--red-dim);color:#e57373;}
        .q-option.disabled{cursor:default;}
        .q-opt-letter{font-family:var(--mono);font-size:0.75rem;color:var(--text3);flex-shrink:0;margin-top:1px;}
        .q-explanation{margin-top:16px;padding:14px 16px;background:var(--bg4);border:1px solid var(--border2);border-radius:var(--radius);font-size:0.84rem;line-height:1.65;color:var(--text2);display:none;}
        .q-explanation.show{display:block;}
        .q-explanation strong{color:var(--text);}
        .q-nav{display:flex;justify-content:space-between;align-items:center;margin-top:20px;}
        .result-topic-breakdown{margin-top:24px;text-align:left;}
        .result-topic-row{display:flex;align-items:center;justify-content:space-between;padding:8px 0;border-bottom:1px solid var(--border);font-size:0.85rem;}
        .result-topic-row:last-child{border-bottom:none;}
        .result-topic-name{color:var(--text2);}
        .result-topic-score{font-family:var(--mono);font-size:0.8rem;}
        .score-good{color:var(--green2);}
        .score-bad{color:#e57373;}
        .score-mid{color:var(--amber);}
        .xp-gain-notice{display:inline-flex;align-items:center;gap:6px;background:var(--amber-dim);border:1px solid var(--amber);border-radius:var(--radius);padding:6px 14px;font-family:var(--mono);font-size:0.78rem;color:var(--amber);margin-top:16px;}
        .timer-display{font-family:var(--mono);font-size:1.1rem;color:var(--amber);padding:6px 14px;background:var(--amber-dim);border:1px solid rgba(212,136,58,0.3);border-radius:var(--radius);}
        .timer-display.urgent{color:#e57373;background:var(--red-dim);border-color:rgba(192,57,43,0.4);}
        .progress-grid{display:grid;grid-template-columns:1fr 1fr;gap:16px;}
        .history-item{display:flex;align-items:center;justify-content:space-between;padding:10px 0;border-bottom:1px solid var(--border);font-size:0.84rem;}
        .history-item:last-child{border-bottom:none;}
        .history-meta{font-family:var(--mono);font-size:0.7rem;color:var(--text3);}
        .studied-check{color:var(--green2);font-size:1.1rem;}
        .badge-weak{background:var(--red-dim);color:#e57373;border-color:rgba(192,57,43,0.3);}
        .quiz-options-row{display:flex;gap:16px;flex-wrap:wrap;}
        .quiz-opt-group{flex:1;min-width:120px;}

        /* === DYNAMIC ENHANCEMENTS === */
        .view-section{animation:fadeSlideIn 0.25s ease;}
        @keyframes fadeSlideIn{from{opacity:0;transform:translateY(8px);}to{opacity:1;transform:translateY(0);}}
        .module-card{transition:border-color 0.2s, box-shadow 0.2s;}
        .module-card:hover{box-shadow:0 2px 12px rgba(212,136,58,0.08);}
        .q-option{transition:all 0.15s ease;}
        .q-option:hover:not(.disabled){transform:translateX(4px);border-color:var(--border2);color:var(--text);}
        .btn{transition:all 0.15s ease;}
        .btn:active{transform:scale(0.97);}
        .dash-stat-val{transition:color 0.3s;}
        .topic-bar-fill{transition:width 0.6s cubic-bezier(0.4,0,0.2,1);}
        .quiz-progress-fill{transition:width 0.4s cubic-bezier(0.4,0,0.2,1);}
        .rank-row{transition:all 0.2s ease;}
        .rank-row:hover{background:var(--bg3);}
        .nav-item{transition:all 0.15s ease;}
        #sidebar{transition:transform 0.28s cubic-bezier(0.4,0,0.2,1);}
        .card,.dash-stat-card,.module-card,.question-card{transition:border-color 0.2s,box-shadow 0.2s;}

        /* === TABLET (641-1024px) === */
        @media(max-width:1024px){
            :root{--sidebar-w:200px;}
            .content-area{padding:22px 20px 40px;}
            .view-section{max-width:100%;}
            .dash-grid{grid-template-columns:1fr 1fr;}
            .dash-welcome{grid-column:1/-1;}
            .topic-overview-card{grid-column:1/-1;}
            .grid-3{grid-template-columns:1fr 1fr;}
            .progress-grid{grid-template-columns:1fr 1fr;}
        }

        /* === MOBILE LANDSCAPE & SMALL TABLETS (641-900px) === */
        @media(max-width:900px){
            #sidebar{transform:translateX(-100%);position:fixed;z-index:100;width:260px;}
            #sidebar.open{transform:translateX(0);}
            #sidebar-overlay.open{display:block;}
            #main{margin-left:0;}
            #hamburger{display:block;}
            .content-area{padding:20px 16px 40px;}
            .quiz-setup-card{max-width:100%;}
            .topic-bar-label{width:140px;}
        }

        /* === MOBILE (≤640px) === */
        @media(max-width:640px){
            html{font-size:14px;}
            .content-area{padding:16px 12px 36px;}
            .dash-grid,.grid-3,.grid-2,.progress-grid{grid-template-columns:1fr;}
            .dash-welcome{flex-direction:column;align-items:flex-start;padding:18px 16px;}
            .dash-welcome h1{font-size:1.8rem;}
            .dash-stat-card{padding:14px 16px;}
            .dash-stat-val{font-size:1.8rem;}
            .topic-select-grid{grid-template-columns:1fr;}
            .topic-overview-card{grid-column:1/-1;}
            .question-card{padding:16px 14px;}
            .q-meta{flex-direction:column;gap:4px;}
            .q-text{font-size:0.92rem;}
            .quiz-setup-card{padding:18px 16px;max-width:100%;}
            .quiz-options-row{flex-direction:column;gap:12px;}
            .module-header{padding:12px 14px;gap:10px;}
            .module-num{font-size:1.4rem;width:28px;}
            .module-body{padding:0 14px 16px;}
            .section-title{font-size:1.2rem;}
            .topic-bar-label{width:110px;font-size:0.72rem;}
            .topic-bar-pct{width:28px;font-size:0.62rem;}
            .rank-row{padding:8px 10px;font-size:0.8rem;}
            .result-card{padding:20px 16px!important;}
            #results-score{font-size:3.5rem!important;}
            .card{padding:16px;}
            .module-actions{flex-direction:column;}
            .module-actions .btn{width:100%;justify-content:center;}
            .quick-actions{flex-direction:column;}
            .quick-actions .btn{width:100%;justify-content:center;}
            #topbar{padding:0 12px;height:46px;}
            #topbar-title{font-size:1.1rem;}
            .streak-badge .streak-num{font-size:1.2rem;}
        }

        /* === VERY SMALL PHONES (≤380px) === */
        @media(max-width:380px){
            html{font-size:13px;}
            .content-area{padding:12px 10px 32px;}
            .dash-welcome h1{font-size:1.5rem;}
            .topic-bar-label{width:90px;}
            .quiz-setup-card{padding:14px 12px;}
        }
    </style>

</head>
<body>
<div id="app">
  <!-- SIDEBAR -->
  <aside id="sidebar">
    <div id="sidebar-logo">
      <div class="logo-text">VERDICT</div>
      <div class="logo-sub">Forensic Medicine Prep</div>
    </div>
    <div id="sidebar-rank-chip">
      <div class="rank-label">Current Rank</div>
      <div class="rank-name" id="ui-rank-name">Rookie Investigator</div>
      <div class="xp-bar-wrap"><div class="xp-bar-fill" id="ui-xp-bar" style="width:0%"></div></div>
      <div class="xp-text" id="ui-xp-text">0 XP</div>
    </div>
    <div class="nav-links">
      <div class="nav-section-label">Navigate</div>
      <a class="nav-item active" onclick="app.navigate('dashboard')"><span class="nav-icon">🏠</span> Dashboard</a>
      <a class="nav-item" onclick="app.navigate('modules')"><span class="nav-icon">📖</span> Study Modules</a>
      <a class="nav-item" onclick="app.navigate('practice')"><span class="nav-icon">🎯</span> Practice Quiz</a>
      <a class="nav-item" onclick="app.navigate('mock')"><span class="nav-icon">🔬</span> Mock Exam</a>
      <a class="nav-item" onclick="app.navigate('progress')"><span class="nav-icon">📊</span> Progress</a>
      <a class="nav-item" onclick="app.navigate('settings')"><span class="nav-icon">⚙️</span> Settings</a>
    </div>
    <div id="sidebar-footer">
      <div class="streak-badge">
        <span>🔥</span>
        <span class="streak-num" id="ui-streak">0</span>
        <span style="font-size:0.78rem;">day streak</span>
      </div>
    </div>
  </aside>
  <div id="sidebar-overlay" onclick="document.getElementById('sidebar').classList.remove('open');this.classList.remove('open');"></div>

  <!-- MAIN -->
  <div id="main">
    <div id="topbar">
      <button id="hamburger" onclick="document.getElementById('sidebar').classList.toggle('open');document.getElementById('sidebar-overlay').classList.toggle('open');">☰</button>
      <div id="topbar-title">Dashboard</div>
    </div>
    <div class="content-area">


        <!-- DASHBOARD -->
        <section id="view-dashboard" class="view-section active">
          <div class="dash-grid" id="dash-grid">
            <div class="dash-welcome">
              <div class="dash-welcome-left">
                <h1>READY TO <span>INVESTIGATE</span>?</h1>
                <p id="dash-greeting">Welcome back, Investigator. Your evidence awaits.</p>
              </div>
              <div class="quick-actions">
                <button class="btn btn-primary" onclick="app.navigate('practice')">⚡ Quick Quiz</button>
                <button class="btn btn-secondary" onclick="app.navigate('mock')">🔬 Mock Exam</button>
              </div>
            </div>
            <div class="dash-stat-card">
              <div class="dash-stat-label">Total XP</div>
              <div class="dash-stat-val" id="dash-xp">0</div>
              <div class="dash-stat-sub" id="dash-rank-sub">Rookie Investigator</div>
            </div>
            <div class="dash-stat-card">
              <div class="dash-stat-label">Quiz Accuracy</div>
              <div class="dash-stat-val" id="dash-accuracy">—</div>
              <div class="dash-stat-sub" id="dash-questions-sub">No quizzes yet</div>
            </div>
            <div class="dash-stat-card">
              <div class="dash-stat-label">Modules Studied</div>
              <div class="dash-stat-val" id="dash-modules">0/8</div>
              <div class="dash-stat-sub">Study all to advance</div>
            </div>
            <div class="topic-overview-card">
              <div class="section-title" style="font-size:1.1rem;margin-bottom:14px;">Topic Performance</div>
              <div id="dash-topic-bars"></div>
            </div>
            <div class="weak-topics-card">
              <div class="section-title" style="font-size:1.1rem;margin-bottom:10px;">⚠️ Weak Topics</div>
              <div id="dash-weak-topics"><span style="font-size:0.82rem;color:var(--text3);">No weak topics detected yet.</span></div>
              <div style="margin-top:12px;">
                <button class="btn btn-secondary btn-sm" onclick="app.startQuiz('weak')" id="weak-quiz-btn" style="display:none;">Practice Weak Topics</button>
              </div>
            </div>
            <div class="card" style="grid-column:1/-1;">
              <div class="section-title" style="font-size:1.1rem;margin-bottom:10px;">Recent Activity</div>
              <div id="dash-recent-activity"><span style="font-size:0.82rem;color:var(--text3);">No activity recorded yet.</span></div>
            </div>
          </div>
        </section>

        <!-- STUDY MODULES -->
        <section id="view-modules" class="view-section">
          <div class="section-title">Study Modules</div>
          <div class="section-sub">Click a module to expand the full lesson. Mark as studied to track progress.</div>
          <div class="module-list" id="module-list"></div>
        </section>

        <!-- MODULE DETAIL (fallback for direct openModule calls) -->
        <section id="view-module-detail" class="view-section">
          <button class="btn btn-secondary" style="margin-bottom:1rem;" onclick="app.navigate('modules')">← Back to Modules</button>
          <div class="card">
            <h1 id="module-title" style="font-family:var(--display);font-size:1.5rem;letter-spacing:1px;">Module Title</h1>
            <div id="module-content"></div>
            <div class="module-actions">
              <button id="btn-mark-studied" class="btn btn-primary">✓ Mark as Studied (+10 XP)</button>
              <button class="btn btn-secondary" onclick="app.navigate('modules')">Back to List</button>
            </div>
          </div>
        </section>

        <!-- PRACTICE -->
        <section id="view-practice" class="view-section">
          <div id="practice-setup">
            <div class="section-title">Practice Quiz</div>
            <div class="section-sub">Select topics and start a quiz. Wrong answers flag weak topics.</div>
            <div class="quiz-setup-card">
              <div style="font-family:var(--mono);font-size:0.72rem;color:var(--text3);letter-spacing:0.08em;text-transform:uppercase;margin-bottom:10px;">Quiz Mode</div>
              <div style="display:flex;gap:10px;margin-bottom:20px;flex-wrap:wrap;">
                <label class="topic-chip selected" id="mode-mixed" style="cursor:pointer;">
                  <input type="radio" name="quizmode" value="mixed" checked> 🔀 Mixed Topics
                </label>
                <label class="topic-chip" id="mode-topic" style="cursor:pointer;">
                  <input type="radio" name="quizmode" value="topic"> 🎯 Select Topics
                </label>
              </div>
              <div id="topic-selector" style="display:none;">
                <div style="font-family:var(--mono);font-size:0.72rem;color:var(--text3);letter-spacing:0.08em;text-transform:uppercase;margin-bottom:10px;">Choose Topics</div>
                <div class="topic-select-grid" id="topic-chips"></div>
              </div>
              <div style="margin-top:20px;">
                <div style="font-family:var(--mono);font-size:0.72rem;color:var(--text3);letter-spacing:0.08em;text-transform:uppercase;margin-bottom:10px;">Quiz Options</div>
                <div class="quiz-options-row">
                  <div class="quiz-opt-group">
                    <label style="font-size:0.8rem;color:var(--text2);display:block;margin-bottom:4px;">Questions</label>
                    <div style="display:flex;align-items:center;gap:8px;">
                      <input type="number" id="q-count" min="1" max="100" value="10" style="width:70px;background:var(--bg3);border:1px solid var(--border2);color:var(--text);padding:7px 10px;border-radius:var(--radius);font-size:0.85rem;font-family:var(--sans);" onchange="document.getElementById('q-all').checked=false">
                      <label style="display:flex;align-items:center;gap:4px;cursor:pointer;font-size:0.8rem;color:var(--text3);">
                        <input type="checkbox" id="q-all" onchange="if(this.checked)document.getElementById('q-count').value=''"> All
                      </label>
                    </div>
                  </div>
                  <div class="quiz-opt-group">
                    <label style="font-size:0.8rem;color:var(--text2);display:block;margin-bottom:4px;">Time Limit</label>
                    <div style="display:flex;align-items:center;gap:8px;">
                      <select id="q-time" style="background:var(--bg3);border:1px solid var(--border2);color:var(--text);padding:7px 10px;border-radius:var(--radius);font-size:0.85rem;font-family:var(--sans);">
                        <option value="0" selected>No Limit</option>
                        <option value="5">5 min</option>
                        <option value="10">10 min</option>
                        <option value="15">15 min</option>
                        <option value="20">20 min</option>
                        <option value="30">30 min</option>
                        <option value="45">45 min</option>
                        <option value="60">60 min</option>
                      </select>
                    </div>
                  </div>
                </div>
                <button class="btn btn-primary" onclick="app.startQuiz('custom')" style="margin-top:18px;">Start Quiz →</button>
              </div>
            </div>
          </div>
          <div id="practice-quiz" style="display:none;">
            <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:16px;gap:12px;flex-wrap:wrap;">
              <div style="font-family:var(--mono);font-size:0.75rem;color:var(--text3);" id="quiz-counter">Question 1 / 10</div>
              <button class="btn btn-secondary btn-sm" onclick="app.exitQuiz()">✕ Exit Quiz</button>
            </div>
            <div class="quiz-progress-bar"><div class="quiz-progress-fill" id="quiz-progress-fill" style="width:10%"></div></div>
            <div id="quiz-question-area"></div>
          </div>
          <div id="practice-results" style="display:none;"></div>
        </section>

        <!-- ACTIVE QUIZ (kept for backward compat) -->
        <section id="view-quiz-active" class="view-section">
          <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:16px;gap:12px;">
            <div style="font-family:var(--mono);font-size:0.75rem;color:var(--text3);" id="quiz-progress">Question 1 / 10</div>
            <button class="btn btn-secondary btn-sm" onclick="app.exitQuiz()">✕ Exit</button>
          </div>
          <div id="timer-bar"></div>
          <div id="quiz-question-card"></div>
        </section>

        <!-- MOCK EXAM -->
        <section id="view-mock" class="view-section">
          <div id="mock-setup">
            <div class="section-title">Mock Examination</div>
            <div class="section-sub">Simulates real exam conditions with configurable question count and time limit.</div>
            <div class="card" style="max-width:500px;">
              <p style="font-size:0.88rem;color:var(--text2);line-height:1.7;margin-bottom:20px;">This mock exam covers all forensic medicine topics. You will receive a detailed score breakdown and topic-level analysis at the end.</p>
              <div style="display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-bottom:20px;">
                <div style="background:var(--bg3);padding:12px;border-radius:var(--radius);border:1px solid var(--border);">
                  <div style="font-family:var(--mono);font-size:0.62rem;color:var(--text3);text-transform:uppercase;letter-spacing:0.08em;margin-bottom:6px;">Questions</div>
                  <input type="number" id="mock-q-count" min="10" max="100" value="20" style="width:100%;background:var(--bg);border:1px solid var(--border2);color:var(--amber);padding:8px 10px;border-radius:var(--radius);font-size:1.4rem;font-family:var(--display);text-align:center;">
                </div>
                <div style="background:var(--bg3);padding:12px;border-radius:var(--radius);border:1px solid var(--border);">
                  <div style="font-family:var(--mono);font-size:0.62rem;color:var(--text3);text-transform:uppercase;letter-spacing:0.08em;margin-bottom:6px;">Time Limit</div>
                  <select id="mock-time" style="width:100%;background:var(--bg);border:1px solid var(--border2);color:var(--amber);padding:8px 10px;border-radius:var(--radius);font-size:1.4rem;font-family:var(--display);text-align:center;appearance:auto;">
                    <option value="10">10 MIN</option>
                    <option value="15">15 MIN</option>
                    <option value="20" selected>20 MIN</option>
                    <option value="30">30 MIN</option>
                    <option value="45">45 MIN</option>
                    <option value="60">60 MIN</option>
                    <option value="90">90 MIN</option>
                  </select>
                </div>
              </div>
              <div id="mock-prev-score" style="margin-bottom:16px;font-size:0.82rem;color:var(--text3);"></div>
              <button class="btn btn-primary" onclick="app.startMockExam()">Begin Examination →</button>
            </div>
          </div>
        </section>

        <!-- RESULTS -->
        <section id="view-results" class="view-section">
          <div class="result-card" style="background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius2);padding:32px;max-width:600px;margin:0 auto;text-align:center;">
            <div class="section-title" id="results-title">Quiz Complete</div>
            <div id="results-score" style="font-family:var(--display);font-size:5rem;line-height:1;color:var(--amber);margin:12px 0;">80%</div>
            <p id="results-summary" style="font-size:0.92rem;color:var(--text2);margin-bottom:0;">You answered 8 out of 10 correctly.</p>
            <div id="results-xp-notice"></div>
            <div id="results-breakdown" style="margin-top:24px;text-align:left;"></div>
            <div style="margin-top:24px;display:flex;gap:10px;justify-content:center;">
              <button class="btn btn-secondary" onclick="app.navigate('dashboard')">Dashboard</button>
              <button class="btn btn-primary" onclick="app.navigate('practice')">More Practice</button>
            </div>
          </div>
        </section>

        <!-- PROGRESS -->
        <section id="view-progress" class="view-section">
          <div class="section-title">Progress & Statistics</div>
          <div class="section-sub">Full overview of your performance and study history.</div>
          <div class="progress-grid" id="progress-grid"></div>
          <div style="margin-top:24px;">
            <div class="section-title" style="font-size:1.1rem;margin-bottom:12px;">Rank Progression</div>
            <div class="rank-ladder" id="rank-ladder-container"></div>
          </div>
          <div style="margin-top:24px;">
            <div class="section-title" style="font-size:1.1rem;margin-bottom:12px;">Quiz History</div>
            <div id="quiz-history-list"></div>
          </div>
        </section>

        <!-- SETTINGS -->
        <section id="view-settings" class="view-section">
          <div class="section-title">Settings & Preferences</div>
          <div class="section-sub">Customize your experience and manage data.</div>
          <div class="grid-2">
            <div class="card">
              <h2>Appearance & UI</h2>
              <div style="margin-top:1.5rem;display:flex;justify-content:space-between;align-items:center;">
                <div>
                  <strong>Reduce Animations</strong>
                  <div class="text-muted" style="font-size:0.85rem;margin-top:0.25rem;">Disable UI animations and transitions</div>
                </div>
                <label class="switch">
                  <input type="checkbox" id="setting-anim" onchange="app.toggleSetting('reduceAnimations', this.checked)">
                  <span class="slider"></span>
                </label>
              </div>
              <div style="margin-top:1.5rem;display:flex;justify-content:space-between;align-items:center;">
                <div>
                  <strong>Hide Rank Widget</strong>
                  <div class="text-muted" style="font-size:0.85rem;margin-top:0.25rem;">Hide the rank chip in the sidebar</div>
                </div>
                <label class="switch">
                  <input type="checkbox" id="setting-rank" onchange="app.toggleSetting('hideRankWidget', this.checked)">
                  <span class="slider"></span>
                </label>
              </div>
            </div>
            <div class="card">
              <h2>System Management</h2>
              <p class="text-muted" style="font-size:0.9rem;">Warning: Resetting will clear all local storage data.</p>
              <button class="btn btn-danger" style="width:100%;justify-content:center;" onclick="app.resetProgress()">⚠️ Reset All Progress</button>
              <p class="text-muted" style="font-size:0.9rem;margin-top:1.5rem;">Clear only mock exam high score.</p>
              <button class="btn btn-secondary" style="width:100%;justify-content:center;" onclick="app.resetMockScore()">Clear Mock Score</button>
            </div>
          </div>
        </section>



    </div><!-- .content-area -->
  </div><!-- #main -->
</div><!-- #app -->
<div id="toast"></div>
    <script>
        // --- COURSE CONTENT DATA ---
        const courseModules = [
            {
                id: 'sys',
                title: 'I. Medicolegal Systems & Thai Law',
                subtopics: ['MDI Systems', 'Cause/Manner of Death', 'Death Certificate', 'Autopsy Types', 'Expert Witness', 'Clinical Exam', 'Exhumation', 'Chain of Custody'],
                content: `
                    <p><strong>Medicolegal Death Investigation (MDI)</strong> determines the <strong>cause</strong> and <strong>manner</strong> of death. Different jurisdictions use different systems.</p>

                    <h3>MDI Systems Comparison</h3>
                    <table>
                        <tr><th>System</th><th>Leadership</th><th>Key Characteristics</th></tr>
                        <tr><td><strong>Medical Examiner</strong></td><td>Forensic Pathologist (MD)</td><td>Physician-led. Gold standard. Common in the US.</td></tr>
                        <tr><td><strong>Coronial System</strong></td><td>Elected Civilian Official</td><td>Coroner (often non-physician) decides which cases go to pathologists. Common in UK/Australia.</td></tr>
                        <tr><td><strong>Police System</strong></td><td>Police / Inquiry Official</td><td>Police lead the investigation and consult pathologists. <strong>Used in Thailand.</strong></td></tr>
                    </table>

                    <h3>Cause, Mechanism &amp; Manner of Death</h3>
                    <table>
                        <tr><th>Term</th><th>Definition</th><th>Example</th></tr>
                        <tr><td><strong>Cause of Death</strong></td><td>The disease/injury that initiates the fatal chain</td><td>Gunshot wound to the chest</td></tr>
                        <tr><td><strong>Mechanism of Death</strong></td><td>Physiological derangement that actually killed</td><td>Cardiac tamponade, exsanguination</td></tr>
                        <tr><td><strong>Manner of Death</strong></td><td>Circumstances classification</td><td><strong>NASHU</strong>: Natural, Accident, Suicide, Homicide, Undetermined</td></tr>
                    </table>
                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse</span>
                        <strong>"Cardiopulmonary arrest"</strong> and <strong>"Respiratory failure"</strong> are <em>mechanisms</em>, NOT valid causes of death. Never list them as the underlying cause on a death certificate.
                    </div>

                    <h3>WHO Death Certificate (ICD Format)</h3>
                    <p>The international standard death certificate has <strong>two parts</strong>:</p>
                    <ul>
                        <li><strong>Part I</strong> — The causal sequence (chain of events):
                            <ul>
                                <li>Line (a): <strong>Immediate cause</strong> of death (e.g., Pulmonary embolism)</li>
                                <li>Line (b): Due to... (e.g., Deep vein thrombosis)</li>
                                <li>Line (c): Due to... <strong>Underlying cause</strong> (e.g., Fractured femur from MVA)</li>
                            </ul>
                        </li>
                        <li><strong>Part II</strong> — <strong>Contributing conditions</strong> NOT in the direct causal chain (e.g., Diabetes mellitus, Hypertension)</li>
                    </ul>
                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: The Underlying Cause</span>
                        The <strong>underlying cause of death</strong> (lowest line in Part I) is the most important entry — it drives public health statistics and determines manner of death. Always work <strong>backwards</strong> from the immediate cause.
                    </div>

                    <h3>Thai Criminal Procedure Code (CPC) — Article 148</h3>
                    <p>Under CPC Art. 148, there are exactly <strong>5 categories of unnatural death</strong> requiring a medicolegal autopsy:</p>
                    <ol>
                        <li><strong>Suicide</strong></li>
                        <li><strong>Homicide</strong> (killed by another person)</li>
                        <li><strong>Animal attack</strong> (including insect stings, snake bites)</li>
                        <li><strong>Accident</strong></li>
                        <li><strong>Unknown cause</strong></li>
                    </ol>
                    <div class="pearl-box">
                        <span class="box-title">Mnemonic: "SHAAU" — ฆ่าตัวตาย ฆาตกรรม สัตว์ อุบัติเหตุ ไม่ทราบสาเหตุ</span>
                        <strong>S</strong>uicide · <strong>H</strong>omicide · <strong>A</strong>nimal attack · <strong>A</strong>ccident · <strong>U</strong>nknown
                    </div>

                    <h3>Death in Official Custody</h3>
                    <p>Death while in custody of <strong>police, military, or correctional officers</strong> mandates a special investigation committee:</p>
                    <ul>
                        <li><strong>Pathologist</strong> — performs the autopsy</li>
                        <li><strong>Police Inquiry Official</strong></li>
                        <li><strong>Public Prosecutor</strong></li>
                        <li><strong>Administrative Officer</strong></li>
                    </ul>
                    <p>This multi-agency panel ensures <strong>transparency and accountability</strong>.</p>

                    <h3>Types of Law in Forensic Medicine</h3>
                    <table>
                        <tr><th>Type</th><th>Definition</th><th>Example</th></tr>
                        <tr><td><strong>Substantive Law</strong></td><td>Defines rights, duties, crimes, and punishments</td><td>Penal Code (what constitutes murder)</td></tr>
                        <tr><td><strong>Procedural Law</strong></td><td>Rules for conducting investigations and trials</td><td>CPC (how to investigate, arrest, try)</td></tr>
                    </table>

                    <h3>Medicolegal vs. Clinical Autopsy</h3>
                    <table>
                        <tr><th>Feature</th><th>Medicolegal Autopsy</th><th>Clinical (Academic) Autopsy</th></tr>
                        <tr><td><strong>Authority</strong></td><td>Ordered by law / inquiry official</td><td>Requested by doctor / family</td></tr>
                        <tr><td><strong>Purpose</strong></td><td>Determine cause & manner for <strong>legal proceedings</strong></td><td>Study disease, teaching, quality assurance</td></tr>
                        <tr><td><strong>Consent</strong></td><td><strong>NOT required</strong> (mandated by law)</td><td>Requires family consent</td></tr>
                        <tr><td><strong>Evidence</strong></td><td>Strict <strong>chain of custody</strong> maintained</td><td>No legal chain needed</td></tr>
                    </table>

                    <h3>Expert Witness vs. Lay Witness</h3>
                    <ul>
                        <li><strong>Lay Witness</strong> — Can only testify about what they <em>personally observed</em> (facts)</li>
                        <li><strong>Expert Witness</strong> — Can offer <strong>professional opinions and interpretations</strong> within their field of expertise</li>
                    </ul>
                    <p>The forensic physician's duty is to <strong>the court and the truth</strong>, NOT to the prosecution or defense. They must remain <strong>impartial and objective</strong>.</p>

                    <h3>Clinical Forensic Examination of Living Persons</h3>
                    <p>When examining a living assault victim:</p>
                    <ol>
                        <li><strong>Step 1: Obtain informed consent</strong> — Always first!</li>
                        <li>Document injuries with <strong>scaled photographs</strong> (include ruler + color chart)</li>
                        <li>Write a formal <strong>medicolegal report</strong> for the court</li>
                        <li><strong>Mandatory reporting</strong>: Child abuse, elder abuse must be reported to authorities immediately regardless of family wishes</li>
                    </ol>

                    <h3>Exhumation</h3>
                    <p>The authority to order an <strong>exhumation</strong> (digging up a buried body) lies with:</p>
                    <ul>
                        <li>The <strong>Inquiry Official (Police)</strong>, or</li>
                        <li>The <strong>Court</strong></li>
                    </ul>
                    <p>Religious objections do <strong>NOT override</strong> CPC requirements for unnatural death investigation.</p>

                    <h3>Therapeutic Misadventure</h3>
                    <p>An <strong>unexpected death caused by medical intervention</strong> (e.g., anesthesia complication, surgical error). This is classified as an <strong>unnatural death</strong> regardless of how much time has passed since the procedure.</p>

                    <h3>Chain of Custody</h3>
                    <p>An unbroken, documented record of <strong>who handled evidence, when, and where</strong>. A break (e.g., leaving evidence unattended) can render evidence <strong>inadmissible in court</strong>.</p>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Natural vs. Unnatural</span>
                        <strong>Natural Death</strong> = known disease cause, doctor signs certificate.<br>
                        <strong>Unnatural Death</strong> = any of the 5 CPC 148 categories → triggers police investigation <em>regardless</em> of hospital admission.<br>
                        A patient dying of ARDS 3 weeks after a motorcycle crash is still an <strong>accidental (unnatural)</strong> death.
                    </div>

                    <h3>Medical Confidentiality in Forensics</h3>
                    <ul>
                        <li><strong>Permitted disclosures</strong>: Court testimony, police reports to designated inquiry officials, mandatory reporting (child abuse)</li>
                        <li><strong>Violations</strong>: Discussing case details on <strong>social media</strong>, sharing with unauthorized persons</li>
                    </ul>

                    <div class="active-recall">
                        A worker falls from scaffolding after a sudden heart attack and dies from skull fractures. What is the manner of death?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>Accident.</strong> Although precipitated by a natural event (MI), the lethal injuries were caused by the fall. If the heart attack was immediately fatal before impact, it would be Natural.</div>
                    </div>

                    <div class="active-recall">
                        A suspect is shot and killed by police during a shootout. Manner of death?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>Homicide.</strong> Death at the hands of another = Homicide, regardless of justification. "Justifiable homicide" is still classified as Homicide for manner of death.</div>
                    </div>

                    <div class="active-recall">
                        Does an elderly patient dying of terminal cancer at home require an autopsy under CPC 148?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer">No. This is a <strong>Natural Death</strong> with a known cause.</div>
                    </div>
                `
            },
            {
                id: 'csi',
                title: 'II. Crime Scene Investigation',
                subtopics: ['Locard\'s Principle', 'Scene Types', 'Documentation', 'Evidence Packaging', 'Blood Spatter', 'PMI & Algor Mortis', 'Entomology'],
                content: `
                    <p><strong>Crime Scene Investigation (CSI)</strong> provides the pathologist with crucial context: the <strong>circumstances</strong> and <strong>environment</strong> of death. Scene findings heavily influence autopsy interpretation.</p>

                    <h3>Locard's Exchange Principle</h3>
                    <p><em>"Every contact leaves a trace."</em> — <strong>Edmond Locard</strong></p>
                    <p>When two objects contact each other, <strong>material is exchanged</strong>. This is the foundation of all trace evidence collection (fibers, hair, DNA, soil, glass fragments).</p>

                    <h3>Scene Classification</h3>
                    <table>
                        <tr><th>Type</th><th>Definition</th><th>Example</th></tr>
                        <tr><td><strong>Primary Scene</strong></td><td>Where the crime/death actually occurred</td><td>The room where the victim was stabbed</td></tr>
                        <tr><td><strong>Secondary Scene</strong></td><td>Any other location related to the crime</td><td>The car used to transport the body</td></tr>
                        <tr><td><strong>Organized Scene</strong></td><td>Perpetrator planned; minimal evidence left</td><td>Body wrapped, cleaned, hidden</td></tr>
                        <tr><td><strong>Disorganized Scene</strong></td><td>Impulsive; abundant evidence</td><td>Weapon at scene, blood trail</td></tr>
                    </table>

                    <h3>Scene Documentation Protocol</h3>
                    <p>Document the scene <strong>before touching anything</strong>. Standard order:</p>
                    <ol>
                        <li><strong>Secure &amp; preserve</strong> — cordon off, prevent contamination</li>
                        <li><strong>Photograph</strong> — wide-angle (overall), mid-range (context), close-up (detail with scale/ruler)</li>
                        <li><strong>Sketch / diagram</strong> — measurements, body position, distances</li>
                        <li><strong>Written notes</strong> — time, date, conditions, persons present</li>
                        <li><strong>Collect evidence</strong> — systematic, with chain of custody</li>
                    </ol>

                    <h3>Evidence Classification</h3>
                    <table>
                        <tr><th>Type</th><th>Examples</th><th>Key Point</th></tr>
                        <tr><td><strong>Physical / Trace</strong></td><td>Fibers, hair, glass, soil, paint</td><td>Based on Locard's principle</td></tr>
                        <tr><td><strong>Biological</strong></td><td>Blood, semen, saliva, tissue</td><td><strong>Paper bags</strong> (never airtight plastic — moisture destroys DNA)</td></tr>
                        <tr><td><strong>Chemical / Volatile</strong></td><td>Accelerants, poison residues</td><td><strong>Airtight containers</strong> (metal cans/glass jars to prevent evaporation)</td></tr>
                        <tr><td><strong>Documentary</strong></td><td>Notes, texts, social media</td><td>May show intent or motive</td></tr>
                    </table>

                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Evidence Packaging Rules</span>
                        <strong>Biological evidence</strong> (blood, semen) → <strong>air-dry first</strong>, then <strong>paper bags</strong>.<br>
                        <strong>Volatile evidence</strong> (accelerants) → <strong>airtight metal/glass</strong> containers.<br>
                        <strong>Sharp objects</strong> (knives) → rigid containers to prevent injury &amp; contamination.<br>
                        <strong>Wet items</strong> → dry before packaging or transport in breathable containers.
                    </div>

                    <h3>External Body Examination at Scene</h3>
                    <p>The physician at the scene should document:</p>
                    <ul>
                        <li><strong>Body position</strong>, clothing state, nearby objects</li>
                        <li><strong>Livor mortis</strong> — color, distribution, fixation (consistent with position?)</li>
                        <li><strong>Rigor mortis</strong> — distribution (face → trunk → limbs)</li>
                        <li><strong>Body temperature</strong> — rectal temp for PMI estimation</li>
                        <li><strong>Injuries</strong> — type, pattern, location, dimensions</li>
                        <li><strong>Signs of decomposition</strong> — stage, insect activity</li>
                        <li><strong>Identity clues</strong> — ID documents, tattoos, jewelry</li>
                    </ul>

                    <h3>Forensic Photography Standards</h3>
                    <ul>
                        <li>Always include a <strong>scale/ruler</strong> and <strong>color chart</strong> in close-up wound photos</li>
                        <li>Use <strong>ABFO #2 ruler</strong> (L-shaped) for bite marks and patterned injuries</li>
                        <li>Photograph <strong>before</strong> cleaning or manipulating evidence</li>
                        <li>Take photos from <strong>multiple angles</strong> with consistent lighting</li>
                    </ul>

                    <h3>Blood Spatter Basics</h3>
                    <ul>
                        <li><strong>Passive drops</strong> — round, fall by gravity alone</li>
                        <li><strong>Cast-off pattern</strong> — linear trail from a swung weapon</li>
                        <li><strong>Impact spatter</strong> — radiates outward from the point of force</li>
                        <li><strong>Transfer / Contact stain</strong> — object presses against a bloody surface (e.g., handprint)</li>
                        <li><strong>Point of convergence</strong> — trace spatter directions back to locate the area of impact</li>
                    </ul>

                    <h3>Postmortem Interval (PMI) Estimation at Scene</h3>
                    <p>PMI = time elapsed between death and discovery. Multiple methods used together:</p>
                    <table>
                        <tr><th>Method</th><th>Useful Range</th><th>Key Detail</th></tr>
                        <tr><td><strong>Algor mortis</strong> (body cooling)</td><td>0–24 hrs</td><td>~0.75°C/hr; use <strong>Henssge's Nomogram</strong></td></tr>
                        <tr><td><strong>Rigor mortis</strong></td><td>2–36 hrs</td><td>Onset 2–4h, full 12h, passes 24–36h</td></tr>
                        <tr><td><strong>Livor mortis</strong></td><td>0.5–12 hrs</td><td>Fixed at 8–12 hrs</td></tr>
                        <tr><td><strong>Gastric contents</strong></td><td>Last meal timing</td><td>Light meal: 1–2h; heavy: 4–6h</td></tr>
                        <tr><td><strong>Entomology</strong></td><td>Days–months</td><td>Blowfly lifecycle stages</td></tr>
                        <tr><td><strong>Vitreous potassium</strong></td><td>0–5 days</td><td>Rises linearly after death</td></tr>
                    </table>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Scene vs. Autopsy Findings</span>
                        Scene findings establish <strong>circumstances</strong> (was it staged? was the body moved?).<br>
                        Autopsy findings establish the <strong>medical cause &amp; mechanism</strong>.<br>
                        Both are needed — a pathologist without scene context can misinterpret findings.
                    </div>

                    <div class="active-recall">
                        A body is found face-down, but fixed livor mortis is on the back. What does this indicate?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>The body was moved</strong> after lividity became fixed (at least 8–12 hours postmortem). The person originally died lying on their back.</div>
                    </div>

                    <div class="active-recall">
                        A blood-stained shirt from a sexual assault should be stored in what type of container?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>Paper bag</strong> (after air-drying). Never in airtight plastic — moisture promotes bacterial growth and DNA degradation.</div>
                    </div>
                `
            },
            {
                id: 'trauma',
                title: 'III. Traumatology & Injury Patterns',
                subtopics: ['Blunt Force Trauma', 'Sharp Force', 'Head Injuries', 'Gunshot Wounds', 'Vehicular Injuries', 'Burns', 'Child Abuse'],
                content: `
                    <p><strong>Wound</strong> = disruption of tissue continuity by <strong>external mechanical force</strong>. Distinct from <strong>ulcer</strong> (disease-driven).</p>

                    <h3>Blunt Force Injuries</h3>
                    <table>
                        <tr><th>Type</th><th>Mechanism</th><th>Key Features</th></tr>
                        <tr><td><strong>Abrasion</strong></td><td>Friction removes epidermis</td><td>Superficial; direction shown by skin tags; <strong>patterned abrasion</strong> = imprint of object</td></tr>
                        <tr><td><strong>Contusion</strong></td><td>Rupture of subcutaneous vessels</td><td>Color: <strong>Red/Purple → Brown (hemosiderin) → Green (biliverdin) → Yellow (bilirubin)</strong></td></tr>
                        <tr><td><strong>Laceration</strong></td><td>Crushing / tearing</td><td><strong>Tissue bridging</strong>, irregular margins, bruised edges, intact bone</td></tr>
                    </table>
                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: "Tram-line" Bruise</span>
                        A <strong>cylindrical weapon</strong> (pipe, baton) creates <strong>two parallel lines</strong> of bruising with a <strong>pale center</strong> — blood displaced outward from the impact.
                    </div>

                    <h3>Sharp Force Injuries</h3>
                    <table>
                        <tr><th>Type</th><th>Definition</th><th>Key Feature</th></tr>
                        <tr><td><strong>Incised wound</strong></td><td>Length > depth on skin</td><td>Clean margins, no bridging, tailing at edges</td></tr>
                        <tr><td><strong>Stab wound</strong></td><td><strong>Depth > length</strong></td><td>Track may exceed blade length; <strong>Langer's lines</strong> affect wound gaping</td></tr>
                        <tr><td><strong>Chop wound</strong></td><td>Heavy blade (axe)</td><td><strong>Both sharp + blunt</strong> features; deep bone cuts</td></tr>
                    </table>
                    <ul>
                        <li><strong>Hesitation marks</strong> — superficial parallel cuts at wrists/neck → <strong>suggest suicide</strong></li>
                        <li><strong>Defense wounds</strong> — cuts on <strong>palms, forearms, ulnar side</strong> → warding off attack</li>
                        <li><strong>Avulsion</strong> — tissue forcibly <strong>torn away</strong> from its attachments</li>
                    </ul>

                    <h3>Head Injuries</h3>
                    <table>
                        <tr><th>Type</th><th>Source</th><th>Key Feature</th></tr>
                        <tr><td><strong>Epidural hematoma</strong></td><td><strong>Middle meningeal artery</strong></td><td>Lenticular; <strong>"lucid interval"</strong> then rapid decline</td></tr>
                        <tr><td><strong>Subdural hematoma</strong></td><td><strong>Bridging veins</strong></td><td>Crescent-shaped; acute or chronic</td></tr>
                        <tr><td><strong>Coup</strong></td><td>Directly beneath impact</td><td>Stationary head struck by moving object</td></tr>
                        <tr><td><strong>Contrecoup</strong></td><td><strong>Opposite</strong> the impact</td><td>Moving head hits surface (fall → occiput → frontal contusion)</td></tr>
                        <tr><td><strong>Hinge fracture</strong></td><td>Transverse basilar</td><td>Splits skull base — <strong>usually fatal</strong></td></tr>
                    </table>

                    <h3>Gunshot Wounds — Range Estimation</h3>
                    <table>
                        <tr><th>Range</th><th>Findings</th></tr>
                        <tr><td><strong>Contact</strong></td><td><strong>Muzzle imprint</strong>, soot in wound, stellate tearing, cherry-red CO</td></tr>
                        <tr><td><strong>Near contact</strong></td><td>Soot ring, powder tattooing begins</td></tr>
                        <tr><td><strong>Intermediate</strong></td><td><strong>Stippling/tattooing</strong> (embedded powder grains — cannot be washed off)</td></tr>
                        <tr><td><strong>Distant</strong></td><td><strong>Abrasion collar only</strong> — no soot, no stippling</td></tr>
                    </table>
                    <ul>
                        <li><strong>Entry</strong>: round/oval, <strong>abrasion collar</strong>, inverted edges</li>
                        <li><strong>Exit</strong>: larger, <strong>irregular/stellate</strong>, everted edges, <strong>NO abrasion collar</strong></li>
                    </ul>

                    <h3>Vehicular Injuries</h3>
                    <ul>
                        <li><strong>Pedestrian triad</strong>: primary (bumper → legs), secondary (hood/windshield), tertiary (road)</li>
                        <li><strong>Messerer's fracture</strong> — wedge-shaped tibial fracture; apex = <strong>direction of vehicle</strong></li>
                        <li><strong>Dicing injuries</strong> — small cuts from <strong>shattered tempered glass</strong></li>
                        <li><strong>Seatbelt sign</strong> — diagonal + horizontal <strong>patterned bruising</strong></li>
                    </ul>

                    <h3>Thermal & Electrical Injuries</h3>
                    <ul>
                        <li><strong>Pugilistic stance</strong> — heat contracts flexors → boxer pose; NOT a sign of struggle</li>
                        <li><strong>Soot in trachea</strong> = <strong>alive during fire</strong> (vital reaction)</li>
                        <li><strong>Cherry-red lividity</strong> → <strong>CO poisoning</strong></li>
                        <li><strong>Joule burn</strong> — firm pale crater at electrical contact</li>
                        <li><strong>Lichtenberg figures</strong> — fern-like = <strong>pathognomonic for lightning</strong></li>
                    </ul>

                    <h3>Fall From Height</h3>
                    <p>Primary mechanism: <strong>Acceleration-Deceleration (AC-DC)</strong>. Skeleton stops; tethered organs tear (e.g., aorta at <strong>ligamentum arteriosum</strong>).</p>

                    <h3>Child Abuse Patterns</h3>
                    <ul>
                        <li><strong>Metaphyseal lesions</strong> (corner/bucket-handle fractures) = <strong>highly specific for abuse</strong></li>
                        <li><strong>Shaken Baby triad</strong>: <strong>Subdural hemorrhage + Retinal hemorrhages + Encephalopathy</strong></li>
                        <li>Multiple fractures at <strong>different healing stages</strong></li>
                    </ul>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Laceration vs. Incised Wound</span>
                        <strong>Laceration</strong> = blunt force, tissue bridging, irregular margins.<br>
                        <strong>Incised wound</strong> = sharp force, clean margins, no bridging.<br>
                        Blunt trauma over a sharp bony ridge (tibia) can split skin cleanly — but <strong>tissue bridging confirms laceration</strong>.
                    </div>

                    <div class="active-recall">
                        A gunshot wound shows an abrasion collar but no soot and no stippling. What is the range?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>Distant range.</strong> Only the projectile reaches the skin; all propellant residue has dissipated.</div>
                    </div>
                `
            },
            {
                id: 'asphyxia',
                title: 'IV. Asphyxia & Strangulation',
                subtopics: ['Asphyxia Triad', 'Neck Compression', 'Hanging', 'Smothering/Choking', 'Drowning', 'Chemical Asphyxiants'],
                content: `
                    <p><strong>Asphyxia</strong> = tissue hypoxia from interference with respiration. <strong>Anoxia</strong> = complete absence of O₂; <strong>Hypoxia</strong> = decreased O₂.</p>

                    <h3>Classic Asphyxia Triad (Autopsy)</h3>
                    <ol>
                        <li><strong>Cyanosis</strong> — blue discoloration (deoxygenated blood)</li>
                        <li><strong>Petechiae</strong> (Tardieu spots) — pinpoint hemorrhages in conjunctivae, sclera, visceral pleura, epicardium</li>
                        <li><strong>Venous congestion</strong> — dark, engorged organs</li>
                    </ol>
                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Petechiae Mechanism</span>
                        When <strong>venous return is blocked but arterial pumping continues</strong>, capillary pressure builds until venules rupture → petechiae. Best seen in <strong>conjunctivae and eyelid mucosa</strong>.
                    </div>

                    <h3>Neck Compression — Pressure Required</h3>
                    <table>
                        <tr><th>Structure</th><th>Pressure to Occlude</th></tr>
                        <tr><td><strong>Jugular veins</strong></td><td>~2 kg (least pressure)</td></tr>
                        <tr><td><strong>Carotid arteries</strong></td><td>~5 kg</td></tr>
                        <tr><td><strong>Airway (trachea)</strong></td><td>~15 kg</td></tr>
                        <tr><td><strong>Vertebral arteries</strong></td><td>~30 kg (most pressure)</td></tr>
                    </table>
                    <p>→ Victims lose consciousness from <strong>carotid occlusion</strong> (brain ischemia in ~10–15 sec) <strong>before</strong> airway obstruction kills.</p>

                    <h3>Types of Mechanical Asphyxia</h3>
                    <table>
                        <tr><th>Type</th><th>Mechanism</th><th>Key Feature</th></tr>
                        <tr><td><strong>Hanging</strong></td><td>Ligature + body weight</td><td><strong>Inverted V-shaped</strong> mark peaking at knot; non-continuous</td></tr>
                        <tr><td><strong>Ligature strangulation</strong></td><td>Ligature pulled horizontally</td><td><strong>Horizontal, continuous</strong> mark below thyroid cartilage</td></tr>
                        <tr><td><strong>Manual strangulation</strong></td><td>Hands compress neck</td><td><strong>Fingernail crescents</strong> + fingertip bruises; fractures of hyoid/thyroid/cricoid</td></tr>
                        <tr><td><strong>Smothering</strong></td><td>External airway blocked (nose+mouth)</td><td>Pillow/hand; <strong>minimal autopsy findings</strong> — hardest to prove</td></tr>
                        <tr><td><strong>Choking</strong></td><td><strong>Internal</strong> airway blockage</td><td>Foreign body in glottis/trachea; <strong>"Café coronary"</strong></td></tr>
                        <tr><td><strong>Gagging</strong></td><td>Object forced into mouth</td><td>Cloth absorbs saliva → blocks pharynx</td></tr>
                        <tr><td><strong>Traumatic (Crush) asphyxia</strong></td><td>Heavy weight on chest</td><td><strong>Masque ecchymotique</strong> — deeply purple face with massive petechiae</td></tr>
                        <tr><td><strong>Positional asphyxia</strong></td><td>Body position prevents breathing</td><td>Often intoxicated; trapped in hyperflexed position</td></tr>
                    </table>

                    <h3>Hanging — Key Details</h3>
                    <ul>
                        <li><strong>Complete hanging</strong> — fully suspended; <strong>Incomplete</strong> — feet/body touching ground (still lethal: head weight alone ~5 kg occludes jugulars)</li>
                        <li><strong>Judicial hanging</strong> (drop) → <strong>Hangman's fracture</strong> (C2 pars interarticularis) → spinal cord transection</li>
                        <li>Petechiae often <strong>ABSENT</strong> in complete hanging (full arterial + venous occlusion → no blood enters head)</li>
                        <li><strong>Amussat's sign</strong> — intimal tear of the carotid artery (internal finding)</li>
                    </ul>

                    <h3>Manual Strangulation — Autopsy Findings</h3>
                    <ul>
                        <li>External: <strong>crescent fingernail marks</strong>, clustered fingertip contusions</li>
                        <li>Internal (layer-by-layer neck dissection in <strong>bloodless field</strong>):
                            <ul>
                                <li>Hemorrhage in <strong>sternocleidomastoid</strong> and strap muscles</li>
                                <li>Fractures: <strong>hyoid greater horn</strong>, <strong>thyroid superior horn</strong>, <strong>cricoid anterior</strong></li>
                            </ul>
                        </li>
                        <li>Young victims: hyoid often <strong>intact</strong> (cartilaginous, flexible until ~40 years when it ossifies)</li>
                    </ul>

                    <h3>Autoerotic Asphyxia</h3>
                    <p>Intentional temporary cerebral hypoxia for euphoria. Death is <strong>accidental</strong> (failure of release mechanism). Scene clues:</p>
                    <ul>
                        <li><strong>Padding</strong> between ligature and neck (to prevent marks)</li>
                        <li>Pornographic material nearby</li>
                        <li>Complex escape mechanism / partial nudity</li>
                    </ul>

                    <h3>Drowning</h3>
                    <ul>
                        <li><strong>Mushroom of froth</strong> — stable foam at mouth/nose (water + surfactant + mucus during agonal breathing)</li>
                        <li><strong>Diatom test</strong> — microscopic algae found in <strong>bone marrow</strong> = definitive proof of drowning (crossed alveolar membrane while alive)</li>
                        <li><strong>Dry drowning</strong> — laryngospasm prevents water entry; victim asphyxiates without aspiration (~10–15% of cases)</li>
                        <li><strong>Washerwoman's hands</strong> — wrinkled maceration from immersion; does NOT prove drowning (just immersion)</li>
                    </ul>

                    <h3>Chemical Asphyxiants</h3>
                    <table>
                        <tr><th>Agent</th><th>Mechanism</th><th>Key Finding</th></tr>
                        <tr><td><strong>Carbon monoxide (CO)</strong></td><td>Binds Hb <strong>200–250× stronger</strong> than O₂ → carboxyhemoglobin</td><td><strong>Cherry-red</strong> lividity & blood</td></tr>
                        <tr><td><strong>Hydrogen cyanide (HCN)</strong></td><td>Blocks <strong>cytochrome c oxidase</strong> → halts cellular respiration</td><td><strong>Bitter almond</strong> odor; pink lividity</td></tr>
                        <tr><td><strong>Hydrogen sulfide (H₂S)</strong></td><td>Similar to cyanide</td><td><strong>Rotten egg</strong> odor; green discoloration</td></tr>
                    </table>

                    <h3>Special Concepts</h3>
                    <ul>
                        <li><strong>Vagal inhibition</strong> — reflex cardiac arrest from minor neck pressure stimulating carotid sinus → instant death with <strong>minimal findings</strong></li>
                        <li><strong>Burking</strong> — historical: smothering + chest compression simultaneously; minimal external signs</li>
                        <li><strong>Café coronary</strong> — sudden choking on food, mimics heart attack</li>
                        <li>Petechiae can occur in <strong>non-asphyxial deaths</strong> (CPR, violent coughing, heart failure)</li>
                    </ul>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Hanging Mark vs. Ligature Strangulation Mark</span>
                        <strong>Hanging</strong>: inverted V-shape, peaks at knot, usually <strong>non-continuous</strong>, above thyroid cartilage.<br>
                        <strong>Ligature strangulation</strong>: <strong>horizontal, continuous</strong>, usually <strong>below</strong> thyroid cartilage.
                    </div>

                    <div class="active-recall">
                        A body is found with a fractured greater horn of the hyoid bone. Most likely mechanism?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>Manual strangulation (throttling).</strong> Direct hand compression fractures the ossified hyoid, especially in adults >40.</div>
                    </div>

                    <div class="active-recall">
                        Why are petechiae often absent in complete hanging?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer">Full suspension occludes <strong>both arteries AND veins</strong> simultaneously. No arterial blood enters the head → no pressure buildup → no petechiae.</div>
                    </div>
                `
            },
            {
                id: 'pmc',
                title: 'V. Postmortem Changes',
                subtopics: ['Pallor & Livor Mortis', 'Rigor Mortis', 'Algor Mortis', 'Decomposition', 'Forensic Entomology', 'Vitreous Humor'],
                content: `
                    <p>After death, the body undergoes predictable changes used to estimate <strong>Postmortem Interval (PMI)</strong>.</p>

                    <h3>Immediate Postmortem Changes</h3>
                    <ul>
                        <li><strong>Pallor mortis</strong> — skin becomes pale (loss of circulation)</li>
                        <li><strong>Loss of muscle tone</strong> → relaxation of sphincters</li>
                        <li><strong>Corneal clouding</strong> — starts within hours if eyes are open</li>
                        <li><strong>Tache noire</strong> — dark brown band on sclera when eyelids remain partially open</li>
                        <li><strong>Eye flaccidity</strong> — intraocular pressure drops (no blood pressure)</li>
                    </ul>

                    <h3>Livor Mortis (Lividity)</h3>
                    <ul>
                        <li>Blood settles by gravity to <strong>dependent areas</strong></li>
                        <li>Appears within <strong>30 min–2 hrs</strong></li>
                        <li><strong>Blanchable</strong> (pressing turns it white) until <strong>8–12 hrs</strong></li>
                        <li><strong>Fixed</strong> (non-blanchable) after <strong>8–12 hrs</strong> — hemoglobin stains tissues</li>
                        <li>If lividity position ≠ body position → <strong>body was moved</strong></li>
                    </ul>
                    <table>
                        <tr><th>Lividity Color</th><th>Cause</th></tr>
                        <tr><td><strong>Cherry-red</strong></td><td><strong>CO poisoning</strong> (carboxyhemoglobin)</td></tr>
                        <tr><td><strong>Pink</strong></td><td><strong>Hypothermia</strong> or <strong>Cyanide</strong> (oxygenated venous blood)</td></tr>
                        <tr><td><strong>Dark brown</strong></td><td><strong>Methemoglobinemia</strong> (nitrites, chlorates)</td></tr>
                        <tr><td><strong>Absent/pale</strong></td><td><strong>Exsanguination</strong> (massive blood loss)</td></tr>
                    </table>

                    <h3>Rigor Mortis</h3>
                    <ul>
                        <li>Caused by <strong>ATP depletion</strong> → actin-myosin bridges lock</li>
                        <li><strong>Nysten's Law</strong>: Appears first in <strong>small muscles (face/jaw)</strong> → spreads to trunk → limbs</li>
                        <li>Timeline: onset <strong>2–4 hrs</strong>, full <strong>12 hrs</strong>, persists <strong>12 hrs</strong>, passes <strong>24–36 hrs</strong></li>
                        <li><strong>Accelerated by</strong>: fever, seizures, strenuous exercise before death</li>
                    </ul>
                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Cadaveric Spasm</span>
                        <strong>Instantaneous rigor</strong> at the moment of death in a muscle group (e.g., hand grasping a weapon). Cannot be reproduced artificially. Indicates <strong>extreme emotional/physical stress</strong> at death.
                    </div>

                    <h3>Algor Mortis (Body Cooling)</h3>
                    <ul>
                        <li>Body cools at ~<strong>0.75°C/hr</strong> (1–1.5°F/hr) in temperate conditions</li>
                        <li><strong>Temperature plateau</strong>: core temp stable for <strong>1–3 hrs</strong> after death before dropping</li>
                        <li><strong>Henssge's Nomogram</strong> — standard tool: uses rectal temp, ambient temp, body weight + correction factors</li>
                    </ul>

                    <h3>Autolysis vs. Putrefaction</h3>
                    <table>
                        <tr><th>Process</th><th>Agent</th><th>Key Features</th></tr>
                        <tr><td><strong>Autolysis</strong></td><td>Intrinsic cellular enzymes</td><td>Aseptic; skin slippage, hemolysis, softening</td></tr>
                        <tr><td><strong>Putrefaction</strong></td><td>Bacteria (esp. <strong>cecum/GI</strong>)</td><td>Marbling, bloating, tissue gas, foul odor</td></tr>
                    </table>
                    <ul>
                        <li><strong>First external sign</strong>: <strong>Green discoloration of RLQ abdomen</strong> (cecal bacteria produce <strong>sulfhemoglobin</strong>)</li>
                        <li><strong>Marbling</strong> — bacteria invade superficial veins → greenish-black network</li>
                        <li><strong>Purge fluid</strong> — dark fluid from nose/mouth (often mistaken for traumatic bleeding)</li>
                        <li><strong>"Gloves and socks"</strong> — epidermis peels off hands/feet intact</li>
                        <li><strong>Pancreas</strong> = first organ to putrefy (packed with digestive enzymes)</li>
                        <li><strong>Uterus & prostate</strong> = <strong>last organs</strong> to decompose</li>
                    </ul>

                    <h3>Modifications of Decomposition</h3>
                    <table>
                        <tr><th>Modification</th><th>Environment</th><th>Key Feature</th></tr>
                        <tr><td><strong>Mummification</strong></td><td>Dry, hot, low humidity</td><td>Leathery, dark brown skin; fluid lost via evaporation</td></tr>
                        <tr><td><strong>Adipocere</strong></td><td>Damp, warm (water)</td><td>Wax-like (hydroxy fatty acids); <strong>Clostridium</strong>; forms on fat-rich areas (cheeks, buttocks)</td></tr>
                        <tr><td><strong>Skeletonization</strong></td><td>Surface + scavengers</td><td>Can occur in <strong>9–10 days</strong> in hot climate</td></tr>
                    </table>
                    <div class="pearl-box">
                        <span class="box-title">Casper's Law (Rule of Thumb)</span>
                        <strong>1 week in air</strong> = 2 weeks in water = <strong>8 weeks in soil</strong>. Insects + oxygen accelerate surface decomposition.
                    </div>

                    <h3>Forensic Entomology</h3>
                    <ul>
                        <li><strong>Calliphoridae (Blowflies)</strong> — first to arrive (within minutes)</li>
                        <li>Lifecycle: <strong>Egg → Larva (instars 1–3) → Pupa → Adult</strong></li>
                        <li><strong>3rd instar</strong> = post-feeding, migrates away from body to pupate</li>
                        <li>Empty pupal casings = minimum PMI of <strong>one full lifecycle</strong> (~10–14 days)</li>
                        <li><strong>Dermestidae (Hide beetles)</strong> — arrive late (dry/skeletonizing stage)</li>
                    </ul>

                    <h3>Vitreous Humor Chemistry</h3>
                    <p><strong>Most reliable fluid</strong> for postmortem chemistry (isolated from early contamination):</p>
                    <ul>
                        <li><strong>Potassium</strong> rises linearly → useful for PMI up to ~<strong>5 days</strong></li>
                        <li>Useful for ethanol, electrolytes, glucose analysis</li>
                    </ul>

                    <h3>Necrosis Types</h3>
                    <table>
                        <tr><th>Type</th><th>Mechanism</th><th>Where</th></tr>
                        <tr><td><strong>Coagulative</strong></td><td>Protein denaturation; cell outlines preserved</td><td>Most organs (heart, kidney)</td></tr>
                        <tr><td><strong>Liquefactive</strong></td><td>Enzymatic digestion; tissue becomes liquid</td><td><strong>CNS (brain)</strong></td></tr>
                        <tr><td><strong>Caseous</strong></td><td>Cheese-like necrosis</td><td>Tuberculosis</td></tr>
                        <tr><td><strong>Fat necrosis</strong></td><td>Lipase digests adipose</td><td>Pancreas (acute pancreatitis)</td></tr>
                    </table>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Antemortem Bruise vs. Livor Mortis</span>
                        Incise the area: <strong>Bruise</strong> = blood extravasated <em>into tissue</em> (won't wash away).<br>
                        <strong>Lividity</strong> = blood confined <em>inside vessels</em> (washes away/clears on incision).
                    </div>

                    <div class="active-recall">
                        What is the earliest external sign of putrefaction?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>Greenish discoloration of the right lower quadrant</strong> of the abdomen (over the cecum), caused by sulfhemoglobin from bacterial H₂S.</div>
                    </div>
                `
            },
            {
                id: 'obgyn',
                title: 'VI. Abortion & Infanticide',
                subtopics: ['Thai Abortion Law', 'Gestational Age', 'Live Birth vs Stillbirth', 'Hydrostatic Test', 'Maceration', 'Infanticide'],
                content: `
                    <p>Key medicolegal questions: Was the infant <strong>born alive</strong>? Was the death caused by <strong>act or omission</strong>?</p>

                    <h3>Abortion — Thai Law</h3>
                    <ul>
                        <li>Abortion is generally <strong>illegal</strong> under the Thai Penal Code (Sections 301–305)</li>
                        <li><strong>Legal exceptions</strong>:
                            <ul>
                                <li>Risk to <strong>mother's physical health</strong> (certified by physician)</li>
                                <li><strong>Rape / incest</strong></li>
                                <li>Gestational age <strong>≤12 weeks</strong> (2021 amendment — woman's choice)</li>
                                <li>Fetal anomaly incompatible with life</li>
                            </ul>
                        </li>
                        <li>Criminal abortion methods: <strong>instrumentation</strong> (cervical injury, perforation), abortifacient herbs/drugs, foreign body insertion</li>
                    </ul>

                    <h3>Gestational Age Estimation</h3>
                    <table>
                        <tr><th>Method</th><th>Details</th></tr>
                        <tr><td><strong>Crown-Rump Length (CRL)</strong></td><td>Most accurate in first trimester</td></tr>
                        <tr><td><strong>Crown-Heel Length (CHL)</strong></td><td>Used after birth; <strong>Haase's Rule</strong>: months 1–5 → length = month²; months 6–10 → length = month × 5</td></tr>
                        <tr><td><strong>Ossification centers</strong></td><td>Appearance of specific bone centers (e.g., distal femoral epiphysis = ~36 weeks = near term)</td></tr>
                        <tr><td><strong>Organ weights</strong></td><td>Brain, liver, kidneys — proportional to gestational age</td></tr>
                    </table>
                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Viability</span>
                        A fetus is considered <strong>viable</strong> at ~<strong>24–28 weeks</strong> (weight ~500–1000g). Below this, survival outside the womb is extremely unlikely even with intensive care.
                    </div>

                    <h3>Signs of Live Birth vs. Stillbirth</h3>
                    <table>
                        <tr><th>Feature</th><th>Born Alive</th><th>Born Dead (Stillbirth)</th></tr>
                        <tr><td><strong>Lungs</strong></td><td>Aerated, expanded, pink, float in water</td><td>Solid, collapsed, sink</td></tr>
                        <tr><td><strong>Stomach/GI</strong></td><td>Air or milk present</td><td>Empty</td></tr>
                        <tr><td><strong>Umbilical cord</strong></td><td>Vital inflammatory reaction at cut/torn end</td><td>No inflammation</td></tr>
                        <tr><td><strong>Caput succedaneum</strong></td><td>Present (edema from labor)</td><td>May or may not be present</td></tr>
                        <tr><td><strong>Maceration</strong></td><td>Absent</td><td>Present (skin peeling, brown color)</td></tr>
                    </table>

                    <h3>Hydrostatic (Lung Float) Test</h3>
                    <ol>
                        <li>Remove lungs intact → place in water</li>
                        <li><strong>Float</strong> = aerated (breathed)</li>
                        <li><strong>Sink</strong> = never breathed</li>
                    </ol>
                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Hydrostatic Test Pitfalls</span>
                        <strong>False positive (floats but never breathed)</strong>: putrefaction gas, artificial respiration attempted.<br>
                        <strong>False negative (sinks but breathed)</strong>: congenital atelectasis, pneumonia, lung compression.<br>
                        Always confirm with <strong>lung histology</strong> (aerated alveoli).
                    </div>

                    <h3>Maceration Grading (Intrauterine Death)</h3>
                    <p>Sterile autolysis of a retained dead fetus:</p>
                    <ul>
                        <li><strong>Grade 1</strong> — Skin slippage, blisters (12–24 hrs)</li>
                        <li><strong>Grade 2</strong> — Widespread blistering, reddish discoloration (1–2 days)</li>
                        <li><strong>Grade 3</strong> — Brown/green discoloration, organ softening (3+ days)</li>
                        <li><strong>Grade 4–5</strong> — Advanced softening, skull collapse, mummification</li>
                    </ul>

                    <h3>Neonaticide vs. Infanticide</h3>
                    <table>
                        <tr><th>Term</th><th>Definition</th></tr>
                        <tr><td><strong>Neonaticide</strong></td><td>Killing within <strong>first 24 hours</strong> of life (usually by mother)</td></tr>
                        <tr><td><strong>Infanticide</strong></td><td>Killing of infant within <strong>first year</strong></td></tr>
                    </table>
                    <p>Common methods: smothering, drowning, neglect (failure to feed/seek care), head trauma.</p>

                    <div class="active-recall">
                        A newborn's lungs float in water, but the body shows early decomposition. Can you conclude live birth?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>No.</strong> Putrefaction gas can cause non-aerated lungs to float (false positive). Histological examination is required to confirm true alveolar aeration.</div>
                    </div>
                `
            },
            {
                id: 'sex_assault',
                title: 'VII. Sexual Assault',
                subtopics: ['Thai Law Sec 276', 'Hymen Exam', 'Evidence Kit', 'Sperm Survival', 'Seminal Fluid Tests', 'Date Rape Drugs'],
                content: `
                    <p>The physician's role is to <strong>document injuries</strong>, <strong>collect evidence</strong>, and provide medical care — NOT to determine guilt or consent.</p>

                    <h3>Thai Law — Sexual Offences</h3>
                    <ul>
                        <li><strong>Section 276</strong> — Rape: sexual intercourse by force/threat/inability to resist</li>
                        <li>Consent of a child <strong><15 years</strong> is legally invalid (statutory rape)</li>
                        <li>Penetration = any degree of insertion of genitalia</li>
                    </ul>

                    <h3>Examination Protocol</h3>
                    <ol>
                        <li><strong>Informed consent</strong> — must be obtained FIRST (or legal guardian for minors)</li>
                        <li><strong>History</strong> — time of assault, acts performed, bathing/changing since</li>
                        <li><strong>General examination</strong> — document all injuries (bruises, scratches, bite marks) with <strong>scaled photographs</strong></li>
                        <li><strong>Genital examination</strong> — systematic, using proper lighting and positioning</li>
                        <li><strong>Evidence collection</strong> — swabs, combings, clothing, reference samples</li>
                        <li><strong>STI screening & pregnancy test</strong></li>
                        <li><strong>Psychological support & follow-up</strong></li>
                    </ol>

                    <h3>Hymen — Anatomy & Findings</h3>
                    <ul>
                        <li><strong>Types</strong>: annular, crescentic, fimbriated, septate, <strong>imperforate</strong> (rare, causes hematocolpos)</li>
                        <li><strong>Fresh tear</strong>: bleeding, edema, redness at the tear site</li>
                        <li><strong>Healed tear</strong>: smooth, rounded edges (<strong>heals in ~7–10 days</strong>)</li>
                        <li><strong>Transection</strong> = tear extending to the base (vaginal wall) → indicates penetration</li>
                        <li><strong>An intact hymen does NOT exclude penetration</strong> (elastic hymen, digital penetration)</li>
                        <li><strong>A torn hymen does NOT prove rape</strong> (consensual sex, tampons, vigorous activity)</li>
                    </ul>
                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Clock-Face Documentation</span>
                        Hymenal and anal injuries are described using the <strong>clock-face system</strong> (12 o'clock = anterior midline, 6 o'clock = posterior midline, patient supine). Most tears occur at <strong>6 o'clock (posterior fourchette)</strong>.
                    </div>

                    <h3>Anal Examination</h3>
                    <ul>
                        <li>Look for: fissures, tears, swelling, loss of <strong>rugal folds</strong></li>
                        <li><strong>Anal dilatation reflex</strong> — relaxed sphincter on parting buttocks (non-specific; also seen in constipation)</li>
                        <li>Swab for semen, use <strong>anoscope</strong> if needed</li>
                    </ul>

                    <h3>Evidence Collection Kit</h3>
                    <table>
                        <tr><th>Sample</th><th>Purpose</th><th>Key Detail</th></tr>
                        <tr><td><strong>Vaginal/anal/oral swabs</strong></td><td>Semen detection + DNA</td><td>Take <strong>2–3 swabs</strong> per site; <strong>air-dry</strong> before packaging</td></tr>
                        <tr><td><strong>Pubic hair combing</strong></td><td>Foreign hair (Locard's)</td><td>Use clean paper underneath to catch fallen hairs</td></tr>
                        <tr><td><strong>Fingernail clippings/scrapings</strong></td><td>Assailant's DNA under nails</td><td>If victim scratched attacker</td></tr>
                        <tr><td><strong>Clothing</strong></td><td>Trace evidence, semen stains</td><td>Each item in <strong>separate paper bag</strong></td></tr>
                        <tr><td><strong>Reference blood sample</strong></td><td>Victim's DNA profile</td><td>For comparison/exclusion</td></tr>
                        <tr><td><strong>Bite mark swab</strong></td><td>Salivary amylase + DNA</td><td>Photo with ABFO ruler <strong>BEFORE</strong> swabbing</td></tr>
                    </table>

                    <h3>Sperm Survival Times</h3>
                    <table>
                        <tr><th>Site</th><th>Motile Sperm</th><th>Non-motile / Heads</th></tr>
                        <tr><td><strong>Vagina</strong></td><td>Up to <strong>6–24 hrs</strong></td><td>Up to <strong>72 hrs</strong> (occasionally longer)</td></tr>
                        <tr><td><strong>Cervix</strong></td><td>Up to <strong>5 days</strong></td><td>Up to <strong>7 days</strong></td></tr>
                        <tr><td><strong>Anus/Rectum</strong></td><td>Shorter (harsh pH)</td><td>Up to 24–48 hrs</td></tr>
                        <tr><td><strong>Mouth</strong></td><td>Very short</td><td>Up to 12–24 hrs</td></tr>
                    </table>

                    <h3>Chemical Tests for Semen</h3>
                    <table>
                        <tr><th>Test</th><th>Detects</th><th>Key Detail</th></tr>
                        <tr><td><strong>Acid Phosphatase (AP)</strong></td><td>Prostatic enzyme in seminal fluid</td><td><strong>Screening test</strong>; high AP suggests semen (also present in vaginal secretions at lower levels)</td></tr>
                        <tr><td><strong>PSA (P30 / Prostate Specific Antigen)</strong></td><td>Semen-specific protein</td><td><strong>Confirmatory</strong>; present even in <strong>azoospermic / vasectomized</strong> males</td></tr>
                        <tr><td><strong>Florence test</strong></td><td>Choline (in semen)</td><td>Dark brown crystals with iodine-KI reagent; <strong>presumptive only</strong></td></tr>
                    </table>

                    <h3>Toluidine Blue Dye</h3>
                    <p>Applied to vulvar area → stains <strong>nucleated squamous cells</strong> exposed by micro-tears. Enhances visualization of <strong>posterior fourchette lacerations</strong> not visible to naked eye.</p>

                    <h3>Date Rape Drugs</h3>
                    <table>
                        <tr><th>Drug</th><th>Street Name</th><th>Key Feature</th></tr>
                        <tr><td><strong>Flunitrazepam</strong></td><td>"Roofies"</td><td>Benzodiazepine; causes anterograde amnesia; detected in urine <strong>up to 72 hrs</strong></td></tr>
                        <tr><td><strong>GHB</strong></td><td>"Liquid ecstasy"</td><td>Rapidly metabolized; urine window only <strong>4–8 hrs</strong>; naturally occurring compound → testing is difficult</td></tr>
                        <tr><td><strong>Ketamine</strong></td><td>"Special K"</td><td>Dissociative anesthetic; detectable longer in urine</td></tr>
                    </table>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Medical Findings vs. Legal Conclusions</span>
                        A physician can document <strong>injuries consistent with penetration</strong> but <strong>cannot determine consent</strong>. The legal determination of rape is a <strong>judicial function</strong>, not a medical one.
                    </div>

                    <div class="active-recall">
                        PSA (P30) is positive on a vaginal swab, but no sperm are found. Does this exclude sexual contact?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>No.</strong> PSA confirms semen was present. The male may be <strong>azoospermic or vasectomized</strong>, or sperm may have degraded.</div>
                    </div>
                `
            },
            {
                id: 'id_tox',
                title: 'VIII. Identification & Toxicology',
                subtopics: ['Primary/Secondary Identifiers', 'DVI Forms', 'Dental ID', 'Tox Samples', 'Common Poisons', 'Blood Alcohol'],
                content: `
                    <h3>Forensic Identification — Principles</h3>
                    <table>
                        <tr><th>Type</th><th>Methods</th><th>Strength</th></tr>
                        <tr><td><strong>Primary identifiers</strong></td><td><strong>Fingerprints, Dental comparison, DNA</strong></td><td>Can establish identity <strong>on their own</strong></td></tr>
                        <tr><td><strong>Secondary identifiers</strong></td><td>Scars, tattoos, clothing, jewelry, medical devices</td><td>Support but <strong>cannot alone</strong> confirm identity</td></tr>
                    </table>

                    <h3>DVI — Disaster Victim Identification (Interpol)</h3>
                    <table>
                        <tr><th>Form</th><th>Color</th><th>Content</th></tr>
                        <tr><td><strong>Ante-mortem (AM)</strong></td><td><strong>Yellow</strong></td><td>Personal data, medical/dental records from family/doctors</td></tr>
                        <tr><td><strong>Post-mortem (PM)</strong></td><td><strong>Pink</strong></td><td>Findings from body: physical description, dental chart, DNA, fingerprints</td></tr>
                        <tr><td><strong>Reconciliation</strong></td><td>-</td><td>Matching AM and PM data to confirm identity</td></tr>
                    </table>
                    <ul>
                        <li><strong>Open disaster</strong> — no manifest (tsunami, earthquake) → unknown number of victims</li>
                        <li><strong>Closed disaster</strong> — passenger manifest exists (plane crash) → faster ID</li>
                        <li><strong>MNI</strong> (Minimum Number of Individuals) — lowest possible number from commingled remains (e.g., 3 left femurs = MNI of 3)</li>
                    </ul>

                    <h3>Dental Identification</h3>
                    <ul>
                        <li>Teeth are the <strong>most durable</strong> human structure (survive fire, decomposition)</li>
                        <li>Compare AM dental X-rays with PM dental findings (restorations, missing teeth, root morphology)</li>
                        <li><strong>Gustafson's Method</strong> — age estimation using <strong>6 parameters</strong>: attrition, secondary dentin, periodontal disease, cementum apposition, root resorption, root transparency</li>
                    </ul>

                    <h3>DNA Identification</h3>
                    <ul>
                        <li><strong>STR (Short Tandem Repeats)</strong> — standard forensic DNA profiling; <strong>nuclear DNA</strong></li>
                        <li><strong>Mitochondrial DNA (mtDNA)</strong> — useful for degraded/old specimens; inherited from <strong>mother only</strong> (maternal lineage)</li>
                        <li><strong>Y-STR</strong> — male-specific; paternal lineage</li>
                    </ul>

                    <h3>Skeletal Identification</h3>
                    <table>
                        <tr><th>Parameter</th><th>Key Methods</th></tr>
                        <tr><td><strong>Sex</strong></td><td><strong>Pelvis</strong> (most reliable): wider sciatic notch, subpubic angle in females. Skull: brow ridge, mastoid process</td></tr>
                        <tr><td><strong>Age</strong></td><td>Pubic symphysis morphology, cranial suture closure, epiphyseal fusion, dental development (children)</td></tr>
                        <tr><td><strong>Stature</strong></td><td>Long bone length (esp. <strong>femur</strong>) using regression formulae (race-specific)</td></tr>
                        <tr><td><strong>Race/ancestry</strong></td><td>Skull morphology: nasal aperture, prognathism, orbital shape</td></tr>
                    </table>

                    <h3>Fingerprints</h3>
                    <ul>
                        <li><strong>Unique</strong> — no two individuals share identical prints (even identical twins differ)</li>
                        <li><strong>Permanent</strong> — pattern formed in utero, unchanged throughout life</li>
                        <li>Types: <strong>loops</strong> (most common ~65%), <strong>whorls</strong> (~30%), <strong>arches</strong> (~5%)</li>
                    </ul>

                    <hr>

                    <h3>Forensic Toxicology</h3>
                    <p><strong>Paracelsus</strong>: <em>"The dose makes the poison."</em></p>

                    <h3>Sample Collection for Toxicology</h3>
                    <table>
                        <tr><th>Sample</th><th>Amount</th><th>Key Detail</th></tr>
                        <tr><td><strong>Peripheral blood</strong></td><td>10–20 mL (femoral vein)</td><td><strong>NaF preservative</strong> (prevents fermentation); avoid cardiac blood (postmortem redistribution)</td></tr>
                        <tr><td><strong>Urine</strong></td><td>All available</td><td>Best for <strong>drug screening</strong>; longer detection window</td></tr>
                        <tr><td><strong>Vitreous humor</strong></td><td>All available</td><td>Isolated site; resists decomposition; best for <strong>ethanol, glucose, electrolytes</strong></td></tr>
                        <tr><td><strong>Gastric contents</strong></td><td>~30 mL</td><td><strong>NO preservative</strong>; may contain unabsorbed pills/tablets (identity clue)</td></tr>
                        <tr><td><strong>Hair</strong></td><td>150–200 strands</td><td>Cut from vertex; <strong>aluminum foil</strong> wrap; shows <strong>chronic drug/heavy metal</strong> timeline</td></tr>
                        <tr><td><strong>Liver</strong></td><td>~100g</td><td>Metabolizes most drugs → high concentrations</td></tr>
                    </table>

                    <h3>Common Poisons — GP Must-Know</h3>
                    <table>
                        <tr><th>Poison</th><th>Mechanism</th><th>Key Features</th><th>Antidote</th></tr>
                        <tr><td><strong>Organophosphate</strong></td><td>Irreversible <strong>AChE inhibitor</strong></td><td><strong>SLUDGE/DUMBELS</strong>: salivation, lacrimation, urination, diarrhea, miosis, bradycardia</td><td><strong>Atropine</strong> + <strong>Pralidoxime (2-PAM)</strong></td></tr>
                        <tr><td><strong>Carbon monoxide</strong></td><td>Binds Hb 200–250×</td><td>Cherry-red color; headache, confusion → coma</td><td><strong>100% O₂</strong> (hyperbaric if severe)</td></tr>
                        <tr><td><strong>Cyanide</strong></td><td>Blocks cytochrome oxidase</td><td><strong>Bitter almond</strong> smell; rapid death</td><td><strong>Hydroxocobalamin</strong> or sodium thiosulfate</td></tr>
                        <tr><td><strong>Methanol</strong></td><td>Formic acid → retinal toxicity</td><td><strong>Visual disturbance → blindness</strong>; high AG metabolic acidosis</td><td><strong>Fomepizole / ethanol</strong> (competitive ADH inhibition)</td></tr>
                        <tr><td><strong>Ethylene glycol</strong></td><td>Oxalic acid → renal failure</td><td><strong>Calcium oxalate crystals</strong> in urine; fluorescent urine</td><td><strong>Fomepizole / ethanol</strong></td></tr>
                        <tr><td><strong>Opioids</strong></td><td>μ-receptor agonist</td><td><strong>Miosis, respiratory depression</strong>, foam cone</td><td><strong>Naloxone</strong></td></tr>
                        <tr><td><strong>Paracetamol</strong></td><td>NAPQI overwhelms glutathione</td><td>Liver failure (72 hrs); <strong>Rumack-Matthew nomogram</strong></td><td><strong>N-acetylcysteine (NAC)</strong></td></tr>
                        <tr><td><strong>Corrosives (acid/alkali)</strong></td><td>Tissue destruction</td><td>Acid: <strong>coagulative necrosis</strong>; Alkali: <strong>liquefactive necrosis</strong> (deeper, worse)</td><td>Dilution; NO emesis; NO neutralization</td></tr>
                        <tr><td><strong>Paraquat</strong></td><td>Free radical → pulmonary fibrosis</td><td>Oral burns → delayed <strong>lung fibrosis (days)</strong>; often fatal</td><td>Fuller's earth; NO supplemental O₂ (accelerates damage)</td></tr>
                        <tr><td><strong>Arsenic</strong></td><td>Binds sulfhydryl groups</td><td>Chronic: <strong>Mees' lines</strong> (nails), rain-drop pigmentation, GI symptoms</td><td><strong>Dimercaprol (BAL)</strong></td></tr>
                    </table>

                    <h3>Blood Alcohol (Ethanol)</h3>
                    <ul>
                        <li><strong>Zero-order kinetics</strong> — metabolized at ~<strong>15–20 mg/dL/hr</strong> (constant rate)</li>
                        <li><strong>Widmark formula</strong>: Blood alcohol = (Alcohol consumed / Body weight × r) − (β × time)</li>
                        <li><strong>Retrograde extrapolation</strong> — calculating BAC at an earlier time</li>
                        <li>Thai legal limit for driving: <strong>50 mg/dL (0.05%)</strong></li>
                        <li><strong>Postmortem ethanol</strong>: NaF preservative essential; use <strong>vitreous humor</strong> to confirm (avoids postmortem synthesis artifact)</li>
                    </ul>
                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Postmortem Redistribution</span>
                        After death, drugs leak from organs into blood. <strong>Cardiac blood concentrations are unreliable</strong> (inflated by stomach/liver leakage). Always sample from <strong>peripheral (femoral) vein</strong>.
                    </div>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Acid vs. Alkali Burns</span>
                        <strong>Acid</strong> → coagulative necrosis (proteins coagulate = self-limiting barrier).<br>
                        <strong>Alkali</strong> → liquefactive necrosis (saponifies fat, penetrates <strong>deeper</strong>, more dangerous).
                    </div>

                    <div class="active-recall">
                        A farmer collapses after spraying crops. He has excessive salivation, pinpoint pupils, and muscle fasciculations. What is the poison and antidote?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer"><strong>Organophosphate poisoning.</strong> Classic cholinergic crisis (SLUDGE). Antidote: <strong>Atropine</strong> (muscarinic blockade) + <strong>Pralidoxime</strong> (reactivates AChE).</div>
                    </div>
                `
            }
        ];


            // --- TOPIC 1: Medicolegal Systems & Law (50 Questions) ---
            const topic1Expanded = [
                { id: 'sys_1', topicId: 'sys', text: "Under Thai CPC Article 148, which of the following deaths requires a medicolegal investigation?", options: ["Terminal cancer at home", "Hospital-acquired pneumonia", "Animal attack", "Old age in a nursing home"], correct: 2, explanation: "CPC 148 unnatural deaths: Suicide, Homicide, Animal attack, Accident, Unknown cause." },
                { id: 'sys_2', topicId: 'sys', text: "Which professional typically heads a Medical Examiner system?", options: ["Police Investigator", "Forensic Pathologist", "Elected Civilian", "Judge"], correct: 1, explanation: "ME systems are headed by forensic pathologists." },
                { id: 'sys_3', topicId: 'sys', text: "The Thai Medicolegal system is primarily based on which model?", options: ["Medical Examiner System", "Coronial System", "Police System", "Hybrid Civilian System"], correct: 2, explanation: "Thailand uses a Police-based system where investigators lead and consult pathologists." },
                { id: 'sys_4', topicId: 'sys', text: "If a patient dies of natural causes in a hospital, who is responsible for signing the death certificate?", options: ["Police Investigator", "Forensic Pathologist", "Attending Doctor", "Coroner"], correct: 2, explanation: "Natural deaths with known causes are signed off by the attending physician." },
                { id: 'sys_5', topicId: 'sys', text: "Death while in official police custody:", options: ["Is considered a natural death automatically", "Requires a mandatory medicolegal investigation", "Is only investigated if relatives complain", "Requires only a police report, no autopsy"], correct: 1, explanation: "Death in custody mandates a medicolegal autopsy to rule out abuse or neglect." },
                { id: 'sys_6', topicId: 'sys', text: "Which of the following is considered the 'Manner of Death'?", options: ["Gunshot wound", "Exsanguination", "Homicide", "Myocardial infarction"], correct: 2, explanation: "Manner of death is a classification (Natural, Accident, Suicide, Homicide, Undetermined). Gunshot is the cause; exsanguination is the mechanism." },
                { id: 'sys_7', topicId: 'sys', text: "In the WHO standard death certificate, what should be listed in Part I, line (c)?", options: ["The immediate cause of death", "Other significant conditions", "The underlying cause of death", "The mechanism of death"], correct: 2, explanation: "Line (c) typically holds the underlying cause of death that initiated the chain of events leading to death." },
                { id: 'sys_8', topicId: 'sys', text: "A patient with terminal lung cancer falls out of bed in the ward, sustains a subdural hematoma, and dies. What is the manner of death?", options: ["Natural", "Accident", "Undetermined", "Homicide"], correct: 1, explanation: "The fall and resulting fatal trauma make this an accidental death, even if the patient had a terminal illness." },
                { id: 'sys_9', topicId: 'sys', text: "Which entity has the legal authority to order an exhumation under the Thai legal system?", options: ["The attending physician", "The inquiry official (Police) or the Court", "The hospital director", "The relatives of the deceased"], correct: 1, explanation: "Under the Thai CPC, the inquiry official or the court has the authority to order an exhumation for medicolegal purposes." },
                { id: 'sys_10', topicId: 'sys', text: "An 'Expert Witness' in a forensic trial differs from a 'Lay Witness' primarily because the Expert Witness:", options: ["Can only state what they saw", "Is immune to cross-examination", "Can offer professional opinions based on facts", "Must be appointed by the defense"], correct: 2, explanation: "Expert witnesses are permitted to give opinions and interpretations within their field of expertise." },
                { id: 'sys_11', topicId: 'sys', text: "A 25-year-old is brought to the ER after a motorcycle crash and dies 3 days later from ARDS. Does this require a police investigation?", options: ["No, because the death occurred in the hospital", "No, because ARDS is a natural disease process", "Yes, because the underlying cause is an accident", "Only if the family requests it"], correct: 2, explanation: "The underlying cause (motorcycle crash) is an accident, triggering a CPC 148 unnatural death investigation regardless of hospital admission time." },
                { id: 'sys_12', topicId: 'sys', text: "What is 'Substantial Law'?", options: ["Rules on how to conduct a trial", "Laws that define rights, duties, and crimes", "Regulations for hospital administration", "Guidelines for medical ethics"], correct: 1, explanation: "Substantial law defines offenses and rights (e.g., Penal Code), whereas procedural law governs the process (e.g., CPC)." },
                { id: 'sys_13', topicId: 'sys', text: "Which of the following is considered a 'Mechanism of Death'?", options: ["Stab wound to the chest", "Suicide", "Cardiac tamponade", "Coronary artery disease"], correct: 2, explanation: "The mechanism is the physiological derangement (tamponade). The cause is the stab wound; the manner is suicide/homicide." },
                { id: 'sys_14', topicId: 'sys', text: "A Coronial system is characterized by:", options: ["A pathologist acting as the sole investigator", "An elected official making the final medicolegal decisions", "Police leading all autopsy procedures", "A panel of judges reviewing every hospital death"], correct: 1, explanation: "Coroners are often elected civilian officials who rely on pathologists for medical expertise but hold the legal authority." },
                { id: 'sys_15', topicId: 'sys', text: "According to standard medical ethics in forensic practice, to whom does the forensic physician owe their primary duty?", options: ["The police investigator", "The prosecution", "The court and the truth", "The family of the deceased"], correct: 2, explanation: "The forensic expert must remain impartial and objective; their duty is to the court and to the scientific truth." },
                { id: 'sys_16', topicId: 'sys', text: "A patient dies of an unknown cause at home. Relatives refuse an autopsy due to religious reasons. Under Thai CPC, what happens?", options: ["The autopsy is bypassed", "The police must force an autopsy if CPC 148 applies", "A verbal autopsy is sufficient", "The attending doctor must sign natural death"], correct: 1, explanation: "If the death falls under unnatural categories (like unknown cause), the law mandates an investigation/autopsy; religious objections do not override CPC requirements." },
                { id: 'sys_17', topicId: 'sys', text: "In Part II of a death certificate, a physician should record:", options: ["The direct cause of death", "The chain of events leading to death", "Other significant conditions contributing to death but not related to the underlying cause", "The manner of death"], correct: 2, explanation: "Part II is for contributing conditions (e.g., Diabetes) that didn't directly cause the primary fatal sequence (e.g., MVA)." },
                { id: 'sys_18', topicId: 'sys', text: "Which document establishes the unbroken record of possession of a piece of forensic evidence?", options: ["Autopsy report", "Chain of custody form", "Death certificate", "Toxicology requisition"], correct: 1, explanation: "Chain of custody is critical to prove evidence was not tampered with from collection to courtroom." },
                { id: 'sys_19', topicId: 'sys', text: "A body is found with a self-inflicted gunshot wound. The weapon is missing. What is the most appropriate medicolegal action?", options: ["Sign out as suicide immediately", "Classify as natural death", "Investigate as a potential homicide", "Release body to relatives immediately"], correct: 2, explanation: "A missing weapon at a presumed suicide scene is highly suspicious and warrants a homicide investigation." },
                { id: 'sys_20', topicId: 'sys', text: "If a physician is unsure of the exact cause of death but suspects it is unnatural, they must:", options: ["Sign the certificate as 'Cardiopulmonary Arrest'", "Notify the police for a medicolegal investigation", "Guess the most likely natural cause", "Consult the hospital director"], correct: 1, explanation: "Suspected unnatural deaths must be reported to the authorities; 'Cardiopulmonary arrest' is a mechanism, not a valid underlying cause." },
                { id: 'sys_21', topicId: 'sys', text: "In a clinical forensic examination of a living assault victim, what is the absolute first required step?", options: ["Taking photographs of injuries", "Collecting DNA swabs", "Obtaining informed consent", "Notifying the police"], correct: 2, explanation: "For a living patient, informed consent must be obtained before any examination, photography, or evidence collection." },
                { id: 'sys_22', topicId: 'sys', text: "A 90-year-old bedbound patient chokes on food and dies. Manner of death?", options: ["Natural", "Accident", "Suicide", "Undetermined"], correct: 1, explanation: "Choking on a foreign body is an external mechanical event, making the manner of death accidental." },
                { id: 'sys_23', topicId: 'sys', text: "Which system requires the head of the medicolegal investigation to be a physician?", options: ["Coronial System", "Police System", "Medical Examiner System", "Magistrate System"], correct: 2, explanation: "Medical Examiner systems mandate that the chief investigator is a medical doctor, usually a forensic pathologist." },
                { id: 'sys_24', topicId: 'sys', text: "Is 'Old Age' a valid underlying cause of death on a death certificate?", options: ["Yes, for anyone over 65", "No, it is never acceptable", "Yes, but generally only acceptable if the deceased is of advanced age and no other specific disease can be identified", "Yes, but only in police investigations"], correct: 2, explanation: "While discouraged, 'Senility' or 'Old Age' is sometimes accepted if the patient is elderly and exhaustive investigation reveals no specific pathology." },
                { id: 'sys_25', topicId: 'sys', text: "A person dies from rabies after a dog bite. Does this require a medicolegal autopsy under Thai law?", options: ["No, rabies is a natural infectious disease", "Yes, it classifies as an animal attack", "Only if the dog was a stray", "No, if they were treated in a hospital"], correct: 1, explanation: "The underlying cause is an animal attack, triggering a CPC 148 investigation." },
                { id: 'sys_26', topicId: 'sys', text: "What is the primary purpose of a medicolegal autopsy compared to a clinical/academic autopsy?", options: ["To study disease progression", "To satisfy family curiosity", "To determine cause and manner of death for legal purposes", "To harvest organs for transplant"], correct: 2, explanation: "Medicolegal autopsies focus on answering questions for the justice system regarding unnatural deaths." },
                { id: 'sys_27', topicId: 'sys', text: "A suspect is shot by police during a shootout and dies. How is the manner of death classified?", options: ["Accident", "Suicide", "Homicide", "Natural"], correct: 2, explanation: "Homicide is defined as death at the hands of another human. Justifiable homicide (police action) is still classified as homicide for the manner of death." },
                { id: 'sys_28', topicId: 'sys', text: "If a doctor signs a death certificate with 'Respiratory Failure' as the underlying cause, this is considered:", options: ["Correct and complete", "An unacceptable mechanism of death used as a cause", "A valid Part II entry", "A sign of a medicolegal case"], correct: 1, explanation: "Respiratory failure is a physiological mechanism. The certificate requires the disease or injury that *caused* the failure." },
                { id: 'sys_29', topicId: 'sys', text: "Under Thai law, who must be present during the autopsy of a death in official custody?", options: ["Only the pathologist", "Pathologist, Police, Public Prosecutor, and Administrative Officer", "Only the coroner", "Pathologist and the deceased's lawyer"], correct: 1, explanation: "Death in custody requires a multi-agency committee (including a prosecutor and administrative officer) to ensure transparency." },
                { id: 'sys_30', topicId: 'sys', text: "A worker falls from scaffolding due to a sudden massive heart attack and dies from skull fractures. Manner of death?", options: ["Natural", "Accident", "Suicide", "Undetermined"], correct: 1, explanation: "Though precipitated by a natural event, the lethal injuries were caused by the fall (Accident). If the heart attack was immediately fatal before the fall, it would be Natural." },
                { id: 'sys_31', topicId: 'sys', text: "Which of the following breaks the chain of custody?", options: ["Signing the evidence log", "Storing evidence in a locked, access-controlled fridge", "Leaving a sealed evidence bag unattended on a public desk", "Transferring evidence directly to a toxicologist with signatures"], correct: 2, explanation: "Unattended evidence in unsecured areas breaks the chain, as tampering cannot be ruled out." },
                { id: 'sys_32', topicId: 'sys', text: "A patient dies of complications from surgery performed 5 years ago. Is this a medicolegal case?", options: ["No, because 5 years have passed", "Yes, surgical complications are generally considered therapeutic misadventures (unnatural)", "No, because the death occurred in a hospital", "Only if the surgeon is currently under investigation"], correct: 1, explanation: "There is no statute of limitations on the cause of death. Therapeutic misadventures are unnatural deaths requiring investigation." },
                { id: 'sys_33', topicId: 'sys', text: "In a clinical forensic case of child abuse, what is the physician's legal obligation?", options: ["To confront the parents", "To maintain confidentiality above all else", "To report the suspected abuse to authorities immediately", "To wait for a second incident before reporting"], correct: 2, explanation: "Mandatory reporting laws require physicians to report suspected child abuse to child protective services or police immediately." },
                { id: 'sys_34', topicId: 'sys', text: "What is 'Procedural Law'?", options: ["The law defining what constitutes a murder", "The law outlining the legal process and rules of investigation/court", "The law governing medical licensing", "The law of contracts"], correct: 1, explanation: "Procedural law (like the CPC) dictates the 'how'—how investigations, arrests, and trials are conducted." },
                { id: 'sys_35', topicId: 'sys', text: "A body is found skeletal in the woods. What is the immediate manner of death classification?", options: ["Homicide", "Natural", "Suicide", "Undetermined"], correct: 3, explanation: "Without tissue or obvious trauma, the manner is 'Undetermined' until evidence proves otherwise." },
                { id: 'sys_36', topicId: 'sys', text: "When completing a death certificate, the time interval between onset and death should be:", options: ["Estimated as closely as possible", "Always left blank", "Only filled out for unnatural deaths", "Always listed as 'acute'"], correct: 0, explanation: "The WHO format asks for approximate intervals between the onset of the condition and death to establish the sequence of events." },
                { id: 'sys_37', topicId: 'sys', text: "A person intentionally steps in front of a train. Mechanism of death?", options: ["Suicide", "Massive blunt force trauma", "Train collision", "Exsanguination"], correct: 1, explanation: "Suicide is the manner. Train collision is the cause. Massive blunt trauma/exsanguination is the mechanism." },
                { id: 'sys_38', topicId: 'sys', text: "Who primarily conducts the scene investigation in the Thai Medicolegal system?", options: ["Forensic Pathologist", "Medical Examiner", "Inquiry Official (Police)", "The victim's family"], correct: 2, explanation: "In Thailand's police-based system, the Inquiry Official leads the scene investigation." },
                { id: 'sys_39', topicId: 'sys', text: "A doctor examines an assault victim and writes a report for the court. What type of document is this?", options: ["A death certificate", "A medicolegal report", "A clinical referral", "A search warrant"], correct: 1, explanation: "A formal document detailing findings for legal purposes is a medicolegal report." },
                { id: 'sys_40', topicId: 'sys', text: "A patient dies in the ER 10 minutes after arriving with a gunshot wound. Can the ER doctor sign the death certificate indicating natural death?", options: ["Yes, if the family insists", "No, it is an unnatural death and must be referred to police", "Yes, because the patient died in the hospital", "Yes, but they must leave the cause blank"], correct: 1, explanation: "Gunshot wounds are homicides/suicides/accidents. The doctor must not sign a natural death certificate; they must trigger a CPC 148 investigation." },
                { id: 'sys_41', topicId: 'sys', text: "What is the primary role of a forensic pathologist in court?", options: ["To prosecute the defendant", "To defend the accused", "To provide impartial medical evidence and interpretation", "To rule on objections"], correct: 2, explanation: "The expert witness must remain neutral and present scientific findings objectively." },
                { id: 'sys_42', topicId: 'sys', text: "An elderly woman dies of a pulmonary embolism 3 weeks after fracturing her femur in a trip-and-fall. Manner of death?", options: ["Natural", "Accident", "Suicide", "Undetermined"], correct: 1, explanation: "The sequence began with an accidental fall. The PE is a complication of the accident, making the manner accidental." },
                { id: 'sys_43', topicId: 'sys', text: "In Thailand, if a death occurs at a residence and the cause is clearly natural (e.g., end-stage cancer), who confirms the death?", options: ["The forensic pathologist", "The local police chief", "A physician, or local administrative officials (e.g., Kamnan/Phuyaiban) if a doctor is unavailable", "The coroner"], correct: 2, explanation: "For clear natural deaths outside hospitals, local officials or attending doctors verify the death." },
                { id: 'sys_44', topicId: 'sys', text: "Which is a violation of medical confidentiality in forensics?", options: ["Including STI results in a rape kit report sent to police", "Testifying about autopsy findings in open court", "Discussing a high-profile murder case's autopsy details on social media", "Sharing medical records with the designated inquiry official"], correct: 2, explanation: "Social media discussion is an ethical breach. Court testimony and police reports are legally mandated disclosures." },
                { id: 'sys_45', topicId: 'sys', text: "A 10-year-old child dies of anaphylaxis after being stung by a bee. This is categorized under CPC 148 as:", options: ["Natural death", "Suicide", "Animal attack", "Unknown cause"], correct: 2, explanation: "A insect sting resulting in death legally falls under the 'animal attack' category of unnatural deaths." },
                { id: 'sys_46', topicId: 'sys', text: "What defines 'Therapeutic Misadventure'?", options: ["A patient refusing treatment", "An unexpected death caused by medical intervention or surgery", "A doctor prescribing the correct medication", "A natural disease progressing despite treatment"], correct: 1, explanation: "Death directly resulting from a medical procedure (e.g., anesthesia complication, severed artery) is a therapeutic misadventure." },
                { id: 'sys_47', topicId: 'sys', text: "A body is recovered from a river. The manner of death is immediately classified as drowning.", options: ["True, because it was in water", "False, drowning is a cause/mechanism, manner could be accident, suicide, or homicide", "True, drowning is always accidental", "False, bodies in water are always homicides"], correct: 1, explanation: "Being in water doesn't define the manner. They could have been pushed (Homicide), jumped (Suicide), or fallen (Accident)." },
                { id: 'sys_48', topicId: 'sys', text: "A physician fails to report a suspicious death of a patient exhibiting signs of poisoning. What type of liability might they face?", options: ["Only ethical reprimand", "Criminal liability under CPC and professional misconduct", "No liability if they didn't administer the poison", "Civil liability only"], correct: 1, explanation: "Failure to report unnatural deaths is a violation of the law and medical council ethics." },
                { id: 'sys_49', topicId: 'sys', text: "When taking photographs in a clinical forensic examination, it is crucial to include:", options: ["Only close-ups of the wound", "A scale/ruler and a color chart in the frame", "Filters to enhance the wound's appearance", "The patient's family members"], correct: 1, explanation: "A scale ensures accurate measurement representation, and a color chart ensures accurate color calibration for court." },
                { id: 'sys_50', topicId: 'sys', text: "The term 'Postmortem Interval' (PMI) refers to:", options: ["The time between injury and death", "The time between death and discovery/examination of the body", "The duration of the autopsy", "The time taken for a trial to begin"], correct: 1, explanation: "PMI is the estimated time that has elapsed since the person died." }
            ];

            // --- TOPIC 2: CSI, Traumatology & Injury Patterns (50 Questions) ---
            const topic2Expanded = [
                { id: 'trauma_1', topicId: 'trauma', text: "Which is a definitive characteristic of a laceration?", options: ["Cleanly severed tissues", "Linear cut marks on bone", "Presence of tissue bridging/strands", "Caused by a sharp scalpel"], correct: 2, explanation: "Lacerations are blunt force injuries characterized by tissue bridging across the wound depth, as blood vessels and nerves often resist tearing." },
                { id: 'trauma_2', topicId: 'trauma', text: "What is the correct sequence of bruise (contusion) color breakdown?", options: ["Red → Green → Yellow → Purple", "Red/Purple → Hemosiderin (Brown) → Biliverdin (Green) → Bilirubin (Yellow)", "Blue → Yellow → Green → Brown", "Red → Bilirubin → Biliverdin → Hemosiderin"], correct: 1, explanation: "Hemoglobin breaks down to hemosiderin, then green biliverdin, then yellow bilirubin. This helps estimate the age of the bruise." },
                { id: 'trauma_3', topicId: 'trauma', text: "In a fatal fall from a significant height, what mechanism primarily causes massive internal organ tearing?", options: ["Direct blunt impact", "Liquefactive necrosis", "Acceleration-Deceleration (AC-DC)", "Asphyxiation"], correct: 2, explanation: "The AC-DC mechanism causes tethered organs (like the aorta at the ligamentum arteriosum) to shear when the skeleton abruptly stops." },
                { id: 'trauma_4', topicId: 'trauma', text: "An incised wound is categorized as what type of injury?", options: ["Blunt force", "Sharp force", "Thermal force", "Crushing force"], correct: 1, explanation: "Incised wounds (cuts) are sharp force injuries where the length of the wound on the skin is greater than its depth." },
                { id: 'trauma_5', topicId: 'trauma', text: "A body is found with a wound showing crushed margins and intact underlying bone. What is the most likely weapon type?", options: ["Slicing knife", "Stabbing ice pick", "Blunt pipe", "Surgical scalpel"], correct: 2, explanation: "Crushed, abraded margins and intact bone are classic signs of blunt force trauma, indicating a laceration rather than a cut." },
                { id: 'trauma_6', topicId: 'trauma', text: "In forensic terms, a 'wound' differs from an 'ulcer' because a wound is:", options: ["Disease-driven", "Only superficial", "Caused by external mechanical force", "Always fatal"], correct: 2, explanation: "A wound is defined as a disruption of tissue continuity caused by an external mechanical force, distinct from pathological ulcers." },
                { id: 'trauma_7', topicId: 'trauma', text: "Which type of abrasion results from friction against a rough surface, leaving parallel striations?", options: ["Impact abrasion", "Brush abrasion (Graze)", "Patterned abrasion", "Pressure abrasion"], correct: 1, explanation: "Brush or sliding abrasions leave linear striations that can indicate the direction of force." },
                { id: 'trauma_8', topicId: 'trauma', text: "How is a stab wound defined in forensic pathology?", options: ["A sharp force wound where depth is greater than length on the skin", "A wound caused by a heavy, bladed instrument like an axe", "A blunt force wound with deep tissue bridging", "Any wound caused by a projectile"], correct: 0, explanation: "In stab wounds, the depth of the penetration track is greater than the length of the wound on the skin surface." },
                { id: 'trauma_9', topicId: 'trauma', text: "Which injury type involves both sharp and blunt force characteristics?", options: ["Incised wound", "Puncture wound", "Chop wound", "Avulsion"], correct: 2, explanation: "Chop wounds (e.g., from an axe or machete) have sharp, cut margins but also show underlying crushing or bone fracture due to the heavy blunt force." },
                { id: 'trauma_10', topicId: 'trauma', text: "What are 'hesitation marks'?", options: ["Deep, fatal wounds on the back of the neck", "Superficial, parallel sharp force cuts usually found on the wrists or neck", "Abrasions found on a victim's knuckles", "Patterned bruising from a steering wheel"], correct: 1, explanation: "Hesitation marks are superficial, tentative cuts indicating self-inflicted injury (suicide attempt) prior to a fatal wound." },
                { id: 'trauma_11', topicId: 'trauma', text: "Where are defense wounds most commonly located on a victim?", options: ["Back of the head and shoulders", "Soles of the feet", "Palms, forearms, and ulnar aspect of the arms", "Chest and abdomen"], correct: 2, explanation: "Defense wounds are sustained when a victim attempts to ward off a weapon, typically raising their arms or grabbing a blade." },
                { id: 'trauma_12', topicId: 'trauma', text: "A stab wound appears gaping and oval-shaped rather than slit-like. This is likely because the blade entered:", options: ["Perpendicular to Langer's lines", "Parallel to Langer's lines", "Through clothing", "Into bone"], correct: 0, explanation: "Langer's lines represent the natural tension lines of the skin. A cut perpendicular to these lines will gape open." },
                { id: 'trauma_13', topicId: 'trauma', text: "What is an 'avulsion'?", options: ["A superficial scrape", "A clean surgical incision", "The tearing away of a structure or part of the tissue", "A localized collection of blood"], correct: 2, explanation: "An avulsion occurs when tissue is forcibly torn or separated from its normal attachments." },
                { id: 'trauma_14', topicId: 'trauma', text: "A classic 'contrecoup' injury in the brain occurs:", options: ["Directly beneath the point of impact", "On the side opposite the point of impact", "Only in the brainstem", "Along the sagittal sinus"], correct: 1, explanation: "Contrecoup contusions occur opposite the impact site, typically when a moving head strikes a stationary object (e.g., falling backward, hitting the occiput, causing frontal lobe contusions)." },
                { id: 'trauma_15', topicId: 'trauma', text: "An epidural hematoma is most commonly associated with a skull fracture tearing which vessel?", options: ["Bridging veins", "Middle meningeal artery", "Superior sagittal sinus", "Internal carotid artery"], correct: 1, explanation: "Epidural hematomas are typically arterial bleeds caused by a temporal bone fracture lacerating the middle meningeal artery." },
                { id: 'trauma_16', topicId: 'trauma', text: "Which bleeding type is classically described as crescent-shaped on a CT scan and is caused by tearing of bridging veins?", options: ["Epidural hematoma", "Subarachnoid hemorrhage", "Subdural hematoma", "Intracerebral hemorrhage"], correct: 2, explanation: "Subdural hematomas result from venous bleeding (bridging veins) and spread diffusely over the brain surface." },
                { id: 'trauma_17', topicId: 'trauma', text: "A 'hinge fracture' is a type of:", options: ["Mandible fracture", "Depressed skull fracture", "Basilar skull fracture separating the base of the skull in half", "Cervical spine fracture"], correct: 2, explanation: "A hinge fracture is a massive transverse basilar skull fracture that passes through the petrous bones and sella turcica, often fatal." },
                { id: 'trauma_18', topicId: 'trauma', text: "A key feature to differentiate an antemortem (before death) bruise from postmortem lividity is:", options: ["Color", "Location", "Incision shows diffused blood in tissue (bruise) vs blood confined to vessels (lividity)", "Size"], correct: 2, explanation: "Washing or incising the tissue will clear lividity (blood in vessels), whereas a true contusion has blood extravasated into the surrounding tissue." },
                { id: 'trauma_19', topicId: 'trauma', text: "Which finding is pathognomonic for a 'contact' gunshot wound?", options: ["Stippling", "Muzzle imprint on the skin", "Absence of soot", "An exit wound larger than the entry"], correct: 1, explanation: "A muzzle imprint (abrasion ring matching the gun barrel) occurs when the barrel is pressed firmly against the skin upon firing." },
                { id: 'trauma_20', topicId: 'trauma', text: "What creates the 'abrasion collar' typically seen in an entrance gunshot wound?", options: ["Burning unburned gunpowder", "The bullet stretching and rubbing the skin as it enters", "The hot gases from the muzzle", "The exit of the bullet"], correct: 1, explanation: "The spinning bullet indents and abrades the skin edges as it passes through, creating a marginal abrasion or collar." },
                { id: 'trauma_21', topicId: 'trauma', text: "What is 'stippling' or 'tattooing' in a gunshot wound?", options: ["Soot deposition on the skin surface", "Burn marks from the hot barrel", "Punctate abrasions caused by unburned gunpowder grains striking the skin", "The shape of the exit wound"], correct: 2, explanation: "Stippling occurs in intermediate-range GSWs when burning/unburned powder grains embed in the skin. It cannot be washed off." },
                { id: 'trauma_22', topicId: 'trauma', text: "A gunshot wound shows an abrasion collar but absolutely no soot and no stippling. The range of fire is most likely:", options: ["Tight contact", "Loose contact", "Intermediate", "Distant"], correct: 3, explanation: "Distant wounds lack soot and stippling because the muzzle is far enough away that only the projectile reaches the skin." },
                { id: 'trauma_23', topicId: 'trauma', text: "Compared to an entrance gunshot wound, an exit wound is typically:", options: ["Smaller, with a distinct abrasion collar", "Larger, irregular, and lacks an abrasion collar", "Perfectly circular", "Surrounded by heavy soot"], correct: 1, explanation: "Exit wounds are typically larger, irregular (stellate), have outward-everted margins, and lack an abrasion collar." },
                { id: 'trauma_24', topicId: 'trauma', text: "In shotgun injuries, the appearance of 'satellite' pellet holes around a central main wound indicates:", options: ["Contact range", "The wadding entered the body", "The shot cup is beginning to spread (typically 3-10 feet away)", "A rifled barrel was used"], correct: 2, explanation: "As distance increases, the shot column spreads, creating satellite pellet holes around the central defect (the billiard ball effect)." },
                { id: 'trauma_25', topicId: 'trauma', text: "A victim in a motor vehicle collision presents with right-sided 'dicing' injuries. Where was the victim likely sitting?", options: ["Driver's seat", "Right passenger seat", "Back middle seat", "Trunk"], correct: 1, explanation: "Dicing injuries are small, right-angled cuts/abrasions caused by shattered tempered side-window glass. Right side injuries imply sitting on the right." },
                { id: 'trauma_26', topicId: 'trauma', text: "In pedestrian hit-and-run fatalities, what is a 'Messerer's fracture'?", options: ["A depressed skull fracture", "A wedge-shaped bumper fracture of the tibia/fibula indicating the direction of impact", "A pelvic fracture", "A fracture of the cervical spine"], correct: 1, explanation: "Messerer's fracture is a wedge-shaped bone break caused by a bumper impact; the apex of the wedge points in the direction the vehicle was traveling." },
                { id: 'trauma_27', topicId: 'trauma', text: "Which injury pattern is pathognomonic for a pedestrian being struck and thrown *over* the vehicle?", options: ["Primary impact to legs, secondary to windshield/hood, tertiary to the ground", "Only severe head trauma", "Isolated chest trauma", "Contrecoup injuries alone"], correct: 0, explanation: "Pedestrians often suffer a triad: primary bumper impact (legs), secondary impact (hood/windshield), and tertiary impact (the road surface)." },
                { id: 'trauma_28', topicId: 'trauma', text: "What is the 'seatbelt sign'?", options: ["A tattoo indicating vehicle safety", "Patterned bruising diagonally across the chest and horizontally across the abdomen", "Abrasions only on the neck", "A fracture of the sternum"], correct: 1, explanation: "The seatbelt sign is a patterned contusion caused by sudden deceleration against the seatbelt harness." },
                { id: 'trauma_29', topicId: 'trauma', text: "A severe flex-extension injury to the neck in a rear-end collision is commonly called:", options: ["Whiplash", "Hangman's fracture", "Contrecoup", "Strangulation"], correct: 0, explanation: "Whiplash is a non-medical term for cervical acceleration-deceleration injury affecting soft tissues and sometimes ligaments/bones of the neck." },
                { id: 'trauma_30', topicId: 'trauma', text: "What causes the 'pugilistic stance' in severely burned bodies?", options: ["Conscious defensive posturing before death", "Coagulation and heat-induced contraction of muscle proteins", "Rigor mortis", "Blunt force trauma prior to burning"], correct: 1, explanation: "Intense heat causes muscle proteins to denature and contract. Because flexor muscles are bulkier than extensors, the body draws into a boxer-like (pugilistic) pose." },
                { id: 'trauma_31', topicId: 'trauma', text: "In a house fire victim, the presence of soot deep in the trachea and bronchi indicates:", options: ["The person was dead before the fire started", "The person was alive and breathing during the fire", "Postmortem smoke settling", "Severe carbon monoxide poisoning"], correct: 1, explanation: "Soot in the lower airways is a vital reaction, proving the victim was actively respiring in the smoky environment." },
                { id: 'trauma_32', topicId: 'trauma', text: "A victim struck by lightning often displays a transient, fern-like erythematous skin pattern known as:", options: ["Tardieu spots", "Lichtenberg figures", "Cherry red lividity", "Metallization"], correct: 1, explanation: "Lichtenberg figures are pathognomonic for lightning strikes, likely caused by electron showering over the skin surface." },
                { id: 'trauma_33', topicId: 'trauma', text: "In electrocution, a 'Joule burn' at the point of contact typically appears as:", options: ["A large third-degree burn covering an entire limb", "A firm, pale/yellowish central crater with an erythematous halo", "A fern-like pattern", "A massive laceration"], correct: 1, explanation: "A Joule burn (electrical mark) is a characteristic small, firm, depressed crater where the conductor contacted the skin." },
                { id: 'trauma_34', topicId: 'trauma', text: "Which finding strongly suggests carbon monoxide (CO) poisoning?", options: ["Dark purple livor mortis", "Cherry-red coloration of the skin, blood, and muscles", "Severe pulmonary edema", "Cyanosis of the lips"], correct: 1, explanation: "Carboxyhemoglobin formation gives blood and tissues a bright, cherry-red appearance." },
                { id: 'trauma_35', topicId: 'trauma', text: "In hypothermia deaths, victims often exhibit 'paradoxical undressing'. What causes this?", options: ["Intoxication with drugs", "A delusion of extreme heat caused by terminal vasodilation", "Severe shivering", "Attempting to swim"], correct: 1, explanation: "As the thermoregulatory center fails, sudden peripheral vasodilation causes a rush of warm blood to the skin, making the victim feel burning hot." },
                { id: 'trauma_36', topicId: 'trauma', text: "What are 'Tardieu spots'?", options: ["Petechial hemorrhages found in dependent areas or under the pleura/epicardium in asphyxia", "Burn marks from electrical injury", "Gunpowder stippling", "Bruises from blunt trauma"], correct: 0, explanation: "Tardieu spots are dark petechiae resulting from ruptured capillaries, classically seen in mechanical asphyxia or advanced decomposition." },
                { id: 'trauma_37', topicId: 'trauma', text: "A fracture of the C2 vertebra, typically the pars interarticularis, is known as a:", options: ["Jefferson fracture", "Hangman's fracture", "Colles fracture", "Basilar fracture"], correct: 1, explanation: "A Hangman's fracture involves the C2 pedicles/pars, classic in judicial hangings and hyperextension vehicle crashes." },
                { id: 'trauma_38', topicId: 'trauma', text: "Which of the following describes 'Traumatic Asphyxia' (Perthes syndrome)?", options: ["Strangulation by a ligature", "Airway blockage by a foreign body", "Massive compression of the chest preventing respiration, leading to intense facial cyanosis and petechiae", "Drowning in freshwater"], correct: 2, explanation: "Traumatic asphyxia occurs when a heavy weight compresses the chest, stopping respiratory movements and forcing blood backwards into the head and neck." },
                { id: 'trauma_39', topicId: 'trauma', text: "In child abuse cases, the most highly specific skeletal finding for non-accidental trauma is:", options: ["A linear skull fracture", "A clavicle fracture", "Classic metaphyseal lesions (corner/bucket-handle fractures)", "A distal radius fracture"], correct: 2, explanation: "Metaphyseal lesions are caused by violent pulling/twisting/yanking of a child's limbs and are highly indicative of abuse." },
                { id: 'trauma_40', topicId: 'trauma', text: "What triad of injuries is strongly associated with Shaken Baby Syndrome (Abusive Head Trauma)?", options: ["Rib fractures, skull fractures, bruised arms", "Subdural hemorrhage, retinal hemorrhages, and encephalopathy", "Epidural hematoma, clear CSF, clavicle fracture", "Liver laceration, spleen laceration, contusions"], correct: 1, explanation: "The classic triad includes subdural hemorrhage, profound retinal hemorrhages, and brain swelling (encephalopathy)." },
                { id: 'trauma_41', topicId: 'trauma', text: "A stab wound features a 'swallowtail' or V-shaped notch at one end. This indicates:", options: ["A double-edged knife was used", "The victim twisted, or the blade had a thick back/hilt that tore the skin upon full insertion", "A serrated blade was used", "A blunt object caused the wound"], correct: 1, explanation: "A swallowtail notch often occurs if the knife is twisted upon extraction or if the hilt of a single-edged knife tears the wound margin." },
                { id: 'trauma_42', topicId: 'trauma', text: "The primary blast injury from an explosion is caused by:", options: ["Flying shrapnel", "Being thrown against a wall", "The supersonic overpressurization shockwave", "Thermal burns"], correct: 2, explanation: "Primary blast injuries (like tympanic membrane rupture or blast lung) are caused directly by the atmospheric pressure wave." },
                { id: 'trauma_43', topicId: 'trauma', text: "Secondary blast injuries are caused by:", options: ["The pressure wave", "Flying debris and shrapnel", "Victim displacement", "Toxic gas inhalation"], correct: 1, explanation: "Secondary injuries are ballistic trauma caused by objects accelerated by the blast." },
                { id: 'trauma_44', topicId: 'trauma', text: "A 25-year-old sustains a femur fracture. Two days later, he develops severe dyspnea, petechiae, and altered mental status. The most likely cause of death is:", options: ["Myocardial infarction", "Fat embolism syndrome", "Tension pneumothorax", "Epidural hematoma"], correct: 1, explanation: "Fat embolism syndrome occurs when marrow fat from long bone fractures enters the venous system and lodges in the pulmonary/cerebral capillaries." },
                { id: 'trauma_45', topicId: 'trauma', text: "In an autopsy, finding 'tram-line' or parallel linear contusions indicates the victim was struck with a:", options: ["Flat board", "Cylindrical object like a pipe or baton", "Sharp knife", "Heavy axe"], correct: 1, explanation: "A cylindrical weapon displaces blood outward to the edges of the impact, creating two parallel lines of bruising with a pale center." },
                { id: 'trauma_46', topicId: 'trauma', text: "What is a 'flail chest'?", options: ["A single fractured rib", "Multiple adjacent ribs fractured in two or more places, creating a paradoxical free-floating segment", "A sternum fracture", "A pneumothorax"], correct: 1, explanation: "Flail chest results in paradoxical breathing motion and severely impairs ventilation." },
                { id: 'trauma_47', topicId: 'trauma', text: "A wound on the skin features tissue bridges and undermined edges, but is located over the sharp ridge of the tibia. It appears clean. It is a:", options: ["Incised wound", "Laceration", "Stab wound", "Abrasions"], correct: 1, explanation: "Blunt trauma over a sharp bone edge can split the skin cleanly, mimicking an incised wound, but the presence of tissue bridging confirms it is a laceration." },
                { id: 'trauma_48', topicId: 'trauma', text: "A patterned abrasion showing a crisscross or woven mark suggests:", options: ["A tire tread", "Fabric imprint from the victim's clothing or a seatbelt during impact", "A muzzle imprint", "A knife handle"], correct: 1, explanation: "High-pressure impact can stamp the weave pattern of clothing directly into the skin as an abrasion." },
                { id: 'trauma_49', topicId: 'trauma', text: "If an autopsy reveals a tear in the intima of the carotid artery, what mechanism of injury should be strongly suspected?", options: ["Stabbing", "Hyperextension of the neck or hanging", "Poisoning", "Thermal burn"], correct: 1, explanation: "Carotid intimal tears (Amussat's sign) are classic internal findings of violent neck stretching or ligature hanging." },
                { id: 'trauma_50', topicId: 'trauma', text: "Which organ is most frequently lacerated in severe blunt abdominal trauma?", options: ["Stomach", "Pancreas", "Liver or Spleen", "Gallbladder"], correct: 2, explanation: "The liver and spleen are solid, highly vascular organs that are highly susceptible to capsular tearing and crushing from blunt force." }
            ];

            // --- TOPIC 3: Postmortem Changes & Time of Death (50 Questions) ---
            const topic3Expanded = [
                { id: 'pmc_1', topicId: 'pmc', text: "Which environmental conditions favor Mummification?", options: ["Damp and warm", "Dry, high temp, low humidity", "Cold and wet", "Submerged in freshwater"], correct: 1, explanation: "Mummification requires rapid fluid loss via evaporation in dry, often hot conditions, which halts bacterial putrefaction." },
                { id: 'pmc_2', topicId: 'pmc', text: "Adipocere formation involves the conversion of body fat into a wax-like material by which organism?", options: ["Staphylococcus", "Clostridium perfringens", "Streptococcus", "E. coli"], correct: 1, explanation: "Clostridium species produce enzymes that hydrolyze body fats into hydroxy fatty acids (saponification) in damp, warm environments." },
                { id: 'pmc_3', topicId: 'pmc', text: "Which internal organs are typically the last to decompose?", options: ["Heart and lungs", "Brain and liver", "Stomach and intestines", "Uterus and prostate"], correct: 3, explanation: "The non-gravid uterus and the prostate are compact, fibromuscular organs that resist putrefaction longer than other soft tissues." },
                { id: 'pmc_4', topicId: 'pmc', text: "Marbling and bloating are classic signs of:", options: ["Autolysis", "Putrefaction", "Mummification", "Coagulative necrosis"], correct: 1, explanation: "These are signs of putrefaction (bacterial breakdown). Marbling occurs when bacteria invade blood vessels." },
                { id: 'pmc_5', topicId: 'pmc', text: "Which type of necrosis is characterized by hydrolytic enzymes causing tissue softening, mostly seen in the CNS?", options: ["Coagulative", "Caseous", "Liquefactive", "Fat necrosis"], correct: 2, explanation: "Liquefactive necrosis involves the complete digestion of dead cells, turning tissue into a liquid viscous mass, typical in hypoxic brain death." },
                { id: 'pmc_6', topicId: 'pmc', text: "What is the primary biochemical cause of Rigor Mortis?", options: ["Lactic acid buildup", "Depletion of ATP preventing detachment of actin-myosin bridges", "Coagulation of blood", "Bacterial gas production"], correct: 1, explanation: "Without ATP, the myosin heads cannot detach from actin filaments, causing the muscles to lock in a rigid state." },
                { id: 'pmc_7', topicId: 'pmc', text: "Livor mortis (lividity) typically becomes 'fixed' (non-blanchable) after approximately what time interval?", options: ["1-2 hours", "4-6 hours", "8-12 hours", "24-36 hours"], correct: 2, explanation: "Lividity usually becomes fixed around 8-12 hours as red blood cells hemolyze and hemoglobin stains the surrounding tissues." },
                { id: 'pmc_8', topicId: 'pmc', text: "A body exhibits cherry-red livor mortis. What is the most likely cause of death?", options: ["Cyanide poisoning", "Carbon monoxide poisoning", "Hypothermia", "Hydrogen sulfide poisoning"], correct: 1, explanation: "Carbon monoxide forms carboxyhemoglobin, which has a distinct bright cherry-red color." },
                { id: 'pmc_9', topicId: 'pmc', text: "Pink livor mortis is characteristically seen in which two conditions?", options: ["Hanging and drowning", "Carbon monoxide and hyperthermia", "Hypothermia and cyanide poisoning", "Sepsis and exsanguination"], correct: 2, explanation: "Cold temperatures keep oxygen bound to hemoglobin, and cyanide prevents cells from using oxygen, both leaving venous blood oxygenated and pink." },
                { id: 'pmc_10', topicId: 'pmc', text: "Algor mortis refers to:", options: ["Stiffening of muscles", "Settling of blood", "Postmortem cooling of the body", "Corneal clouding"], correct: 2, explanation: "Algor mortis is the process by which the body cools to match the ambient environmental temperature." },
                { id: 'pmc_11', topicId: 'pmc', text: "Under average, temperate conditions, the body cools at approximately what rate during the first 12 hours?", options: ["0.1 - 0.5 °C / hour", "0.5 - 0.75 °C / hour (approx 1-1.5 °F)", "2.0 - 3.0 °C / hour", "5.0 °C / hour"], correct: 1, explanation: "Standard cooling is roughly 1-1.5 °F (or ~0.75 °C) per hour, though this is heavily dependent on ambient temperature, clothing, and body mass." },
                { id: 'pmc_12', topicId: 'pmc', text: "What is 'Cadaveric Spasm'?", options: ["A late stage of rigor mortis", "Immediate, instantaneous stiffening of a muscle group at the moment of death", "Spasms caused by postmortem bacterial gas", "Convulsions occurring 2 hours postmortem"], correct: 1, explanation: "Cadaveric spasm is instantaneous rigor, usually linked to severe emotional or physical stress immediately prior to death (e.g., grasping a weapon)." },
                { id: 'pmc_13', topicId: 'pmc', text: "According to Nysten's Law, rigor mortis typically becomes noticeable first in the:", options: ["Large muscles of the legs", "Small muscles of the face, jaw, and neck", "Abdominal wall", "Hands and feet"], correct: 1, explanation: "Rigor generally appears first in smaller muscle groups like the jaw and face, then spreads downwards to the trunk and extremities." },
                { id: 'pmc_14', topicId: 'pmc', text: "A body is completely stiff (full rigor). The estimated time since death is roughly:", options: ["1-2 hours", "3-6 hours", "12-24 hours", "48-72 hours"], correct: 2, explanation: "Rigor usually begins at 2-4 hours, reaches maximum stiffness around 12 hours, remains for 12 hours, and then gradually passes over the next 12-24 hours." },
                { id: 'pmc_15', topicId: 'pmc', text: "Autolysis is primarily mediated by:", options: ["Bacterial enzymes", "Intrinsic cellular hydrolytic enzymes", "Fungal invasion", "Environmental heat"], correct: 1, explanation: "Autolysis is the aseptic breakdown of tissue caused by the release of the body's own intracellular enzymes upon cell death." },
                { id: 'pmc_16', topicId: 'pmc', text: "The earliest external sign of putrefaction is typically:", options: ["Skin slippage", "Greenish discoloration of the lower right quadrant of the abdomen", "Bloating of the face", "Purge fluid from the nose"], correct: 1, explanation: "The cecum is located in the lower right quadrant and holds massive amounts of bacteria. H2S gas produced there reacts with hemoglobin to turn the skin green." },
                { id: 'pmc_17', topicId: 'pmc', text: "What compound creates the prominent 'marbling' effect seen on the skin during decomposition?", options: ["Carboxyhemoglobin", "Sulfhemoglobin", "Methemoglobin", "Hemosiderin"], correct: 1, explanation: "Bacteria in the bloodstream produce hydrogen sulfide (H2S), which reacts with hemoglobin to form dark greenish-black sulfhemoglobin, highlighting the superficial veins." },
                { id: 'pmc_18', topicId: 'pmc', text: "Postmortem 'purge fluid' purging from the nose and mouth is often mistaken by laypeople for:", options: ["Saliva", "Stomach acid", "Antemortem traumatic bleeding", "Cerebrospinal fluid"], correct: 2, explanation: "Dark, reddish purge fluid is forced out by decomposition gases in the lungs and stomach, often mimicking blood from traumatic facial/head injuries." },
                { id: 'pmc_19', topicId: 'pmc', text: "Which fluid is considered the most reliable for analyzing chemical changes (like potassium levels) to estimate Time of Death?", options: ["Blood", "Urine", "Cerebrospinal fluid", "Vitreous humor"], correct: 3, explanation: "Vitreous humor is relatively isolated from early putrefaction and blood contamination. Potassium levels in the vitreous rise linearly after death." },
                { id: 'pmc_20', topicId: 'pmc', text: "Tache Noire refers to:", options: ["Black spots of decomposition on the liver", "A dark band of discoloration across the sclera of the open eye", "Soot deposits from a gunshot wound", "A specific type of fly larvae"], correct: 1, explanation: "Tache noire is a dark brown/black band that forms on the sclera when the eyelids remain partially open after death, causing the exposed area to dry out." },
                { id: 'pmc_21', topicId: 'pmc', text: "In forensic entomology, which insect family is typically the first to colonize a corpse?", options: ["Dermestidae (Beetles)", "Calliphoridae (Blowflies)", "Formicidae (Ants)", "Vespidae (Wasps)"], correct: 1, explanation: "Blowflies are highly sensitive to the odor of death and can arrive at a body within minutes to lay eggs." },
                { id: 'pmc_22', topicId: 'pmc', text: "The life cycle of a blowfly progresses from egg to:", options: ["Pupa, then Larva (maggot), then Adult", "Larva (instars 1-3), then Pupa, then Adult", "Adult, then Larva, then Pupa", "Nymph, then Pupa, then Adult"], correct: 1, explanation: "Eggs hatch into larvae (maggots), which progress through three instars, then pupate, and finally emerge as adult flies." },
                { id: 'pmc_23', topicId: 'pmc', text: "A body is found in full rigor, but the lividity is completely blanchable. The estimated PMI is roughly:", options: ["Less than 8 hours", "12-24 hours", "36-48 hours", "Over 3 days"], correct: 0, explanation: "Rigor can begin at 2-4 hours and be strong at 6-8 hours, but lividity does not typically 'fix' until 8-12 hours. Thus, PMI is likely < 8 hours." },
                { id: 'pmc_24', topicId: 'pmc', text: "What does the 'temperature plateau' mean in algor mortis?", options: ["The body stops cooling at room temperature", "A period of 1-3 hours immediately postmortem where the core temperature does not drop", "The core temperature briefly rises before falling", "The point at which putrefaction generates heat"], correct: 1, explanation: "The core temperature often remains stable for a few hours after death before Newton's Law of Cooling takes effect." },
                { id: 'pmc_25', topicId: 'pmc', text: "Which formula/tool uses rectal temperature, ambient temperature, and body weight to mathematically estimate PMI?", options: ["Nysten's Law", "Paracelsus Nomogram", "Henssge's Nomogram", "Rule of Nines"], correct: 2, explanation: "Henssge's nomogram is the standard forensic chart used to calculate PMI based on cooling rates and correction factors (like clothing/water)." },
                { id: 'pmc_26', topicId: 'pmc', text: "Gastric emptying can be used to estimate PMI. Generally, a light meal empties the stomach in:", options: ["30 minutes", "1-2 hours", "4-6 hours", "12-24 hours"], correct: 1, explanation: "A light meal empties in about 1.5-2 hours, while a heavy, fat-rich meal may take 4-6 hours. It provides a rough estimate of time since the last meal." },
                { id: 'pmc_27', topicId: 'pmc', text: "Skin slippage and bullae (blister) formation are classic signs of:", options: ["Early rigor mortis", "Autolysis progressing into early putrefaction", "Adipocere formation", "Mummification"], correct: 1, explanation: "As enzymes break down the dermal-epidermal junction, fluid accumulates in bullae, and the epidermis easily slips off the dermis." },
                { id: 'pmc_28', topicId: 'pmc', text: "Which organ is among the FIRST to putrefy due to its high enzyme and blood content?", options: ["Prostate", "Uterus", "Heart", "Pancreas"], correct: 3, explanation: "The pancreas is packed with powerful digestive enzymes that rapidly auto-digest the organ upon death." },
                { id: 'pmc_29', topicId: 'pmc', text: "Casper's Law states that one week of putrefaction in air is equivalent to:", options: ["Two weeks in water and eight weeks in soil", "Two weeks in soil and eight weeks in water", "One month in a freezer", "Three days in direct sunlight"], correct: 0, explanation: "Casper's dictum is a rule of thumb: 1 week of decomposition in air = 2 weeks in water = 8 weeks buried in earth." },
                { id: 'pmc_30', topicId: 'pmc', text: "In drowning victims, adipocere commonly forms on the:", options: ["Face and head", "Cheeks, breasts, and buttocks", "Internal organs", "Bones"], correct: 1, explanation: "Adipocere requires adipose (fat) tissue and water. Therefore, it forms predominantly in areas with high subcutaneous fat, like the cheeks and buttocks." },
                { id: 'pmc_31', topicId: 'pmc', text: "A body is found with a dark brown, leathery appearance. The skin is tight and dry. This is:", options: ["Adipocere", "Putrefaction", "Mummification", "Coagulative necrosis"], correct: 2, explanation: "Mummification creates dry, leathery, parchment-like skin." },
                { id: 'pmc_32', topicId: 'pmc', text: "Postmortem chemistry: What happens to blood glucose levels after death?", options: ["They remain stable", "They drop rapidly due to continued cellular metabolism", "They spike massively", "They convert to urea"], correct: 1, explanation: "Cells continue to consume glucose anaerobically immediately after death, causing blood glucose levels to plummet, making them useless for diagnosing antemortem hyperglycemia." },
                { id: 'pmc_33', topicId: 'pmc', text: "Dark brown livor mortis strongly suggests poisoning by:", options: ["Cyanide", "Carbon monoxide", "Chlorates/Nitrites causing methemoglobinemia", "Opiates"], correct: 2, explanation: "Substances that oxidize iron in hemoglobin form methemoglobin, which gives the blood and lividity a dark brown/chocolate color." },
                { id: 'pmc_34', topicId: 'pmc', text: "The phenomenon where a body is found in a different position than its fixed livor mortis indicates:", options: ["The body was moved after lividity became fixed", "The person died slowly", "The ambient temperature was extremely high", "A failure of rigor mortis"], correct: 0, explanation: "If lividity is fixed on the back, but the body is found face down, it proves the body was moved at least 8-12 hours after death." },
                { id: 'pmc_35', topicId: 'pmc', text: "Rigor mortis is accelerated by:", options: ["Antemortem rest and cold environments", "Fever, seizures, and strenuous exercise prior to death", "Massive blood loss", "Obesity"], correct: 1, explanation: "High body temperature and depleted ATP from exercise or seizures prior to death cause rigor to set in much faster." },
                { id: 'pmc_36', topicId: 'pmc', text: "What is 'Tissue Gas' seen on postmortem X-rays?", options: ["Oxygen trapped in the lungs", "Nitrogen bubbles from decompression sickness", "Gas produced by putrefactive bacteria spreading along tissue planes", "Air emboli"], correct: 2, explanation: "Bacterial metabolism produces gases (H2S, methane, CO2) that infiltrate tissues, visible as radiolucencies on X-rays." },
                { id: 'pmc_37', topicId: 'pmc', text: "A body decomposes much faster on the surface than buried. The primary reason is:", options: ["Reduced temperature underground", "Lack of moisture underground", "Access by scavengers and insects on the surface", "Soil acidity preserves tissue"], correct: 2, explanation: "Insects and scavengers are responsible for massive and rapid tissue destruction; burying limits their access." },
                { id: 'pmc_38', topicId: 'pmc', text: "Which stage of the blowfly life cycle is non-feeding and highly mobile, often migrating away from the corpse?", options: ["1st instar larva", "2nd instar larva", "3rd instar (post-feeding) larva", "Adult fly"], correct: 2, explanation: "After reaching maximum size, the 3rd instar larva leaves the food source to find a dry, safe place to pupate." },
                { id: 'pmc_39', topicId: 'pmc', text: "If empty blowfly pupal casings are found near a skeletal corpse, what is the MINIMUM PMI?", options: ["24 hours", "3 days", "Equivalent to the duration of the fly's entire developmental cycle (approx 10-14 days minimum)", "6 months"], correct: 2, explanation: "Empty casings mean an entire generation has hatched, so the body has been there at least as long as it takes the fly to develop from egg to adult." },
                { id: 'pmc_40', topicId: 'pmc', text: "A body is removed from a frozen river. It exhibits pink lividity. Once brought to room temperature, what will happen to the decomposition rate?", options: ["It will remain preserved indefinitely", "It will decompose at a normal rate", "It will decompose extremely rapidly due to cell membrane damage from freezing", "It will instantly mummify"], correct: 2, explanation: "Ice crystals rupture cell membranes. Once thawed, autolytic enzymes and bacteria spread rapidly, accelerating decomposition." },
                { id: 'pmc_41', topicId: 'pmc', text: "In advanced putrefaction, the brain typically turns into:", options: ["A dry powder", "A firm, rubbery mass", "A pinkish-grey liquid", "A calcified stone"], correct: 2, explanation: "Due to liquefactive necrosis and high water content, the brain rapidly liquefies into a thick, pinkish-grey fluid." },
                { id: 'pmc_42', topicId: 'pmc', text: "A 'pugilistic stance' is seen in burned bodies. Does this indicate rigor mortis?", options: ["Yes, heat accelerates rigor", "No, it is a heat-induced contraction of muscle proteins, independent of ATP", "Yes, it is a form of cadaveric spasm", "No, it indicates the victim was fighting"], correct: 1, explanation: "The stance is purely a physical reaction to heat denaturing proteins; it occurs even if the person was dead before the fire." },
                { id: 'pmc_43', topicId: 'pmc', text: "When evaluating gastric emptying, finding intact pills or tablets strongly suggests:", options: ["The pills were taken hours before death", "The pills were taken shortly before death, or gastric motility was halted", "The pills are insoluble", "The person vomited prior to death"], correct: 1, explanation: "Intact pills imply they were ingested relatively recently or that a condition (like coma/shock) halted digestive motility." },
                { id: 'pmc_44', topicId: 'pmc', text: "Which postmortem change causes the eyes to become completely flaccid?", options: ["Rigor mortis of the ocular muscles", "Loss of intraocular pressure due to fluid evaporation and lack of blood pressure", "Corneal clouding", "Tache noire"], correct: 1, explanation: "Without blood pressure, intraocular fluid drops and evaporates, leading to noticeable softening (flaccidity) of the globe." },
                { id: 'pmc_45', topicId: 'pmc', text: "The term 'gloves and socks' in the context of decomposition refers to:", options: ["A defensive wound pattern", "Skin slippage causing the epidermis of the hands and feet to peel off entirely like a glove", "Protective gear worn by pathologists", "A burn injury pattern"], correct: 1, explanation: "Extensive skin slippage allows the thick epidermis of the hands and feet to detach intact, resembling gloves or socks." },
                { id: 'pmc_46', topicId: 'pmc', text: "What happens to the pupil size after death?", options: ["They always dilate massively", "They always constrict", "They become irregular as rigor and flaccidity affect the iris unpredictably", "They react to light for 24 hours"], correct: 2, explanation: "Postmortem pupil size is unreliable; varying rigor and muscle relaxation make them irregular, rendering antemortem pupil signs obsolete." },
                { id: 'pmc_47', topicId: 'pmc', text: "Which organ is essentially a sac of bacteria and thus serves as the epicenter for putrefaction?", options: ["The heart", "The bladder", "The cecum/large intestine", "The stomach"], correct: 2, explanation: "The cecum contains massive flora that immediately invade the venous system upon death, initiating putrefaction from the lower right abdomen." },
                { id: 'pmc_48', topicId: 'pmc', text: "If an autopsy reveals Adipocere, the environment the body was kept in MUST have provided:", options: ["Extreme cold", "Dry air", "Moisture", "Sunlight"], correct: 2, explanation: "Adipocere (saponification) chemically requires water to hydrolyze fats." },
                { id: 'pmc_49', topicId: 'pmc', text: "Vitreous potassium concentration can provide a reliable PMI estimate up to roughly:", options: ["12 hours", "120 hours (approx 5 days)", "30 days", "1 year"], correct: 1, explanation: "Vitreous potassium rises predictably but becomes erratic and unreliable after approximately 4-5 days." },
                { id: 'pmc_50', topicId: 'pmc', text: "A forensic entomologist notes the presence of *Dermestidae* (hide beetles) on a corpse. This indicates:", options: ["The body is freshly dead", "The body is in the active decay/bloat stage", "The body is in an advanced state of decay, drying out, or skeletonizing", "The body was submerged in water"], correct: 2, explanation: "Dermestid beetles feed on dried skin and cartilage, arriving late in the decomposition process after the flesh-eating maggots have left." }
            ];

            // --- TOPIC 4: Asphyxia & Strangulation (50 Questions) ---
            const topic4Expanded = [
                { id: 'asphyxia_1', topicId: 'asphyxia', text: "A fractured greater horn of the hyoid bone is a classic autopsy finding for:", options: ["Suicidal hanging", "Carbon monoxide poisoning", "Manual strangulation", "Drowning"], correct: 2, explanation: "Manual strangulation (throttling) directly compresses the neck structures, frequently breaking the hyoid bone, especially in older individuals where the bone has fused." },
                { id: 'asphyxia_2', topicId: 'asphyxia', text: "What is the primary cause of death in autoerotic hanging?", options: ["Intentional suicide", "Failure of a tension release mechanism", "Myocardial infarction", "Toxic overdose"], correct: 1, explanation: "Death is accidental. The victim intentionally induces temporary cerebral hypoxia for euphoria, but the safety or release mechanism fails." },
                { id: 'asphyxia_3', topicId: 'asphyxia', text: "In suicidal hanging, the ligature mark typically:", options: ["Is horizontal below the thyroid cartilage", "Shows an inverted V-shape peaking at the knot", "Is completely absent", "Contains massive tissue bridging"], correct: 1, explanation: "The suspension point pulls the ligature upward, creating an inverted V-shape that is usually highest at the knot and often non-continuous." },
                { id: 'asphyxia_4', topicId: 'asphyxia', text: "Which cartilage fracture is most strongly associated with manual strangulation?", options: ["Cricoid and Thyroid cartilage", "Costal cartilage", "Articular cartilage", "Meniscus"], correct: 0, explanation: "The anterior part of the cricoid cartilage and the superior horns of the thyroid cartilage are commonly fractured when hands compress the neck." },
                { id: 'asphyxia_5', topicId: 'asphyxia', text: "What is the classic triad of asphyxia signs found at autopsy?", options: ["Cyanosis, Petechiae, and Venous Congestion", "Pallor, Rigor mortis, and Livor mortis", "Tardieu spots, Cherry-red blood, and Edema", "Fractured hyoid, Ligature mark, and Cyanosis"], correct: 0, explanation: "The classic triad includes cyanosis (blue discoloration from deoxygenated blood), petechial hemorrhages, and profound venous congestion." },
                { id: 'asphyxia_6', topicId: 'asphyxia', text: "What physiological mechanism creates Tardieu spots (petechiae) in mechanical asphyxia?", options: ["Arterial rupture", "Severe venous congestion increasing capillary hydrostatic pressure until venules/capillaries rupture", "Bacterial gas production", "Hypothermia"], correct: 1, explanation: "When venous return from the head is blocked but arterial pumping continues, pressure builds massively in the capillaries until they burst, forming petechiae." },
                { id: 'asphyxia_7', topicId: 'asphyxia', text: "Where are asphyxial petechiae most easily observed during an external examination?", options: ["On the soles of the feet", "In the conjunctivae, sclera, and mucosal surfaces of the eyelids/lips", "On the abdomen", "On the palms of the hands"], correct: 1, explanation: "The delicate capillaries in the eyes (conjunctivae and sclera) and facial mucosa are the first to rupture under venous hypertension." },
                { id: 'asphyxia_8', topicId: 'asphyxia', text: "In neck compression, which blood vessels require the LEAST amount of external pressure to occlude?", options: ["Carotid arteries", "Vertebral arteries", "Jugular veins", "Aorta"], correct: 2, explanation: "The jugular veins have thin walls and low pressure, requiring only ~2 kg of pressure to occlude, compared to ~5 kg for carotids and ~30 kg for vertebrals." },
                { id: 'asphyxia_9', topicId: 'asphyxia', text: "Why do victims of neck compression often lose consciousness before their airway is fully blocked?", options: ["Because the trachea is easily crushed", "Because occlusion of the carotid arteries halts oxygen delivery to the brain immediately", "Because of intense pain", "Because the lungs collapse"], correct: 1, explanation: "Carotid occlusion blocks arterial blood to the brain, causing unconsciousness in roughly 10-15 seconds, well before asphyxia from airway occlusion becomes fatal." },
                { id: 'asphyxia_10', topicId: 'asphyxia', text: "A ligature strangulation mark typically differs from a hanging mark because it is:", options: ["Vertical and V-shaped", "Horizontal, completely encircling the neck, and usually located below the thyroid cartilage", "Always accompanied by a fractured hyoid", "Only visible under UV light"], correct: 1, explanation: "In ligature strangulation, the force is applied horizontally (pulling from behind or sides), creating a continuous, horizontal band often lower on the neck." },
                { id: 'asphyxia_11', topicId: 'asphyxia', text: "Which finding is highly suggestive of manual strangulation as opposed to a ligature?", options: ["A continuous horizontal furrow", "Crescent-shaped fingernail abrasions and clustered fingertip contusions on the neck", "An inverted V-shaped mark", "Petechiae exclusively in the lower extremities"], correct: 1, explanation: "Fingernail marks and focal fingertip bruises on the neck strongly indicate throttling." },
                { id: 'asphyxia_12', topicId: 'asphyxia', text: "What is 'Smothering'?", options: ["Blockage of the internal airways by a foreign object", "Mechanical occlusion of the external airways (nose and mouth)", "Compression of the chest wall", "Strangulation with a broad ligature"], correct: 1, explanation: "Smothering occurs when an object (like a pillow or hand) covers the nose and mouth, preventing air from entering the body." },
                { id: 'asphyxia_13', topicId: 'asphyxia', text: "What defines 'Choking' in forensic pathology?", options: ["External compression of the neck", "Obstruction of the internal airway (trachea/bronchi) by a foreign body", "Covering the mouth and nose", "Inhaling toxic gases"], correct: 1, explanation: "Choking is internal blockage, such as a piece of meat lodging in the glottis or trachea ('cafe coronary')." },
                { id: 'asphyxia_14', topicId: 'asphyxia', text: "A 'Cafe Coronary' typically refers to:", options: ["A massive heart attack in a restaurant", "Accidental choking on poorly chewed food, mimicking a sudden myocardial infarction", "Poisoning by tainted coffee", "An allergic reaction to food"], correct: 1, explanation: "A person suddenly collapses and dies while eating due to a large food bolus blocking the airway, often initially mistaken for a heart attack." },
                { id: 'asphyxia_15', topicId: 'asphyxia', text: "What is 'Gagging'?", options: ["Reflux of stomach acid", "Asphyxia caused by forcing an object (like cloth) into the mouth, which becomes wet and blocks the pharynx", "A type of strangulation", "Internal swelling of the airway"], correct: 1, explanation: "A gag becomes lethal when it is pushed deep into the mouth, blocking the airway, often exacerbated by saliva and mucus making the cloth impermeable to air." },
                { id: 'asphyxia_16', topicId: 'asphyxia', text: "In a 'Complete Hanging', the victim's body is:", options: ["Partially touching the ground", "Fully suspended with no part of the body touching the ground", "Suspended by the wrists", "Found lying horizontally"], correct: 1, explanation: "Complete hanging means the entire body weight is suspended, placing maximum tension on the ligature." },
                { id: 'asphyxia_17', topicId: 'asphyxia', text: "Can a person fatally hang themselves if their feet are touching the ground (Incomplete hanging)?", options: ["No, full suspension is required", "Yes, because occlusion of the jugular veins and carotids requires very little pressure/weight", "Only if they have a heart condition", "Only if the knot is at the back of the neck"], correct: 1, explanation: "The weight of the head alone (~5 kg) is enough to occlude the jugular veins and carotid arteries, meaning one can hang while sitting or kneeling." },
                { id: 'asphyxia_18', topicId: 'asphyxia', text: "A sudden, reflex cardiac arrest caused by minor pressure on the neck (stimulating the carotid sinus) is known as:", options: ["Traumatic asphyxia", "Vagal inhibition", "Positional asphyxia", "Cerebral ischemia"], correct: 1, explanation: "Vagal inhibition occurs when pressure on the carotid sinus triggers a massive parasympathetic reflex, causing profound bradycardia or instant cardiac arrest." },
                { id: 'asphyxia_19', topicId: 'asphyxia', text: "In cases of suspected strangulation, a layer-by-layer anterior neck dissection is performed during autopsy to:", options: ["Drain blood", "Find the vagus nerve", "Detect deep muscular hemorrhages and cartilage fractures in a bloodless field", "Remove the thyroid gland"], correct: 2, explanation: "A careful, bloodless dissection of the neck muscles allows the pathologist to identify subtle hemorrhages and fractures caused by compression." },
                { id: 'asphyxia_20', topicId: 'asphyxia', text: "Which bone fusion process makes older adults more susceptible to hyoid fractures during neck compression?", options: ["Fusion of the sternum", "Fusion of the greater horns to the body of the hyoid", "Fusion of the cervical vertebrae", "Fusion of the mandible"], correct: 1, explanation: "In youth, the greater horns are joined to the hyoid body by cartilage (making them flexible). As people age, this ossifies/fuses, making the bone rigid and prone to fracture." },
                { id: 'asphyxia_21', topicId: 'asphyxia', text: "A heavy beam falls on a victim's chest, preventing them from expanding their lungs. This is an example of:", options: ["Positional asphyxia", "Traumatic (Crush) asphyxia", "Smothering", "Choking"], correct: 1, explanation: "Traumatic asphyxia occurs when heavy weight externally compresses the chest/abdomen, physically preventing respiratory movements." },
                { id: 'asphyxia_22', topicId: 'asphyxia', text: "The classic 'masque ecchymotique' (a deeply cyanotic, purple face with massive petechiae) is pathognomonic for:", options: ["Hanging", "Carbon monoxide poisoning", "Traumatic (Crush) asphyxia", "Drowning"], correct: 2, explanation: "Crushing the chest forces blood backwards from the right heart into the valveless veins of the head and neck, creating extreme congestion and massive petechiae." },
                { id: 'asphyxia_23', topicId: 'asphyxia', text: "A severely intoxicated person falls into a narrow gap, trapping their head against their chest in a hyperflexed position, and dies. This is termed:", options: ["Traumatic asphyxia", "Positional asphyxia", "Manual strangulation", "Gagging"], correct: 1, explanation: "Positional asphyxia occurs when a person's body position prevents adequate breathing, and they are unable to extricate themselves (often due to intoxication or restraint)." },
                { id: 'asphyxia_24', topicId: 'asphyxia', text: "What role does the 'knot' play in evaluating a hanging?", options: ["It indicates the type of rope used", "The location of the knot typically determines the highest point of the inverted-V ligature mark", "It always fractures the cervical spine", "It proves whether the death was a homicide"], correct: 1, explanation: "The pull of gravity draws the rope tight against the lowest part of the neck, peaking upward at the knot." },
                { id: 'asphyxia_25', topicId: 'asphyxia', text: "Finding an intact, unfractured hyoid bone in a 20-year-old victim of manual strangulation is:", options: ["Impossible; it always fractures", "Common, because the bone is still flexible and cartilaginous at that age", "Proof that they were not strangled", "An indication of postmortem artifact"], correct: 1, explanation: "Young victims often have cartilaginous joints in the hyoid and thyroid, allowing them to bend without breaking even under lethal pressure." },
                { id: 'asphyxia_26', topicId: 'asphyxia', text: "Why are petechiae typically ABSENT in a complete hanging?", options: ["Because the rope breaks the capillaries", "Because complete suspension fully occludes both the arteries and the veins simultaneously, preventing blood from entering the head to build up venous pressure", "Because hanging causes instant heart failure", "Because gravity drains the blood instantly"], correct: 1, explanation: "If the carotids and vertebrals are completely pinched off, no arterial blood enters the head. Without arterial flow, there is no pressure build-up to cause petechiae." },
                { id: 'asphyxia_27', topicId: 'asphyxia', text: "A 'judicial hanging' (drop hanging) aims to cause death by:", options: ["Slow asphyxiation", "Vagal inhibition", "Fracture-dislocation of the upper cervical spine (C2-C3) resulting in spinal cord transection", "Crushing the trachea"], correct: 2, explanation: "The long drop is calculated to violently hyperextend and distract the neck, severing the spinal cord (Hangman's fracture) for rapid death." },
                { id: 'asphyxia_28', topicId: 'asphyxia', text: "Which toxic gas is considered a 'chemical asphyxiant' because it binds to cytochrome c oxidase, halting cellular respiration?", options: ["Carbon dioxide", "Carbon monoxide", "Hydrogen cyanide", "Methane"], correct: 2, explanation: "Cyanide halts aerobic metabolism at the cellular level by blocking the electron transport chain." },
                { id: 'asphyxia_29', topicId: 'asphyxia', text: "Which chemical asphyxiant has an affinity for hemoglobin roughly 200-250 times greater than oxygen?", options: ["Carbon dioxide", "Hydrogen sulfide", "Carbon monoxide", "Nitrogen"], correct: 2, explanation: "CO binds fiercely to hemoglobin, displacing oxygen and causing tissue hypoxia, leading to cherry-red lividity." },
                { id: 'asphyxia_30', topicId: 'asphyxia', text: "In a suspected drowning, the presence of a massive, stable 'mushroom of froth' at the mouth and nose is due to:", options: ["Bacterial decomposition", "Water mixing with lung surfactant and mucus during agonal breathing", "Stomach acid reacting with water", "A chemical reaction with salt"], correct: 1, explanation: "As the victim struggles to breathe, water mixes with air and surfactant in the alveoli, whipping into a persistent, fine foam." },
                { id: 'asphyxia_31', topicId: 'asphyxia', text: "What is the 'Diatom Test' used for in forensic pathology?", options: ["Detecting carbon monoxide", "Identifying microscopic algae in the bone marrow to confirm drowning", "Testing for hyoid fractures", "Measuring blood alcohol"], correct: 1, explanation: "Diatoms inhaled in drowning water can cross the alveolar membrane into the blood and lodge in closed organs like bone marrow, proving the victim was breathing while in the water." },
                { id: 'asphyxia_32', topicId: 'asphyxia', text: "A body recovered from water has severely wrinkled, pale skin on the hands and feet. This is called:", options: ["Skin slippage", "Washerwoman's hands (maceration)", "Adipocere", "Tardieu spots"], correct: 1, explanation: "Prolonged immersion in water causes the keratin layer to absorb water and wrinkle, but it does not prove the cause of death was drowning." },
                { id: 'asphyxia_33', topicId: 'asphyxia', text: "In manual strangulation, pinpoint hemorrhages in the muscles of the neck are caused by:", options: ["Bacterial action", "Direct mechanical crushing of the muscle fibers and capillaries", "Livor mortis", "High blood pressure"], correct: 1, explanation: "Fingertip pressure directly crushes and tears the small vessels within the strap muscles of the neck." },
                { id: 'asphyxia_34', topicId: 'asphyxia', text: "A victim found with a plastic bag tied securely over their head has died from:", options: ["Positional asphyxia", "Smothering", "Choking", "Strangulation"], correct: 1, explanation: "The bag acts as an external barrier, depleting oxygen and building up CO2, fitting the definition of smothering." },
                { id: 'asphyxia_35', topicId: 'asphyxia', text: "Which finding might falsely mimic a ligature mark on an infant or an obese individual?", options: ["Sunburn", "Natural skin folds (creases) that accumulate dirt or moisture", "Birthmarks", "Tattoos"], correct: 1, explanation: "Deep skin folds in infants or obese people can appear red, pale, or abraded, easily mimicking a horizontal ligature mark." },
                { id: 'asphyxia_36', topicId: 'asphyxia', text: "Burking is a historical method of murder that combines:", options: ["Poisoning and drowning", "Smothering and traumatic (chest compression) asphyxia", "Hanging and stabbing", "Choking and gagging"], correct: 1, explanation: "Named after Burke and Hare, it involves sitting on the victim's chest while covering their nose and mouth, leaving minimal external signs of trauma." },
                { id: 'asphyxia_37', topicId: 'asphyxia', text: "During a hanging, the airway (trachea) is usually pushed:", options: ["Upward and backward", "Downward and forward", "Laterally", "It is unaffected"], correct: 0, explanation: "The ligature pulls the base of the tongue and the larynx upward and backward, sealing the pharynx." },
                { id: 'asphyxia_38', topicId: 'asphyxia', text: "Can petechiae be found in a natural death?", options: ["No, they only occur in asphyxia", "Yes, they can result from violent coughing, CPR, or acute heart failure", "Only if the person was elderly", "Yes, but only on the extremities"], correct: 1, explanation: "Petechiae are a sign of increased venous pressure and capillary fragility, which can occur during vigorous resuscitation efforts or severe coughing." },
                { id: 'asphyxia_39', topicId: 'asphyxia', text: "In a true suicidal hanging, what is the usual appearance of the victim's face?", options: ["Deeply cyanotic and engorged", "Pale, due to immediate arterial occlusion", "Covered in massive hematomas", "Bright cherry red"], correct: 1, explanation: "Because the carotids are often occluded immediately, blood cannot enter the head, leaving the face pale rather than congested, though this depends heavily on the knot position." },
                { id: 'asphyxia_40', topicId: 'asphyxia', text: "A victim of strangulation survives but exhibits hoarseness and difficulty swallowing (dysphagia). What is the likely cause?", options: ["Brain damage", "Laryngeal trauma (edema or cartilage fracture)", "Spinal cord injury", "Severed jugular vein"], correct: 1, explanation: "Direct trauma to the larynx and vocal cords causes swelling and dysfunction, leading to a hoarse voice and painful swallowing." },
                { id: 'asphyxia_41', topicId: 'asphyxia', text: "Which type of mechanical asphyxia involves external compression of the neck by an object (like a rope) without the body being suspended?", options: ["Hanging", "Ligature strangulation", "Manual strangulation", "Smothering"], correct: 1, explanation: "Ligature strangulation relies on a tightening mechanism (pulling or twisting) rather than the body's weight (suspension)." },
                { id: 'asphyxia_42', topicId: 'asphyxia', text: "What is 'environmental asphyxia'?", options: ["Being buried under soil", "Entering an enclosed space where oxygen has been displaced by another gas (e.g., a silo or sewer)", "Drowning in a swimming pool", "Choking on an environmental allergen"], correct: 1, explanation: "Oxygen deprivation due to an oxygen-poor atmosphere (displaced by CO2, methane, or nitrogen) is environmental asphyxia." },
                { id: 'asphyxia_43', topicId: 'asphyxia', text: "A broad, soft ligature (like a towel) used in strangulation will typically leave:", options: ["A deep, narrow, bloody furrow", "A faint, wide area of pale or slightly bruised skin", "Massive lacerations", "No internal injuries"], correct: 1, explanation: "Soft, wide ligatures distribute the pressure, causing minimal external skin abrasion or furrowing compared to a thin wire or rope." },
                { id: 'asphyxia_44', topicId: 'asphyxia', text: "In a suspected autoerotic death, the presence of padding (like a towel) between the ligature and the neck indicates:", options: ["A suicide attempt", "An intent to prevent visible marks and injury, supporting an accidental manner", "A homicide cover-up", "A heavier ligature was unavailable"], correct: 1, explanation: "Padding indicates the victim did not want to leave permanent marks, a classic hallmark of autoerotic practice rather than suicide." },
                { id: 'asphyxia_45', topicId: 'asphyxia', text: "Which internal finding is common in deaths caused by smothering with a soft pillow?", options: ["Fractured hyoid bone", "Deep ligature marks", "Minimal to no specific internal findings", "Massive tracheal crushing"], correct: 2, explanation: "Smothering with a soft object leaves very little physical evidence, making it one of the most difficult homicides to prove without a confession or scene evidence." },
                { id: 'asphyxia_46', topicId: 'asphyxia', text: "The term 'Anoxia' literally means:", options: ["Low oxygen", "Total lack of oxygen", "High carbon dioxide", "Low blood pressure"], correct: 1, explanation: "Anoxia is the complete absence of oxygen, whereas hypoxia is a decrease in oxygen." },
                { id: 'asphyxia_47', topicId: 'asphyxia', text: "A victim is found dead, hanging by a belt. The family suspects homicide. Which finding strongly supports suicide over homicide?", options: ["Presence of petechiae", "The victim's feet are touching the ground", "The door was locked from the inside and the room was undisturbed", "The hyoid bone is intact"], correct: 2, explanation: "While medical findings overlap, a secured environment (locked from the inside) with no signs of a struggle heavily points to suicide." },
                { id: 'asphyxia_48', topicId: 'asphyxia', text: "Hemorrhage into the sterno-cleido-mastoid muscle is an indicator of:", options: ["Natural disease", "Vigorous neck compression/trauma", "Autolysis", "Heart attack"], correct: 1, explanation: "Bleeding into the major neck muscles confirms blunt force trauma or violent compression during life." },
                { id: 'asphyxia_49', topicId: 'asphyxia', text: "What is 'Dry Drowning'?", options: ["Drowning in sand", "Laryngeal spasm preventing water from entering the lungs, causing asphyxia without water aspiration", "Drowning in high-salt water", "Drowning in a chemical vat"], correct: 1, explanation: "In a minority of cases, sudden cold water hits the larynx, causing severe, unbreakable laryngospasm. The victim asphyxiates without actually inhaling water into the alveoli." },
                { id: 'asphyxia_50', topicId: 'asphyxia', text: "A 'garrote' is a specific instrument used for:", options: ["Manual strangulation", "Ligature strangulation, often using a stick to twist and tighten the cord", "Judicial hanging", "Smothering"], correct: 1, explanation: "A garrote involves a ligature tightened by a lever or twisting mechanism, applying immense horizontal force." }
            ];

            // --- TOPIC 5: Abortion, Infanticide & Forensic Obstetrics (50 Questions) ---
            const topic5Expanded = [
                { id: 'obgyn_1', topicId: 'obgyn', text: "Severe maceration of a fetus indicates:", options: ["Live birth followed by immediate death", "Death in utero for an extended period", "Death caused by blunt trauma during delivery", "Congenital heart defect"], correct: 1, explanation: "Maceration is an aseptic autolytic process occurring when the fetus dies and remains in the sterile amniotic fluid for at least 24-48 hours." },
                { id: 'obgyn_2', topicId: 'obgyn', text: "What is a major pitfall (cause of false positive) in the hydrostatic test for infant lungs?", options: ["Maceration", "Putrefaction (decomposition gas)", "Atelectasis", "Meconium aspiration"], correct: 1, explanation: "Gas from bacterial decomposition can cause the lungs to float even if the infant never breathed. This requires histological confirmation." },
                { id: 'obgyn_3', topicId: 'obgyn', text: "Which finding is an absolute, definitive indicator of live birth?", options: ["Lungs sinking in water", "Macerated skin", "Presence of milk/food in the stomach", "Closed fontanelles"], correct: 2, explanation: "Milk or food in the stomach proves the infant survived long enough outside the womb to be fed." },
                { id: 'obgyn_4', topicId: 'obgyn', text: "Microscopic examination of a live-born infant's lungs will show:", options: ["Collapsed alveoli with thick septa", "Distended, expanded alveoli with thin septa", "Complete fibrosis", "Extensive coagulative necrosis"], correct: 1, explanation: "Aeration from breathing stretches the alveolar walls, causing them to become thin and the spaces to appear distended." },
                { id: 'obgyn_5', topicId: 'obgyn', text: "Grade 3 maceration features include:", options: ["Pink healthy skin", "Total brown/red discoloration and extensive skin peeling", "Distended alveoli", "Adipocere formation"], correct: 1, explanation: "As autolysis progresses over several days, hemolysis causes tissues to turn brown/red, and the epidermis separates extensively." },
                { id: 'obgyn_6', topicId: 'obgyn', text: "In forensic radiology, what is 'Spalding's sign'?", options: ["Air in the fetal heart", "Overlapping of the fetal skull bones due to brain liquefaction", "A halo of edema around the fetal head", "Fracture of the fetal femur"], correct: 1, explanation: "Spalding's sign is seen on X-ray when a fetus has been dead in utero for several days; the brain shrinks/liquefies, causing the cranial vault bones to collapse and overlap." },
                { id: 'obgyn_7', topicId: 'obgyn', text: "What is 'Robert's sign' in the context of intrauterine fetal death?", options: ["Overlapping cranial bones", "Gas accumulation in the fetal great vessels and heart", "Mummification of the fetus", "A calcified fetus (lithopedion)"], correct: 1, explanation: "Robert's sign is the radiological appearance of gas in the fetal cardiovascular system, an early sign of fetal demise." },
                { id: 'obgyn_8', topicId: 'obgyn', text: "The term 'Neonaticide' specifically refers to the killing of an infant within what timeframe?", options: ["Before birth", "Within the first 24 hours of life", "Within the first month", "Within the first year"], correct: 1, explanation: "Neonaticide is the homicide of an infant strictly within the first 24 hours after birth, often committed by the mother." },
                { id: 'obgyn_9', topicId: 'obgyn', text: "In conducting the hydrostatic (lung float) test, if the lungs float, what must be done next to rule out putrefaction?", options: ["Discard the lungs", "Squeeze the lung tissue firmly underwater and see if the bubbles emerge and if the squeezed tissue still floats", "Boil the lungs", "Weigh the lungs"], correct: 1, explanation: "Squeezing forces out putrefactive gases. If it was true aeration (breathing), tiny residual air bubbles in the alveoli will still cause the squeezed fragments to float." },
                { id: 'obgyn_10', topicId: 'obgyn', text: "A false negative in the hydrostatic test (lungs sink even though the infant breathed) can be caused by:", options: ["Putrefaction", "Artificial respiration", "Alveolar collapse (atelectasis) or severe pneumonia", "Freezing"], correct: 2, explanation: "If the infant breathed but later developed massive fluid in the lungs (pneumonia) or the alveoli collapsed (secondary atelectasis), the lungs may sink." },
                { id: 'obgyn_11', topicId: 'obgyn', text: "What is Breslau's test (Stomach-bowel test)?", options: ["Testing the stomach fluid for poison", "Testing if the stomach and intestines float in water, indicating swallowed air", "Testing the meconium for drugs", "Testing the umbilical cord for blood type"], correct: 1, explanation: "A live-born infant swallows air shortly after birth. Finding air in the stomach and intestines (causing them to float) supports live birth." },
                { id: 'obgyn_12', topicId: 'obgyn', text: "Wredin's test checks for the presence of what in the middle ear to confirm live birth?", options: ["Blood", "Amniotic fluid", "Air replacing the gelatinous embryonic connective tissue", "Meconium"], correct: 2, explanation: "During breathing and swallowing, air enters the Eustachian tube and replaces the embryonic tissue in the middle ear." },
                { id: 'obgyn_13', topicId: 'obgyn', text: "To estimate fetal age, the appearance of the ossification center at the lower end of the femur typically occurs at:", options: ["5 months gestation", "7 months gestation", "9 months gestation (term)", "2 months post-partum"], correct: 2, explanation: "The lower femoral epiphysis ossification center typically appears around 36-40 weeks, indicating a full-term fetus." },
                { id: 'obgyn_14', topicId: 'obgyn', text: "Which ossification center typically appears right at or just after birth?", options: ["Lower end of femur", "Upper end of tibia", "Calcaneus", "Talus"], correct: 1, explanation: "The upper tibial epiphysis usually begins to ossify at 40 weeks or shortly after birth." },
                { id: 'obgyn_15', topicId: 'obgyn', text: "The pupillary membrane in a fetus usually disappears by:", options: ["3rd month of gestation", "7th to 8th month of gestation", "1 week after birth", "6 months of age"], correct: 1, explanation: "The disappearance of the pupillary membrane is a marker of fetal maturity, usually resolving by the 7th or 8th month." },
                { id: 'obgyn_16', topicId: 'obgyn', text: "What is 'Lithopedion'?", options: ["A fetus born with severe bone deformities", "A retained, calcified dead fetus (stone baby)", "A method of abortion", "A specialized forceps instrument"], correct: 1, explanation: "If a dead fetus is retained in the abdominal cavity (usually from an ectopic pregnancy), it can become calcified to protect the mother from necrotic tissue." },
                { id: 'obgyn_17', topicId: 'obgyn', text: "A hallmark of criminal abortion via syringe injection of fluids (like soap solutions) into the uterus is maternal death caused by:", options: ["Cervical cancer", "Air embolism or systemic sepsis", "Ectopic rupture", "Lithopedion formation"], correct: 1, explanation: "Forcing fluid into the uterus can strip the placenta, allowing the injected air or toxic fluids to enter the gaping maternal venous sinuses." },
                { id: 'obgyn_18', topicId: 'obgyn', text: "During an autopsy of a suspected criminal abortion victim, how should the pathologist check for air embolism?", options: ["X-ray the limbs", "Open the skull first", "Open the chest, fill the pericardial sac with water, and puncture the right ventricle underwater", "Check the lungs for water"], correct: 2, explanation: "Puncturing the right heart underwater will reveal bubbling if a massive venous air embolism was the cause of death." },
                { id: 'obgyn_19', topicId: 'obgyn', text: "In cases of infanticide, the most common method used by the perpetrator is:", options: ["Poisoning", "Firearms", "Smothering or strangulation", "Electrocution"], correct: 2, explanation: "Because infants are helpless and easily overpowered, asphyxia (smothering or strangulation) is the overwhelmingly most common method." },
                { id: 'obgyn_20', topicId: 'obgyn', text: "If an infant's lungs show 'mosaic' or 'marbled' appearance with interspersed expanded and collapsed lobules, this indicates:", options: ["Complete stillbirth", "Partial aeration (the infant breathed weakly or briefly)", "Advanced putrefaction", "Maceration"], correct: 1, explanation: "Partial aeration creates a mottled appearance where pink, expanded lobules contrast with dark, collapsed (unexpanded) lobules." },
                { id: 'obgyn_21', topicId: 'obgyn', text: "Which finding strongly suggests a precipitous (sudden and unassisted) delivery rather than intentional infanticide?", options: ["A cleanly cut umbilical cord", "A torn, untied umbilical cord with irregular ends", "Ligature marks on the infant's neck", "Pillow fibers in the infant's airway"], correct: 1, explanation: "In a sudden, accidental delivery (e.g., dropping the baby while standing), the cord often tears naturally, leaving ragged edges, unlike a cut and tied cord." },
                { id: 'obgyn_22', topicId: 'obgyn', text: "At what time post-partum does the umbilical cord stump typically dry, wither, and slough off completely?", options: ["24 hours", "2-3 days", "5-8 days", "1 month"], correct: 2, explanation: "The cord begins drying immediately, forms a red ring of demarcation around 36 hours, and sloughs off around day 5 to 8." },
                { id: 'obgyn_23', topicId: 'obgyn', text: "The presence of meconium completely cleared from the large intestine indicates the infant lived for at least:", options: ["1 hour", "12 hours", "2-3 days", "2 weeks"], correct: 2, explanation: "Meconium is typically expelled completely within the first 2 to 3 days of life." },
                { id: 'obgyn_24', topicId: 'obgyn', text: "Fetal hemoglobin (HbF) makes up what percentage of total hemoglobin at birth?", options: ["10-20%", "40-50%", "70-80%", "100%"], correct: 2, explanation: "At term birth, HbF is roughly 70-80%, gradually being replaced by adult hemoglobin (HbA) over the first 6 months of life." },
                { id: 'obgyn_25', topicId: 'obgyn', text: "A female dies suddenly during labor. Autopsy reveals fetal squamous cells, mucin, and lanugo hair in the maternal pulmonary microvasculature. Diagnosis?", options: ["Pulmonary thromboembolism", "Amniotic fluid embolism", "Air embolism", "Septic shock"], correct: 1, explanation: "Amniotic fluid forced into the maternal uterine veins travels to the lungs, where the fetal debris physically blocks capillaries and triggers massive anaphylactic/coagulation cascades." },
                { id: 'obgyn_26', topicId: 'obgyn', text: "Maceration does NOT occur if the fetus dies:", options: ["In the first trimester", "In a sterile amniotic sac", "And the amniotic fluid has drained away (dry retention)", "After 24 hours"], correct: 2, explanation: "Maceration requires the body to be suspended in fluid. If the sac ruptures and drains, the fetus will mummify instead of macerating." },
                { id: 'obgyn_27', topicId: 'obgyn', text: "A newborn is found dead with a pale, exsanguinated appearance and an untied, cleanly cut umbilical cord. The likely cause of death is:", options: ["Smothering", "Hemorrhage from the untied umbilical cord", "Hypothermia", "Congenital heart disease"], correct: 1, explanation: "If a cleanly cut cord is not clamped or tied, the infant can rapidly bleed to death (hemorrhage neonatorum)." },
                { id: 'obgyn_28', topicId: 'obgyn', text: "What is 'Vernix Caseosa'?", options: ["A congenital skin defect", "A greasy, cheese-like white substance coating the skin of a newborn", "The first stool of the infant", "A sign of maceration"], correct: 1, explanation: "Vernix protects the fetal skin in utero and is present at birth. Its presence on a discarded body indicates the baby was not washed post-delivery." },
                { id: 'obgyn_29', topicId: 'obgyn', text: "Caput succedaneum refers to:", options: ["Bleeding beneath the periosteum of the skull", "Edema of the fetal scalp crossing the suture lines, caused by pressure during vaginal delivery", "A skull fracture", "Liquefaction of the fetal brain"], correct: 1, explanation: "It is a normal physiological swelling of the scalp during delivery. Unlike a cephalohematoma, it crosses cranial suture lines." },
                { id: 'obgyn_30', topicId: 'obgyn', text: "Which sign in a deceased woman indicates she delivered a child within the past 1-2 weeks?", options: ["A completely involuted, small uterus", "A large, flabby uterus with a ragged placental site and lochia in the cavity", "Presence of an intact hymen", "A lithopedion"], correct: 1, explanation: "The uterus takes up to 6 weeks to fully involute. A large, boggy uterus with lochia (postpartum bleeding) strongly points to recent delivery." },
                { id: 'obgyn_31', topicId: 'obgyn', text: "In Thai law, 'Abortion' becomes a medicolegal investigation under CPC 148 if:", options: ["It is performed by a licensed physician in a hospital", "It results in maternal death or severe injury from a criminal/illegal procedure", "The mother consents", "It occurs in the first trimester"], correct: 1, explanation: "Maternal death from an illegal abortion is an unnatural death (homicide/accident depending on intent) requiring full investigation." },
                { id: 'obgyn_32', topicId: 'obgyn', text: "If an infant is born alive but abandoned in a trash can and dies from exposure, the manner of death is:", options: ["Natural", "Accident", "Homicide", "Undetermined"], correct: 2, explanation: "Intentional abandonment of a helpless infant leading to their death is homicide by omission." },
                { id: 'obgyn_33', topicId: 'obgyn', text: "A forensic pathologist notes 'tentorial tearing' in a newborn's brain. This suggests:", options: ["Congenital anomaly", "Excessive molding and compression of the head during a difficult or forced delivery", "Smothering", "Intrauterine death"], correct: 1, explanation: "Tears in the tentorium cerebelli or falx cerebri occur from severe mechanical distortion of the skull during prolonged or instrumental delivery." },
                { id: 'obgyn_34', topicId: 'obgyn', text: "What is the medico-legal importance of the ductus arteriosus?", options: ["It proves the mother was poisoned", "It normally closes functionally within hours to days after live birth and breathing begins", "It is absent in stillborns", "It indicates the blood type"], correct: 1, explanation: "A patent (open) ductus is normal in a fetus. Functional closure shortly after birth supports the infant was born alive and breathed." },
                { id: 'obgyn_35', topicId: 'obgyn', text: "The presence of a corpus luteum of pregnancy in the ovary of a deceased female indicates:", options: ["She had never been pregnant", "She was currently pregnant or had very recently delivered/aborted", "She was post-menopausal", "She died of ovarian cancer"], correct: 1, explanation: "The corpus luteum maintains the early pregnancy and persists until near term. Its robust presence is proof of recent or current pregnancy." },
                { id: 'obgyn_36', topicId: 'obgyn', text: "When evaluating a case of suspected infanticide, 'Viability' refers to:", options: ["The infant's gender", "The capability of the fetus to survive independently outside the mother's womb", "The legal right to an abortion", "The mother's mental state"], correct: 1, explanation: "Viability is crucial; a fetus born too prematurely to survive (e.g., 18 weeks) cannot legally be a victim of infanticide because it was not viable." },
                { id: 'obgyn_37', topicId: 'obgyn', text: "Vaginal swabs taken from a deceased female suspected of dying from a criminal abortion might be tested for:", options: ["Only DNA", "Chemical abortifacients, soap products, or plant-derived pastes (e.g., apiol)", "Gastric acid", "Amniotic fluid only"], correct: 1, explanation: "Illegal abortions often utilize caustic chemicals, soaps, or toxic plant pastes introduced into the vagina/cervix." },
                { id: 'obgyn_38', topicId: 'obgyn', text: "A characteristic autopsy finding in a woman who died of Clostridium perfringens sepsis following a septic abortion is:", options: ["A perfectly healthy uterus", "A 'physometra' (gas-filled, severely necrotic, crepitant uterus)", "Lithopedion", "Amniotic fluid embolism"], correct: 1, explanation: "Clostridium produces massive amounts of gas, causing the infected uterus to become spongy, necrotic, and filled with foul gas (physometra)." },
                { id: 'obgyn_39', topicId: 'obgyn', text: "To determine if an infant was born alive, which finding in the gastrointestinal tract is MOST conclusive?", options: ["An empty stomach", "Meconium in the large intestine", "Presence of normal bacterial flora and food residue in the colon", "Bile in the gallbladder"], correct: 2, explanation: "Bacteria colonize the gut, and food passes through only after birth. A sterile gut with only meconium is typical of a stillborn or immediate death." },
                { id: 'obgyn_40', topicId: 'obgyn', text: "Which condition can mimic the bruising of child abuse in an infant, causing false accusations?", options: ["SIDS", "Mongolian spots (Congenital dermal melanocytosis)", "Vernix caseosa", "Maceration"], correct: 1, explanation: "Mongolian spots are harmless, flat, blue-grey birthmarks common on the lower back/buttocks of infants of Asian or African descent, often mistaken for bruises." },
                { id: 'obgyn_41', topicId: 'obgyn', text: "In cases of Sudden Infant Death Syndrome (SIDS), the autopsy findings are typically:", options: ["Massive head trauma", "Severe pneumonia", "Negative or showing only minor, non-lethal findings (e.g., mild intrathoracic petechiae)", "A fractured hyoid"], correct: 2, explanation: "SIDS is a diagnosis of exclusion. By definition, the autopsy, scene investigation, and history must fail to find a definitive cause of death." },
                { id: 'obgyn_42', topicId: 'obgyn', text: "Munchausen syndrome by proxy (Factitious disorder imposed on another) often presents to the forensic pathologist as:", options: ["A child with a single, massive accidental injury", "A child with a long medical history of unexplained, recurring illnesses, apneas, or infections caused by the caregiver", "A stillborn infant", "A case of maternal death"], correct: 1, explanation: "The caregiver (usually the mother) intentionally fabricates or induces illness in the child to gain medical attention and sympathy." },
                { id: 'obgyn_43', topicId: 'obgyn', text: "If a mother kills her infant while suffering from severe postpartum psychosis, many legal systems:", options: ["Treat it as an accident", "Have specific 'infanticide acts' that reduce the charge from murder to manslaughter due to diminished responsibility", "Ignore the mental state", "Classify it as a natural death"], correct: 1, explanation: "Many jurisdictions recognize the profound impact of lactation and childbirth on mental health, reducing the culpability via specific infanticide laws." },
                { id: 'obgyn_44', topicId: 'obgyn', text: "A cephalhematoma in a newborn is:", options: ["Edema crossing the suture lines", "A collection of blood beneath the periosteum of a skull bone, strictly bounded by the suture lines", "A fatal brain hemorrhage", "Always a sign of abuse"], correct: 1, explanation: "Unlike caput succedaneum, a cephalhematoma involves subperiosteal bleeding, so it cannot cross the connective tissue of the skull sutures. It is usually a normal birth trauma." },
                { id: 'obgyn_45', topicId: 'obgyn', text: "Which drug, historically used to induce labor or abortion, can cause massive uterine tetany and rupture if overdosed?", options: ["Paracetamol", "Ergot alkaloids / Oxytocin", "Aspirin", "Penicillin"], correct: 1, explanation: "Ergot derivatives and oxytocin strongly stimulate uterine smooth muscle. Overdose causes relentless contractions leading to fetal hypoxia or uterine rupture." },
                { id: 'obgyn_46', topicId: 'obgyn', text: "In a discarded infant, finding the lungs completely collapsed, dark red, and fleshy (liver-like consistency) indicates:", options: ["The infant took a few breaths", "The infant died in utero or before taking a single breath", "The infant died of pneumonia after 3 weeks", "The infant was smothered after crying"], correct: 1, explanation: "Fetal, unaerated lungs are completely solid, airless, and have the consistency of liver (hepatization). They will sink in water." },
                { id: 'obgyn_47', topicId: 'obgyn', text: "A forensic dentist (odontologist) can determine if an infant survived past birth by examining the teeth for:", options: ["Cavities", "The Neonatal Line in the enamel", "Root canals", "Wisdom teeth"], correct: 1, explanation: "The stress of birth disrupts enamel formation, leaving a distinct microscopic 'neonatal line'. Its presence proves the child survived the birth process for at least several days." },
                { id: 'obgyn_48', topicId: 'obgyn', text: "In suspected neonaticide by drowning (e.g., in a toilet), the presence of what in the infant's lungs/stomach strongly supports live birth and drowning?", options: ["Amniotic fluid", "Toilet water/debris (e.g., feces, paper fibers)", "Meconium", "Blood"], correct: 1, explanation: "Aspirating or swallowing the specific water from the receptacle proves the infant was alive and breathing when submerged." },
                { id: 'obgyn_49', topicId: 'obgyn', text: "What is the significance of the 'foothold' or 'frog-leg' position in a deceased, retained fetus?", options: ["It proves the fetus was walking", "Loss of fetal muscle tone after death causes the legs to fall outward, visible on ultrasound or X-ray", "It indicates an breech presentation", "It is a sign of live birth"], correct: 1, explanation: "Loss of the normal tightly flexed fetal posture is an indicator of fetal demise and loss of muscle tone in utero." },
                { id: 'obgyn_50', topicId: 'obgyn', text: "When examining the placenta in a case of intrauterine death, finding thick, pale, avascular villi might suggest:", options: ["Normal full-term placenta", "Syphilis or severe placental insufficiency causing fetal death", "A precipitous delivery", "Multiple gestation"], correct: 1, explanation: "Placental pathology (like syphilitic infection or massive infarction) is a leading natural cause of intrauterine fetal demise." }
            ];

            // --- TOPIC 6: Sexual Assault, Identification & Toxicology (50 Questions) ---
            const topic6Expanded = [
                { id: 'sex_tox_1', topicId: 'sex_assault', text: "When collecting biological swabs for a sexual assault kit, a crucial step is to:", options: ["Store them immediately in closed wet tubes", "Air-dry slide smears and swabs before packaging", "Add formalin preservative to the swabs", "Freeze them immediately in liquid nitrogen"], correct: 1, explanation: "Swabs must be air-dried to prevent bacterial and fungal growth, which rapidly degrades DNA in moist environments." },
                { id: 'sex_tox_2', topicId: 'id_tox', text: "In Disaster Victim Identification (DVI), Ante-mortem data is recorded on which color form?", options: ["Pink", "Yellow", "Blue", "White"], correct: 1, explanation: "Interpol standardizes DVI forms globally: Yellow forms for Ante-mortem (missing person) data, and Pink forms for Post-mortem (body recovery) data." },
                { id: 'sex_tox_3', topicId: 'id_tox', text: "Paracelsus's theory, the foundational principle of toxicology, states:", options: ["All synthetic chemicals are toxic", "The dosage makes it either a poison or a remedy", "Natural toxins are harmless", "Only heavy metals cause death"], correct: 1, explanation: "Paracelsus stated: 'All things are poison and nothing is without poison; only the dose makes a thing not a poison.'" },
                { id: 'sex_tox_4', topicId: 'id_tox', text: "For toxicological analysis of chronic drug use or heavy metal exposure, where should head hair samples be cut?", options: ["The nape of the neck", "The vertex (crown)", "The temporal region", "The eyebrows"], correct: 1, explanation: "150-200 hairs should be cut close to the scalp from the vertex, as this area has the most consistent growth rate (approx. 1 cm/month)." },
                { id: 'sex_tox_5', topicId: 'id_tox', text: "Gastric content sampling for postmortem toxicology requires:", options: ["1000ml with preservative", "30-50ml with NO preservative", "Only solid food remnants", "Immediate neutralization with a base"], correct: 1, explanation: "Gastric contents should be collected without preservatives to avoid contaminating the sample or altering the chemical makeup of ingested toxins." },
                { id: 'sex_tox_6', topicId: 'sex_assault', text: "Which test is considered a 'presumptive' test for semen?", options: ["PSA (Prostate-Specific Antigen) / p30", "Acid Phosphatase (AP) test", "Microscopic identification of spermatozoa", "DNA profiling"], correct: 1, explanation: "Acid Phosphatase is found in high levels in semen but is presumptive because it is also present (in lower amounts) in vaginal secretions and some fungi/plants." },
                { id: 'sex_tox_7', topicId: 'sex_assault', text: "Which finding provides 'confirmatory' evidence of seminal fluid, even if the assailant had a vasectomy?", options: ["Acid Phosphatase", "Toluidine blue", "PSA (p30) or Semenogelin", "Amylase"], correct: 2, explanation: "PSA (p30) and Semenogelin are proteins produced by the prostate and seminal vesicles. They will be present in the ejaculate of a vasectomized male, who will lack spermatozoa." },
                { id: 'sex_tox_8', topicId: 'sex_assault', text: "What is the purpose of using Toluidine Blue dye during a clinical forensic examination for sexual assault?", options: ["To detect semen fluorescence", "To highlight microtrauma and microscopic lacerations in the vaginal/perineal mucosa", "To numb the examination area", "To test for HPV"], correct: 1, explanation: "Toluidine blue selectively stains the nucleated cells in the deeper layers of the epidermis exposed by microtrauma, making subtle tears highly visible." },
                { id: 'sex_tox_9', topicId: 'sex_assault', text: "The most common site of genital injury in an adult victim of forcible vaginal rape is the:", options: ["Cervix", "Anterior vaginal wall", "Posterior fourchette and fossa navicularis", "Labia majora"], correct: 2, explanation: "The posterior fourchette (the bottom junction of the labia minora) is subjected to the greatest tension during forced penetration and frequently tears." },
                { id: 'sex_tox_10', topicId: 'id_tox', text: "In forensic dentistry, why are teeth so valuable for human identification?", options: ["They contain the most blood", "Enamel is the hardest substance in the body and survives fire, decomposition, and severe trauma", "They never change position during life", "They contain fingerprints"], correct: 1, explanation: "Teeth survive extreme environmental conditions that destroy soft tissues and bone, preserving dental restorations and pulp DNA." },
                { id: 'sex_tox_11', topicId: 'id_tox', text: "According to Interpol, which of the following is a 'Primary' identifier in DVI?", options: ["Tattoos", "Fingerprints", "Scars", "Jewelry"], correct: 1, explanation: "The three primary identifiers that stand alone in court are: DNA, Fingerprints (Friction ridge analysis), and Dental records (Odontology)." },
                { id: 'sex_tox_12', topicId: 'sex_assault', text: "Which bone is considered the most accurate for determining the sex of an adult skeleton?", options: ["Femur", "Skull", "Pelvis (Ossa coxae)", "Sternum"], correct: 2, explanation: "The pelvis provides the most sexually dimorphic traits (e.g., wider subpubic angle and greater sciatic notch in females for childbirth)." },
                { id: 'sex_tox_13', topicId: 'id_tox', text: "Which bone is considered the most reliable for estimating the living stature (height) of an unknown skeletal remain?", options: ["Humerus", "Femur", "Radius", "Clavicle"], correct: 1, explanation: "The femur (the longest and strongest bone) has the highest correlation to total living stature." },
                { id: 'sex_tox_14', topicId: 'id_tox', text: "What is 'Postmortem Redistribution' in toxicology?", options: ["The metabolic breakdown of drugs after death", "The movement of drugs from solid organs (like the liver/lungs) into the blood after death, artificially raising blood concentrations", "The evaporation of volatile poisons", "The leaking of gastric contents into the trachea"], correct: 1, explanation: "Drugs leak down concentration gradients postmortem. Therefore, peripheral blood (e.g., femoral) is preferred over central blood (e.g., cardiac) to avoid falsely elevated toxic levels." },
                { id: 'sex_tox_15', topicId: 'id_tox', text: "To prevent postmortem glycolysis and ethanol production by bacteria in a blood sample, which preservative is added?", options: ["EDTA", "Sodium Fluoride", "Heparin", "Formalin"], correct: 1, explanation: "Sodium fluoride acts as an enzyme inhibitor (stopping glycolysis) and a preservative (preventing bacterial putrefaction from creating false-positive alcohol levels)." },
                { id: 'sex_tox_16', topicId: 'id_tox', text: "A body is found with a distinct 'bitter almond' odor and bright pink lividity. What poison is suspected?", options: ["Carbon monoxide", "Cyanide", "Arsenic", "Organophosphates"], correct: 1, explanation: "Cyanide halts cellular respiration, leaving venous blood oxygen-rich (pink). A genetic trait allows some people to smell its bitter almond odor." },
                { id: 'sex_tox_17', topicId: 'id_tox', text: "Toxicity from which heavy metal is classically associated with 'Mees lines' (white transverse lines on nails), garlic breath, and hyperkeratosis?", options: ["Lead", "Mercury", "Arsenic", "Thallium"], correct: 2, explanation: "Arsenic poisoning presents with severe GI distress, peripheral neuropathy, and characteristic dermatological signs like Mees lines and hyperkeratosis of the palms/soles." },
                { id: 'sex_tox_18', topicId: 'id_tox', text: "Basophilic stippling of red blood cells, Burton's line (blue line on gums), and wrist drop are classic signs of:", options: ["Lead poisoning", "Iron toxicity", "Arsenic poisoning", "Carbon monoxide poisoning"], correct: 0, explanation: "Lead interferes with heme synthesis (causing anemia and basophilic stippling) and causes motor neuropathies like wrist drop." },
                { id: 'sex_tox_19', topicId: 'id_tox', text: "A farm worker dies presenting with pinpoint pupils (miosis), excessive salivation, bronchospasm, and muscle fasciculations. What is the likely poison?", options: ["Atropine", "Cocaine", "Organophosphate (insecticide)", "Cyanide"], correct: 2, explanation: "Organophosphates irreversibly inhibit acetylcholinesterase, leading to a massive cholinergic crisis (SLUDGE syndrome: Salivation, Lacrimation, Urination, Defecation, GI distress, Emesis)." },
                { id: 'sex_tox_20', topicId: 'id_tox', text: "Cocaine abuse commonly leads to sudden death via which mechanism?", options: ["Respiratory depression", "Massive hepatic necrosis", "Coronary artery vasospasm leading to myocardial infarction or lethal arrhythmias", "Renal failure"], correct: 2, explanation: "Cocaine is a powerful sympathomimetic that blocks catecholamine reuptake, causing severe vasoconstriction, hypertension, and ischemia." },
                { id: 'sex_tox_21', topicId: 'id_tox', text: "Finding which specific metabolite in the urine or blood provides definitive proof of Heroin (diacetylmorphine) use, distinguishing it from other opiates?", options: ["Morphine", "Codeine", "6-Monoacetylmorphine (6-MAM)", "Oxycodone"], correct: 2, explanation: "Heroin rapidly metabolizes into 6-MAM before breaking down into morphine. 6-MAM is unique to heroin." },
                { id: 'sex_tox_22', topicId: 'id_tox', text: "Methanol (wood alcohol) poisoning is lethal primarily because it metabolizes into:", options: ["Acetaldehyde", "Formic acid", "Acetic acid", "Oxalic acid"], correct: 1, explanation: "Methanol is metabolized by alcohol dehydrogenase into toxic formaldehyde and formic acid, causing severe metabolic acidosis and blindness (optic nerve damage)." },
                { id: 'sex_tox_23', topicId: 'id_tox', text: "A patient dies after consuming antifreeze. Autopsy reveals massive acute renal failure. What microscopic finding is expected in the kidneys?", options: ["Massive fat droplets", "Calcium oxalate crystals in the tubules", "Amyloid deposits", "Glomerular sclerosis"], correct: 1, explanation: "Ethylene glycol (antifreeze) metabolizes into oxalic acid, which binds with calcium to form insoluble calcium oxalate crystals that physically destroy the renal tubules." },
                { id: 'sex_tox_24', topicId: 'id_tox', text: "Acetaminophen (Paracetamol) overdose causes death primarily through:", options: ["Cardiotoxicity", "Centrilobular hepatic necrosis (Liver failure)", "Pulmonary edema", "Brain hemorrhage"], correct: 1, explanation: "The toxic metabolite NAPQI depletes glutathione, causing massive, delayed necrosis of the liver (specifically the centrilobular regions)." },
                { id: 'sex_tox_25', topicId: 'id_tox', text: "Fatal 'Water Intoxication' (e.g., from hazing or contest rituals) causes death via:", options: ["Pulmonary edema", "Severe hyponatremia leading to massive cerebral edema and brain herniation", "Cardiac arrhythmias from hyperkalemia", "Stomach rupture"], correct: 1, explanation: "Massive water intake dilutes blood sodium. Water rushes into brain cells via osmosis, causing lethal swelling within the rigid skull." },
                { id: 'sex_tox_26', topicId: 'sex_assault', text: "Which drug is notorious for causing 'Drug-Facilitated Sexual Assault' (DFSA) due to its rapidly inducing anterograde amnesia, and is colloquially known as 'Roofies'?", options: ["Flunitrazepam (Rohypnol)", "Cocaine", "Methamphetamine", "LSD"], correct: 0, explanation: "Flunitrazepam is a potent benzodiazepine that causes deep sedation and anterograde amnesia, often clearing from the blood very rapidly, complicating delayed toxicology testing." },
                { id: 'sex_tox_27', topicId: 'id_tox', text: "GHB (Gamma-Hydroxybutyrate) is difficult to detect in DFSA cases because:", options: ["It is a natural hormone", "It is rapidly metabolized and has a very short half-life (undetectable in blood after ~8 hours)", "It does not enter the urine", "Standard lab equipment cannot recognize its mass"], correct: 1, explanation: "GHB metabolizes quickly to CO2 and water, making timely sample collection (within 12 hours for urine, 8 for blood) critical." },
                { id: 'sex_tox_28', topicId: 'sex_assault', text: "Locard's Exchange Principle states:", options: ["Every poison has an antidote", "Every contact leaves a trace", "DNA never degrades", "Insects arrive at a body in a predictable order"], correct: 1, explanation: "Edmond Locard's principle ('Every contact leaves a trace') is the foundation of trace evidence collection, such as pubic hair combing in sexual assaults." },
                { id: 'sex_tox_29', topicId: 'sex_assault', text: "In sexual assault kits, what is the purpose of swabbing bite marks?", options: ["To measure the depth of the bite", "To collect salivary amylase and the assailant's epithelial DNA", "To test for rabies", "To collect the victim's blood"], correct: 1, explanation: "Saliva contains high levels of amylase and sloughed epithelial cells, providing an excellent source of the perpetrator's DNA." },
                { id: 'sex_tox_30', topicId: 'id_tox', text: "The hallucinogenic compound in 'Magic Mushrooms' (Psilocybe) is:", options: ["LSD", "Mescaline", "Psilocybin / Psilocin", "DMT"], correct: 2, explanation: "Psilocybin is the prodrug naturally occurring in the mushrooms, which is metabolized into the psychoactive psilocin in the body." },
                { id: 'sex_tox_31', topicId: 'id_tox', text: "A forensic toxicologist needs to determine if a deceased pilot was under the influence of alcohol during a crash, but the body is severely decomposed. What is the best fluid to test?", options: ["Central heart blood", "Urine", "Vitreous Humor", "Gastric contents"], correct: 2, explanation: "The eye is an isolated, privileged space. Vitreous humor resists putrefaction longer than blood and is an excellent matrix for ethanol and electrolyte analysis." },
                { id: 'sex_tox_32', topicId: 'id_tox', text: "In a closed disaster (like a commercial airplane crash), DVI is generally faster because:", options: ["The bodies are less damaged", "There is a definitive, closed passenger manifest to compare against", "There are more investigators", "The accident site is smaller"], correct: 1, explanation: "A closed manifest provides a specific, limited list of potential victims, allowing investigators to quickly gather exact Ante-mortem (AM) records." },
                { id: 'sex_tox_33', topicId: 'id_tox', text: "What does 'MNI' stand for in forensic anthropology regarding commingled remains?", options: ["Maximum Number of Injuries", "Minimum Number of Individuals", "Major National Incident", "Multiple Neurological Infarctions"], correct: 1, explanation: "MNI is the lowest possible number of people present in a commingled mass grave (e.g., finding three left femurs means the MNI is 3)." },
                { id: 'sex_tox_34', topicId: 'id_tox', text: "Strychnine poisoning causes death by:", options: ["Massive liver failure", "Blocking glycine receptors in the spinal cord, leading to violent, tetanic muscle spasms and asphyxia", "Depressing the respiratory center in the brain", "Causing massive internal bleeding"], correct: 1, explanation: "Strychnine blocks inhibitory neurotransmitters, causing extreme muscle contractions, 'risus sardonicus' (grinning), and 'opisthotonos' (severe back arching) until the respiratory muscles fail." },
                { id: 'sex_tox_35', topicId: 'id_tox', text: "Salicylate (Aspirin) toxicity initially causes which acid-base disturbance?", options: ["Metabolic alkalosis", "Respiratory alkalosis (due to direct stimulation of the medullary respiratory center)", "Metabolic acidosis", "Respiratory acidosis"], correct: 1, explanation: "Aspirin overdose first causes hyperventilation and respiratory alkalosis, which is quickly followed by a severe high anion-gap metabolic acidosis." },
                { id: 'sex_tox_36', topicId: 'id_tox', text: "The presence of a 'drug mule' carrying packets of cocaine in their GI tract creates a risk of 'Body Packer Syndrome'. If a packet bursts, what is the surgical approach?", options: ["Endoscopic retrieval", "Immediate laparotomy/enterotomy to remove all packets", "Observation and laxatives", "Gastric lavage"], correct: 1, explanation: "A ruptured packet delivers a massive, instantly fatal dose. Endoscopy risks rupturing more packets; emergency laparotomy is required." },
                { id: 'sex_tox_37', topicId: 'id_tox', text: "A forensic pathologist is collecting tissue for toxicology in a severely decomposed, skeletonized body. Which tissue is best for heavy metal analysis?", options: ["Brain", "Bone or Teeth", "Muscle", "Fat"], correct: 1, explanation: "Heavy metals (like lead and arsenic) substitute for calcium and are permanently deposited in the mineral matrix of bone and teeth." },
                { id: 'sex_tox_38', topicId: 'id_tox', text: "Which drug exhibits 'zero-order kinetics' in its metabolism, meaning a constant amount is eliminated per hour regardless of the blood concentration?", options: ["Cocaine", "Morphine", "Ethanol (Alcohol)", "Aspirin"], correct: 2, explanation: "Ethanol metabolizes at a steady rate (roughly 15 mg/dL per hour) because the alcohol dehydrogenase enzyme becomes saturated quickly." },
                { id: 'sex_tox_39', topicId: 'sex_assault', text: "Which piece of evidence must NEVER be stored in an airtight plastic bag?", options: ["A blood-stained shirt from a sexual assault", "A pill bottle", "A sample of gastric contents", "A bullet"], correct: 0, explanation: "Biological evidence like bloody or semen-stained clothing must be stored in breathable paper bags to prevent moisture buildup, mold, and DNA destruction." },
                { id: 'sex_tox_40', topicId: 'sex_assault', text: "Conversely, which type of evidence MUST be stored in airtight containers (like metal cans or glass jars)?", options: ["Semen swabs", "Clothing containing volatile accelerants from an arson/fire", "Bone fragments", "Hair samples"], correct: 1, explanation: "Volatile poisons or fire accelerants (like gasoline) will evaporate out of paper bags; they must be sealed airtight to preserve the headspace vapor for analysis." },
                { id: 'sex_tox_41', topicId: 'id_tox', text: "In cases of suspected inhalant abuse (e.g., 'huffing' paint thinner or aerosols), what is the most common mechanism of sudden death?", options: ["Lung cancer", "Sudden Sniffing Death Syndrome (fatal cardiac arrhythmias due to myocardial sensitization to catecholamines)", "Liver cirrhosis", "Gastric rupture"], correct: 1, explanation: "Volatile hydrocarbons heavily sensitize the heart. A sudden surge of adrenaline (e.g., being caught or startled) triggers ventricular fibrillation." },
                { id: 'sex_tox_42', topicId: 'sex_assault', text: "When evaluating a bite mark, what must be done BEFORE taking the DNA swab?", options: ["Wash the area with soap", "Take a forensic photograph with a scale conforming to ABFO guidelines", "Apply Toluidine blue", "Make a plaster cast"], correct: 1, explanation: "A high-quality, scaled photograph must be taken immediately before any swabbing or manipulation alters the physical appearance of the bite." },
                { id: 'sex_tox_43', topicId: 'id_tox', text: "What is the primary psychoactive component in Cannabis?", options: ["Cannabidiol (CBD)", "Delta-9-tetrahydrocannabinol (THC)", "Psilocybin", "Cotinine"], correct: 1, explanation: "THC is the principal psychoactive constituent of cannabis." },
                { id: 'sex_tox_44', topicId: 'sex_assault', text: "The 'Gustafson Method' is used in forensic odontology to:", options: ["Extract DNA from teeth", "Estimate age based on physiological changes in the teeth (e.g., attrition, secondary dentin, root resorption)", "Determine sex", "Match bite marks"], correct: 1, explanation: "Gustafson developed a scoring system evaluating six age-related changes in adult teeth to estimate chronological age." },
                { id: 'sex_tox_45', topicId: 'sex_assault', text: "In a sexual assault examination, finding motile (swimming) sperm in the vaginal vault typically indicates intercourse occurred within:", options: ["1-2 hours", "6-24 hours", "72 hours", "1 week"], correct: 1, explanation: "Sperm usually remain motile in the vagina for up to 6-24 hours, though non-motile sperm heads can be found up to 72 hours (and sometimes longer in the cervix)." },
                { id: 'sex_tox_46', topicId: 'id_tox', text: "Carbon monoxide (CO) levels in the blood are measured as a percentage of:", options: ["Oxygen saturation", "Carboxyhemoglobin (COHb)", "Free carbon", "Methemoglobin"], correct: 1, explanation: "CO binds to hemoglobin to form Carboxyhemoglobin, which is quantified using a CO-oximeter." },
                { id: 'sex_tox_47', topicId: 'id_tox', text: "Which demographic requires the lowest level of carboxyhemoglobin to suffer fatal CO poisoning?", options: ["Healthy male adults", "Pregnant women", "Elderly individuals with severe coronary artery disease", "Teenagers"], correct: 2, explanation: "People with compromised cardiovascular systems (CAD) cannot tolerate the hypoxia caused by CO; they often die at much lower COHb levels (e.g., 20-30%) than healthy adults (50%+)." },
                { id: 'sex_tox_48', topicId: 'id_tox', text: "A secondary identifier in DVI (which cannot establish identity on its own but supports it) includes:", options: ["Dental X-rays", "DNA profile", "Fingerprints", "Scars, marks, tattoos, and clothing"], correct: 3, explanation: "While highly useful, tattoos and scars are not mathematically unique enough to be primary identifiers under strict Interpol guidelines." },
                { id: 'sex_tox_49', topicId: 'id_tox', text: "In a fatal suspected opioid overdose, an autopsy reveals 'foam cones' at the mouth and nose. This is caused by:", options: ["Epilepsy", "Severe non-cardiogenic pulmonary edema", "Gastric acid reflux", "Bacterial gas"], correct: 1, explanation: "Opioids cause profound respiratory depression leading to hypoxia, which damages pulmonary capillaries, resulting in massive fluid leakage (pulmonary edema) that whips into foam." },
                { id: 'sex_tox_50', topicId: 'sex_assault', text: "An examination of the hymen reveals a transecting tear extending to the base. This finding:", options: ["Definitively proves rape", "Indicates penetration occurred, but cannot alone differentiate between consensual sex, trauma, or assault", "Proves virginity prior to the incident", "Is a normal anatomical variant"], correct: 1, explanation: "Hymenal tears indicate blunt trauma or penetration, but medical findings alone cannot establish the legal issue of consent." }
            ];


            // --- TOPIC 7: Crime Scene Investigation (20 Questions) ---
            const topic7Expanded = [
                { id: 'csi_1', topicId: 'csi', text: "Locard's Exchange Principle states:", options: ["The dose makes the poison", "Every contact leaves a trace", "DNA never degrades", "Insects arrive at a body in a predictable order"], correct: 1, explanation: "Edmond Locard's principle — 'Every contact leaves a trace' — is the foundation of all trace evidence collection." },
                { id: 'csi_2', topicId: 'csi', text: "A blood-stained shirt should be stored in:", options: ["An airtight plastic bag", "A paper bag after air-drying", "A sealed glass jar", "A wet towel"], correct: 1, explanation: "Biological evidence must be air-dried first to prevent mold, then stored in breathable paper bags. Airtight plastic promotes DNA degradation." },
                { id: 'csi_3', topicId: 'csi', text: "Clothing containing volatile accelerants from a suspected arson should be stored in:", options: ["Paper bags", "Airtight metal cans or glass jars", "Open containers", "Sealed plastic bags"], correct: 1, explanation: "Volatile chemicals evaporate from paper bags. Airtight containers (metal/glass) preserve the headspace vapor for analysis." },
                { id: 'csi_4', topicId: 'csi', text: "The first step at a crime scene is:", options: ["Collect evidence", "Take photographs", "Secure and preserve the scene", "Interview witnesses"], correct: 2, explanation: "Before any documentation or evidence collection, the scene must be secured to prevent contamination and preserve evidence." },
                { id: 'csi_5', topicId: 'csi', text: "A body is found face-down, but fixed livor mortis is on the back. This indicates:", options: ["The person died of asphyxia", "The body was moved after lividity became fixed (8-12 hrs)", "The lividity pattern is normal", "The person was lying on their stomach when they died"], correct: 1, explanation: "Fixed lividity inconsistent with body position proves the body was moved at least 8-12 hours after death." },
                { id: 'csi_6', topicId: 'csi', text: "Which PMI estimation method uses Henssge's Nomogram?", options: ["Rigor mortis", "Algor mortis (body cooling)", "Forensic entomology", "Vitreous potassium"], correct: 1, explanation: "Henssge's Nomogram calculates PMI using rectal temperature, ambient temperature, body weight, and correction factors." },
                { id: 'csi_7', topicId: 'csi', text: "The rate of body cooling (algor mortis) is approximately:", options: ["0.25°C per hour", "0.75°C per hour", "2°C per hour", "5°C per hour"], correct: 1, explanation: "In temperate conditions, the body cools at approximately 0.75°C/hr (1-1.5°F/hr), though this varies with environment and body habitus." },
                { id: 'csi_8', topicId: 'csi', text: "The 'primary scene' in forensic investigation refers to:", options: ["The hospital where the victim was pronounced dead", "The location where the crime or death actually occurred", "The police station where evidence is stored", "The pathology laboratory"], correct: 1, explanation: "The primary scene is where the main criminal event happened. Secondary scenes include transport vehicles, evidence disposal locations, etc." },
                { id: 'csi_9', topicId: 'csi', text: "In forensic photography, an ABFO #2 ruler is specifically used for:", options: ["Measuring body temperature", "Documenting bite marks and patterned injuries with scale", "Weighing evidence", "Measuring rigor mortis"], correct: 1, explanation: "The ABFO #2 is an L-shaped ruler designed specifically for forensic photography of bite marks and patterned injuries, providing scale and preventing distortion." },
                { id: 'csi_10', topicId: 'csi', text: "Cast-off blood spatter patterns are typically caused by:", options: ["Blood dripping from gravity", "A swung weapon releasing blood in a linear trail", "Arterial spurting", "Contact transfer from a bloody hand"], correct: 1, explanation: "When a blood-covered weapon is swung, centrifugal force flings droplets off in a characteristic linear arc pattern." },
                { id: 'csi_11', topicId: 'csi', text: "Vitreous potassium is useful for PMI estimation because it:", options: ["Decreases linearly after death", "Rises linearly after death for up to ~5 days", "Remains constant", "Fluctuates unpredictably"], correct: 1, explanation: "Potassium leaks from cells into the vitreous humor at a relatively constant rate after death, providing a useful PMI marker." },
                { id: 'csi_12', topicId: 'csi', text: "Which insects are typically the FIRST to colonize a dead body?", options: ["Beetles (Dermestidae)", "Ants", "Blowflies (Calliphoridae)", "Cockroaches"], correct: 2, explanation: "Calliphoridae (blowflies) arrive within minutes of death and begin laying eggs, making them crucial for minimum PMI estimation." },
                { id: 'csi_13', topicId: 'csi', text: "An 'organized' crime scene suggests:", options: ["An impulsive, unplanned attack", "The perpetrator planned the crime and took steps to minimize evidence", "Multiple perpetrators", "The crime occurred outdoors"], correct: 1, explanation: "Organized scenes show planning: cleaned surfaces, missing weapons, body concealment. Disorganized scenes suggest impulsive acts with abundant evidence." },
                { id: 'csi_14', topicId: 'csi', text: "The 'chain of custody' refers to:", options: ["The hierarchy of police command", "An unbroken record of who handled evidence, when, and where", "The DNA chain in forensic genetics", "The sequence of autopsies in a mass disaster"], correct: 1, explanation: "Any break in the chain of custody (e.g., unattended evidence) can render evidence inadmissible in court." },
                { id: 'csi_15', topicId: 'csi', text: "Livor mortis becomes 'fixed' (non-blanchable) approximately:", options: ["30 minutes after death", "2-4 hours after death", "8-12 hours after death", "48 hours after death"], correct: 2, explanation: "Initially blanchable, lividity becomes fixed as hemoglobin diffuses into tissue, typically 8-12 hours after death." },
                { id: 'csi_16', topicId: 'csi', text: "When documenting a wound photographically, what must always be included in the frame?", options: ["The photographer's badge", "A scale/ruler and color chart", "The victim's face for identification", "A clock showing the time"], correct: 1, explanation: "A scale ruler and color reference chart are essential for accurate size documentation and color calibration in forensic photography." },
                { id: 'csi_17', topicId: 'csi', text: "The 'point of convergence' in blood spatter analysis is:", options: ["Where the victim was standing", "The location determined by tracing spatter directions back to the area of impact", "Where the weapon was found", "The entry point of the perpetrator"], correct: 1, explanation: "By drawing lines through the long axis of multiple spatter stains back toward their source, analysts can determine the approximate point of impact." },
                { id: 'csi_18', topicId: 'csi', text: "A contact/transfer bloodstain pattern is created when:", options: ["Blood drips from height", "A bloody object presses against a clean surface, leaving an imprint", "An artery sprays blood", "Blood pools under gravity"], correct: 1, explanation: "Contact stains include handprints, shoe prints, fabric impressions — any pattern created by direct contact between a bloody surface and a clean one." },
                { id: 'csi_19', topicId: 'csi', text: "Rigor mortis follows Nysten's Law, appearing first in:", options: ["The legs and feet", "The arms and hands", "The small muscles of the face and jaw", "The core/trunk muscles"], correct: 2, explanation: "Nysten's Law: rigor appears first in small muscles (face, jaw) and progresses to larger muscles (trunk, then limbs)." },
                { id: 'csi_20', topicId: 'csi', text: "A body found at the scene has a 'temperature plateau' — the core temperature hasn't dropped despite being dead. This plateau typically lasts:", options: ["30 seconds", "1-3 hours after death", "12 hours", "48 hours"], correct: 1, explanation: "In the first 1-3 hours after death, the core temperature may remain stable before cooling begins, due to residual metabolic heat and insulation." },
                { id: 'csi_21', topicId: 'csi', text: "In blood spatter analysis, the 'angle of impact' can be calculated using:", options: ["The color of the bloodstain", "The sine inverse of the ratio of width to length of a spatter stain", "The volume of blood pooled", "The temperature of the blood"], correct: 1, explanation: "sin(angle) = width / length. A circular stain = 90° impact; an elongated stain indicates an acute angle." },
                { id: 'csi_22', topicId: 'csi', text: "A 'void pattern' in blood spatter indicates:", options: ["The blood was washed away", "An object or person was blocking the spatter and was later removed", "The blood decomposed quickly", "The victim moved during the attack"], correct: 1, explanation: "A void (shadow) in an otherwise continuous spatter field shows something was between the blood source and the surface during the event." },
                { id: 'csi_23', topicId: 'csi', text: "Gunshot residue (GSR) particles are primarily composed of:", options: ["Iron and carbon", "Lead, barium, and antimony", "Copper and zinc", "Sulfur and phosphorus"], correct: 1, explanation: "GSR contains characteristic spherical particles of lead (Pb), barium (Ba), and antimony (Sb) from the primer. Detection by SEM/EDX is the gold standard." },
                { id: 'csi_24', topicId: 'csi', text: "How long does GSR typically persist on unwashed hands?", options: ["Indefinitely", "Approximately 4-6 hours with normal activity", "48 hours", "1 week"], correct: 1, explanation: "Normal hand movements and washing remove GSR within 4-6 hours. Sampling should occur as soon as possible after a shooting incident." },
                { id: 'csi_25', topicId: 'csi', text: "Luminol is used at crime scenes to:", options: ["Detect fingerprints", "Detect latent bloodstains by chemiluminescence, even after cleaning", "Identify drug residues", "Preserve DNA evidence"], correct: 1, explanation: "Luminol reacts with the iron in hemoglobin to produce a blue glow, revealing cleaned or invisible blood traces in darkened conditions." },
                { id: 'csi_26', topicId: 'csi', text: "A disadvantage of using luminol is:", options: ["It is very expensive", "It can produce false positives with bleach, certain metals, and horseradish", "It permanently destroys DNA", "It only works on fresh blood"], correct: 1, explanation: "Luminol can give false positives with oxidizers like bleach, copper, and some plant peroxidases. It may also dilute DNA, though small amounts of DNA can still be recovered." },
                { id: 'csi_27', topicId: 'csi', text: "The three main methods for developing latent fingerprints on porous surfaces (like paper) include:", options: ["Superglue, powder, and tape lift", "Ninhydrin, DFO (1,8-diazafluoren-9-one), and Physical Developer", "Laser scanning, UV light, and electrostatics", "Chemical etching, acid wash, and X-ray"], correct: 1, explanation: "Ninhydrin reacts with amino acids; DFO is more sensitive and fluoresces; Physical Developer detects sebaceous deposits and works on wet items." },
                { id: 'csi_28', topicId: 'csi', text: "Cyanoacrylate (superglue) fuming is the preferred method for developing latent prints on:", options: ["Paper and cardboard", "Non-porous surfaces like glass, plastic, and metal", "Fabric and textiles", "Rough concrete surfaces"], correct: 1, explanation: "Superglue vapors polymerize on the moisture and fatty residues of fingerprints, forming a white, durable deposit on smooth non-porous surfaces." },
                { id: 'csi_29', topicId: 'csi', text: "The 'succession of insect waves' on a decomposing body is important because:", options: ["Each wave of insect species is attracted to a specific decomposition stage, allowing timeline estimation", "Insects eat all the evidence", "Only one species ever colonizes a body", "Insect activity stops decomposition"], correct: 0, explanation: "Different insect species arrive in predictable waves as the body progresses through decomposition stages (fresh → bloat → active decay → dry), enabling PMI estimation through forensic entomology." },
                { id: 'csi_30', topicId: 'csi', text: "When collecting maggots from a body for entomological analysis, the investigator should collect:", options: ["Only dead maggots", "The largest maggots from the body AND samples of surrounding soil, AND preserve some alive and some in ethanol", "Only the smallest maggots", "Maggots from only one body region"], correct: 1, explanation: "A proper entomological sample requires the largest (oldest) larvae, soil samples for pupae, live specimens for rearing, and preserved specimens for immediate identification." },
                { id: 'csi_31', topicId: 'csi', text: "What is the significance of 'adipocere' (grave wax) formation?", options: ["It accelerates decomposition", "It indicates the body was in a hot, dry environment", "It is a waxy substance formed from fat hydrolysis in moist environments, which preserves body features and can greatly extend PMI estimation difficulties", "It is a sign of poisoning"], correct: 2, explanation: "Adipocere forms when body fat undergoes saponification in wet, anaerobic conditions. It can preserve features for months to years, making PMI estimation very challenging." },
                { id: 'csi_32', topicId: 'csi', text: "The Kastle-Meyer (KM) test is a presumptive test for:", options: ["Semen", "Saliva", "Blood", "Urine"], correct: 2, explanation: "The KM test uses phenolphthalin, which turns pink in the presence of hemoglobin. It is presumptive (not confirmatory) — it screens for blood but can have false positives." },
                { id: 'csi_33', topicId: 'csi', text: "The confirmatory test for human blood is:", options: ["Luminol", "Kastle-Meyer", "Teichmann (hemin crystal) or Takayama (hemochromogen crystal) test", "Benzidine test"], correct: 2, explanation: "Crystal tests (Teichmann produces brown rhomboid hemin crystals; Takayama produces pink feathery hemochromogen crystals) confirm the presence of blood. Species-specific tests like precipitin confirm it is human." },
                { id: 'csi_34', topicId: 'csi', text: "In a fire death investigation, the pathologist must determine:", options: ["Only the cause of fire", "Whether the person was alive before the fire (vitality signs) or dead and placed in the fire to conceal a crime", "The insurance value of the property", "Only whether accelerants were used"], correct: 1, explanation: "Key vitality signs include: soot in airways/trachea, elevated COHb levels, and cherry-red lividity — all indicating the person was breathing during the fire." },
                { id: 'csi_35', topicId: 'csi', text: "The 'pugilistic posture' (boxer's stance) in a burned body is caused by:", options: ["The person fighting the fire", "Heat-induced protein denaturation and shortening of muscles, particularly flexors", "Rigor mortis", "Cadaveric spasm from fear"], correct: 1, explanation: "Heat coagulates muscle proteins causing contraction, predominantly in the stronger flexor muscles. This is a post-mortem artifact and does NOT indicate ante-mortem activity." },
                { id: 'csi_36', topicId: 'csi', text: "A 'pour pattern' at a fire scene suggests:", options: ["Natural fire spread", "The use of liquid accelerants poured on a surface before ignition (arson)", "Electrical failure", "Spontaneous combustion"], correct: 1, explanation: "Pour patterns are irregular, low-burn marks on flooring that follow the flow path of an accelerant. They are a strong indicator of intentional fire-setting." },
                { id: 'csi_37', topicId: 'csi', text: "Touch DNA refers to:", options: ["DNA extracted from blood samples", "DNA obtained from epithelial cells left behind by simply touching a surface", "DNA from saliva", "Mitochondrial DNA only"], correct: 1, explanation: "Touching a surface deposits shed skin cells containing nuclear DNA. This technique can link suspects to weapons, steering wheels, doorknobs, and other handled objects." },
                { id: 'csi_38', topicId: 'csi', text: "In forensic ballistics, 'rifling marks' on a bullet are used to:", options: ["Determine the caliber only", "Link a specific bullet to the specific firearm that fired it, by comparing land and groove impressions", "Determine the distance of fire", "Identify the type of gunpowder"], correct: 1, explanation: "Each barrel's rifling pattern (lands, grooves, twist direction and rate) creates unique striations on a bullet, allowing comparison microscopy to match bullet to weapon." },
                { id: 'csi_39', topicId: 'csi', text: "A stippling (tattooing) pattern around a gunshot wound indicates the muzzle was approximately:", options: ["In contact with the skin", "15-60 cm (6-24 inches) from the skin", "More than 3 meters away", "More than 10 meters away"], correct: 1, explanation: "Stippling is caused by unburned/partially burned gunpowder grains impacting the skin. It appears at intermediate range (roughly 15-60 cm, depending on the weapon)." },
                { id: 'csi_40', topicId: 'csi', text: "A contact gunshot wound to the head characteristically shows:", options: ["No powder residue", "A stellate (star-shaped) entrance wound with soot on the skull bone, and muzzle imprint", "Clean round hole with no surrounding marks", "Only stippling"], correct: 1, explanation: "Gas enters the skull, expands against bone, and ruptures the skin outward, creating a star-shaped tear. Soot is deposited on the bone beneath the skin." },
                { id: 'csi_41', topicId: 'csi', text: "The 'zone of possibility' in shooting reconstruction refers to:", options: ["The area where the shooter could have stood", "The maximum effective range of the weapon", "The area defined by trajectory analysis where the muzzle could have been located relative to the target", "The area where spent casings are found"], correct: 2, explanation: "By analyzing bullet trajectory through wound paths and scene geometry, investigators can define the spatial zone from which the shot was fired." },
                { id: 'csi_42', topicId: 'csi', text: "Which type of fingerprint pattern is the most common?", options: ["Arch", "Loop (ulnar and radial)", "Whorl", "Composite"], correct: 1, explanation: "Loops account for approximately 60-65% of all fingerprints, followed by whorls (~30-35%) and arches (~5%)." },
                { id: 'csi_43', topicId: 'csi', text: "The minimum number of matching minutiae (ridge characteristics) traditionally required for fingerprint identification in many jurisdictions is:", options: ["4 points", "8-12 points (varies by jurisdiction; some use no minimum numerical standard)", "25 points", "50 points"], correct: 1, explanation: "While many countries historically used 12 or 16 points, the trend is toward holistic assessment by qualified examiners without a fixed numerical threshold." },
                { id: 'csi_44', topicId: 'csi', text: "When photographing a crime scene, the correct sequence is:", options: ["Close-up → Mid-range → Overview", "Overview (establishing shots) → Mid-range → Close-up (with scale)", "Close-up only", "Random order is acceptable"], correct: 1, explanation: "Photography proceeds from general to specific: overview shots establish context, mid-range shows relationships between evidence, close-ups document individual items with scale." },
                { id: 'csi_45', topicId: 'csi', text: "A 'dying declaration' is admissible in court because:", options: ["It is always under oath", "A person who believes they are about to die is presumed to have no reason to lie", "It was recorded on video", "A doctor certified it"], correct: 1, explanation: "The legal rationale is that a person aware of their impending death is unlikely to meet their maker with a lie on their lips, giving the statement special evidentiary weight." },
                { id: 'csi_46', topicId: 'csi', text: "Sketch mapping at a crime scene should include all EXCEPT:", options: ["Measurements from fixed reference points", "Compass direction (north arrow)", "The investigator's personal theory of the crime", "A legend and scale"], correct: 2, explanation: "Crime scene sketches must be objective factual records. Personal theories, assumptions, or conclusions do NOT belong in the sketch." },
                { id: 'csi_47', topicId: 'csi', text: "In mass disaster victim identification (DVI), the Interpol DVI forms are divided into:", options: ["Red forms and blue forms", "AM (Ante-Mortem) yellow forms and PM (Post-Mortem) pink forms", "Alpha and Beta forms", "Civilian and military forms"], correct: 1, explanation: "Interpol uses standardized color-coded forms: Yellow for Ante-Mortem data (from families/records) and Pink for Post-Mortem data (from the body examination)." },
                { id: 'csi_48', topicId: 'csi', text: "The 'primary identifiers' in DVI that can establish identity on their own are:", options: ["Clothing and personal effects", "Dental records, fingerprints, and DNA", "Tattoos and scars", "Medical implant serial numbers"], correct: 1, explanation: "Dental, fingerprints, and DNA are mathematically unique and can independently confirm identity. Everything else (tattoos, clothing, etc.) is secondary/supporting." },
                { id: 'csi_49', topicId: 'csi', text: "When collecting digital evidence (e.g., a suspect's computer), the first priority is:", options: ["Turn off the computer immediately", "Create a forensic bit-for-bit image of the storage media while maintaining chain of custody", "Open files to look for evidence", "Delete the browser history"], correct: 1, explanation: "A forensic image preserves all data including deleted files, metadata, and slack space. The original media is then sealed as evidence, and analysis is performed only on the copy." },
                { id: 'csi_50', topicId: 'csi', text: "Taphonomy in forensic science refers to:", options: ["The study of poisons", "The study of post-mortem changes to remains, including decomposition, scavenging, and environmental effects on the body after death", "The study of blood spatter", "The study of fingerprints"], correct: 1, explanation: "Forensic taphonomy examines everything that happens to a body after death — decomposition, insect activity, animal scavenging, burial environment — to help reconstruct circumstances and estimate PMI." }
            ];


            // --- MASTER QUESTION BANK MERGE ---
        const questionBank = [
            ...topic1Expanded,
            ...topic2Expanded,
            ...topic3Expanded,
            ...topic4Expanded,
            ...topic5Expanded,
            ...topic6Expanded,
            ...topic7Expanded
        ];

        // --- APP STATE & PERSISTENCE ---
        const DEFAULT_STATE = {
            xp: 0,
            streak: 0,
            lastActiveDate: null,
            completedModules: [],
            topicStats: {
                'sys': { attempted: 0, correct: 0 },
                'csi': { attempted: 0, correct: 0 },
                'trauma': { attempted: 0, correct: 0 },
                'asphyxia': { attempted: 0, correct: 0 },
                'pmc': { attempted: 0, correct: 0 },
                'obgyn': { attempted: 0, correct: 0 },
                'sex_assault': { attempted: 0, correct: 0 },
                'id_tox': { attempted: 0, correct: 0 }
            },
            recentScores: [],
            highestMock: null,
            settings: { reduceAnimations: false, hideRankWidget: false }
        };

        let appState = JSON.parse(JSON.stringify(DEFAULT_STATE));
        let currentQuiz = { questions: [], currentIndex: 0, score: 0, type: '', timer: null };
        let quizActive = false;

        const app = {
            init() {
                this.loadState();
                this.checkStreak();
                this.setupListeners();
                this.renderModulesList();
                this.navigate('dashboard');
            },

            loadState() {
                const saved = localStorage.getItem('verdict_state');
                if (saved) {
                    try { 
                        let parsed = JSON.parse(saved);
                        if (!parsed.settings) parsed.settings = { reduceAnimations: false, hideRankWidget: false };
                        appState = { ...DEFAULT_STATE, ...parsed }; 
                    } 
                    catch (e) { console.error("Error parsing state", e); }
                }
            },

            saveState() {
                localStorage.setItem('verdict_state', JSON.stringify(appState));
                this.updateGlobalUI(); // Refresh UI on save
            },

            resetProgress() {
                if(confirm("Are you sure? This will permanently delete all XP, streaks, and quiz history.")) {
                    localStorage.removeItem('verdict_state');
                    appState = JSON.parse(JSON.stringify(DEFAULT_STATE));
                    this.saveState();
                    this.navigate('dashboard');
                    this.showToast('🔄 Progress reset');
                }
            },

            resetMockScore() {
                if(confirm("Are you sure you want to clear your highest mock exam score?")) {
                    appState.highestMock = null;
                    this.saveState();
                    this.showToast('🗑️ Mock score cleared');
                }
            },

            toggleSetting(key, val) {
                if(!appState.settings) appState.settings = { reduceAnimations: false, hideRankWidget: false };
                appState.settings[key] = val;
                this.saveState();
            },

            checkStreak() {
                const today = new Date().toDateString();
                if (appState.lastActiveDate !== today) {
                    // Simple streak logic: if yesterday, +1. If older, reset to 1.
                    const yesterday = new Date();
                    yesterday.setDate(yesterday.getDate() - 1);
                    if (appState.lastActiveDate === yesterday.toDateString()) {
                        appState.streak += 1;
                    } else if (appState.lastActiveDate !== null) {
                        appState.streak = 1;
                    } else {
                        appState.streak = 1; // First day
                    }
                    appState.lastActiveDate = today;
                    this.saveState();
                }
            },

            addXP(amount) {
                appState.xp += amount;
                this.saveState();
                this.showToast(`⚡ +${amount} XP`);
            },

            showToast(msg, type) {
                const t = document.getElementById('toast');
                if(!t) return;
                t.textContent = msg;
                t.className = 'show ' + (type || 'amber');
                clearTimeout(this._toastTimer);
                this._toastTimer = setTimeout(() => { t.className = ''; }, 3200);
            },

            getRank() {
                const xp = appState.xp;
                if(xp >= 1000) return { name: "Chief Medical Examiner", progress: 100 };
                if(xp >= 600) return { name: "Autopsy Officer", progress: (xp-600)/400*100 };
                if(xp >= 300) return { name: "Scene Analyst", progress: (xp-300)/300*100 };
                if(xp >= 100) return { name: "Evidence Collector", progress: (xp-100)/200*100 };
                return { name: "Rookie Investigator", progress: xp/100*100 };
            },

            getWeakTopics() {
                let weak = [];
                for (const [topicId, stats] of Object.entries(appState.topicStats)) {
                    if (stats.attempted > 0) {
                        const acc = (stats.correct / stats.attempted) * 100;
                        if (acc < 70) weak.push(topicId);
                    }
                }
                return weak;
            },

            // --- ROUTING & UI UPDATES ---
            navigate(viewId) {
                // If user navigates away from quiz manually (not via startQuiz/finishQuiz), kill it
                if(quizActive && viewId !== 'practice' && viewId !== 'results') {
                    clearInterval(currentQuiz.timer);
                    quizActive = false;
                }

                document.querySelectorAll('.view-section').forEach(el => el.classList.remove('active'));
                const targetView = document.getElementById('view-' + viewId);
                if(targetView) targetView.classList.add('active');

                document.querySelectorAll('.nav-item').forEach(el => el.classList.remove('active'));
                const navItem = Array.from(document.querySelectorAll('.nav-item')).find(el => el.getAttribute('onclick') && el.getAttribute('onclick').includes(viewId));
                if(navItem) navItem.classList.add('active');

                const sidebar = document.getElementById('sidebar');
                const overlay = document.getElementById('sidebar-overlay');
                if(sidebar) sidebar.classList.remove('open');
                if(overlay) overlay.classList.remove('open');

                // Update topbar title
                const titles = {dashboard:'Dashboard',modules:'Study Modules','module-detail':'Module Detail',practice:'Practice Quiz',mock:'Mock Examination','quiz-active':'Quiz','results':'Results',progress:'Progress & Stats',settings:'Settings'};
                const topbar = document.getElementById('topbar-title');
                if(topbar) topbar.textContent = titles[viewId] || 'VERDICT';

                this.updateGlobalUI();

                if(viewId === 'dashboard') this.renderDashboard();
                if(viewId === 'modules') this.renderModulesList();
                // Only render practice hub setup if quiz is NOT active
                if(viewId === 'practice' && !quizActive) this.renderPracticeHub();
                if(viewId === 'progress') this.renderProgress();
            },

            updateGlobalUI() {
                const rank = this.getRank();
                document.getElementById('ui-rank-name').innerText = rank.name;
                document.getElementById('ui-xp-bar').style.width = rank.progress + '%';
                const xpText = document.getElementById('ui-xp-text');
                if(xpText) xpText.textContent = appState.xp + ' XP';
                document.getElementById('ui-streak').innerText = appState.streak;

                // Apply settings
                if(appState.settings) {
                    if(appState.settings.reduceAnimations) document.body.classList.add('reduce-anim');
                    else document.body.classList.remove('reduce-anim');

                    const chip = document.getElementById('sidebar-rank-chip');
                    if(chip) {
                        if(appState.settings.hideRankWidget) chip.style.display = 'none';
                        else chip.style.display = 'block';
                    }

                    const animToggle = document.getElementById('setting-anim');
                    const rankToggle = document.getElementById('setting-rank');
                    if(animToggle) animToggle.checked = appState.settings.reduceAnimations;
                    if(rankToggle) rankToggle.checked = appState.settings.hideRankWidget;
                }
            },

            // --- VIEW RENDERERS ---
            renderDashboard() {
                const rank = this.getRank();
                document.getElementById('dash-xp').textContent = appState.xp;
                document.getElementById('dash-rank-sub').textContent = rank.name;
                document.getElementById('dash-modules').textContent = appState.completedModules.length + '/' + courseModules.length;

                // Accuracy
                let totalC = 0, totalA = 0;
                for(let k in appState.topicStats) { totalC += appState.topicStats[k].correct; totalA += appState.topicStats[k].attempted; }
                if(totalA > 0) {
                    document.getElementById('dash-accuracy').textContent = Math.round(totalC/totalA*100) + '%';
                    document.getElementById('dash-questions-sub').textContent = totalC + '/' + totalA + ' correct';
                }

                // Topic bars
                const barsEl = document.getElementById('dash-topic-bars');
                barsEl.innerHTML = '';
                courseModules.forEach(m => {
                    const s = appState.topicStats[m.id];
                    const acc = s && s.attempted > 0 ? Math.round(s.correct/s.attempted*100) : 0;
                    const fillClass = acc === 0 ? '' : (acc < 70 ? ' weak' : (acc >= 90 ? ' mastered' : ''));
                    barsEl.innerHTML += '<div class="topic-bar-row"><div class="topic-bar-label">' + m.title + '</div><div class="topic-bar-track"><div class="topic-bar-fill' + fillClass + '" style="width:' + acc + '%"></div></div><div class="topic-bar-pct">' + acc + '%</div></div>';
                });

                // Weak topics
                const weakIds = this.getWeakTopics();
                const weakEl = document.getElementById('dash-weak-topics');
                const weakBtn = document.getElementById('weak-quiz-btn');
                if(weakIds.length === 0) {
                    weakEl.innerHTML = '<span style="font-size:0.82rem;color:var(--text3);">No weak topics detected yet.</span>';
                    if(weakBtn) weakBtn.style.display = 'none';
                } else {
                    weakEl.innerHTML = weakIds.map(id => {
                        const mod = courseModules.find(m => m.id === id);
                        return '<span class="weak-tag">' + mod.title + '</span>';
                    }).join('');
                    if(weakBtn) weakBtn.style.display = 'inline-flex';
                }

                // Recent activity
                const actEl = document.getElementById('dash-recent-activity');
                if(appState.recentScores.length === 0) {
                    actEl.innerHTML = '<span style="font-size:0.82rem;color:var(--text3);">No activity recorded yet.</span>';
                } else {
                    actEl.innerHTML = appState.recentScores.slice(-5).reverse().map(s => {
                        const pct = Math.round(s.score/s.total*100);
                        const cls = pct >= 70 ? 'score-good' : (pct >= 50 ? 'score-mid' : 'score-bad');
                        return '<div class="history-item"><span style="color:var(--text2);">' + s.type + '</span><span class="result-topic-score ' + cls + '">' + s.score + '/' + s.total + ' (' + pct + '%)</span></div>';
                    }).join('');
                }

                // Mock prev score
                const mockPrev = document.getElementById('mock-prev-score');
                if(mockPrev && appState.highestMock !== null) mockPrev.textContent = 'Previous best: ' + appState.highestMock + '%';
            },

            renderModulesList() {
                const container = document.getElementById('module-list');
                if(!container) return;
                container.innerHTML = '';
                const nums = ['I','II','III','IV','V','VI','VII','VIII','IX','X'];
                courseModules.forEach((mod, idx) => {
                    const isDone = appState.completedModules.includes(mod.id);
                    const badgeHtml = isDone ? '<span class="badge badge-studied">STUDIED</span>' : '';
                    const descText = mod.subtopics ? mod.subtopics.join(', ') : '';
                    const card = document.createElement('div');
                    card.className = 'module-card';
                    card.innerHTML = '<div class="module-header" onclick="this.parentElement.querySelector(\'.module-body\').classList.toggle(\'open\');this.querySelector(\'.module-chevron\').classList.toggle(\'open\');">'
                        + '<div class="module-num">' + nums[idx] + '</div>'
                        + '<div class="module-info"><div class="module-title-text">' + mod.title.replace(/^[IVXLC]+\.\s*/, '') + '</div><div class="module-desc">' + descText + '</div></div>'
                        + '<div class="module-badges">' + badgeHtml + '</div>'
                        + '<div class="module-chevron">▼</div></div>'
                        + '<div class="module-body">' + mod.content
                        + '<div class="module-actions">'
                        + '<button class="btn btn-primary" onclick="app.markModuleStudied(\'' + mod.id + '\')">✓ Mark as Studied (+10 XP)</button>'
                        + '<button class="btn btn-secondary" onclick="app.startQuiz(\'topic\',\'' + mod.id + '\')">📝 Quiz This Topic</button>'
                        + '</div></div>';
                    container.appendChild(card);
                });
            },

            markModuleStudied(id) {
                if(!appState.completedModules.includes(id)) {
                    appState.completedModules.push(id);
                    this.addXP(10);
                    this.showToast('📚 Module marked as studied! +10 XP', 'green');
                    this.renderModulesList();
                } else {
                    this.showToast('Already studied', 'amber');
                }
            },

            openModule(id) {
                const mod = courseModules.find(m => m.id === id);
                document.getElementById('module-title').innerText = mod.title;
                document.getElementById('module-content').innerHTML = mod.content;
                const btn = document.getElementById('btn-mark-studied');
                btn.onclick = () => { this.markModuleStudied(id); this.navigate('modules'); };
                this.navigate('module-detail');
            },

            renderPracticeHub() {
                // Topic mode radio buttons
                const modeMixed = document.getElementById('mode-mixed');
                const modeTopic = document.getElementById('mode-topic');
                const selector = document.getElementById('topic-selector');
                if(modeMixed && modeTopic) {
                    const handler = () => {
                        const val = document.querySelector('input[name="quizmode"]:checked').value;
                        if(val === 'mixed') { selector.style.display='none'; modeMixed.classList.add('selected'); modeTopic.classList.remove('selected'); }
                        else { selector.style.display='block'; modeTopic.classList.add('selected'); modeMixed.classList.remove('selected'); }
                    };
                    modeMixed.querySelector('input').onchange = handler;
                    modeTopic.querySelector('input').onchange = handler;
                }
                // Topic chips
                const chipsEl = document.getElementById('topic-chips');
                if(chipsEl) {
                    chipsEl.innerHTML = '';
                    courseModules.forEach(mod => {
                        chipsEl.innerHTML += '<label class="topic-chip" data-id="' + mod.id + '"><input type="checkbox" value="' + mod.id + '" checked> ' + mod.title.replace(/^[IVXLC]+\.\s*/, '') + '</label>';
                    });
                    chipsEl.querySelectorAll('.topic-chip').forEach(chip => {
                        chip.addEventListener('click', () => {
                            const cb = chip.querySelector('input');
                            setTimeout(() => chip.classList.toggle('selected', cb.checked), 0);
                        });
                        chip.classList.add('selected');
                    });
                }
            },

            renderProgress() {
                const grid = document.getElementById('progress-grid');
                if(!grid) return;
                const rank = this.getRank();
                let totalC = 0, totalA = 0;
                for(let k in appState.topicStats) { totalC += appState.topicStats[k].correct; totalA += appState.topicStats[k].attempted; }
                const overallAcc = totalA > 0 ? Math.round(totalC/totalA*100) : 0;

                grid.innerHTML = '<div class="card"><div class="section-title" style="font-size:1.1rem;margin-bottom:14px;">Topic Mastery</div>'
                    + courseModules.map(m => {
                        const s = appState.topicStats[m.id];
                        const acc = s && s.attempted > 0 ? Math.round(s.correct/s.attempted*100) : 0;
                        const fillClass = acc < 70 && s && s.attempted > 0 ? ' weak' : (acc >= 90 ? ' mastered' : '');
                        return '<div class="topic-bar-row"><div class="topic-bar-label">' + m.title + '</div><div class="topic-bar-track"><div class="topic-bar-fill' + fillClass + '" style="width:' + acc + '%"></div></div><div class="topic-bar-pct">' + acc + '%</div></div>';
                    }).join('')
                    + '</div>'
                    + '<div><div class="card"><div class="section-title" style="font-size:1.1rem;margin-bottom:14px;">Statistics</div>'
                    + '<div class="dash-stat-label">TOTAL XP</div><div class="dash-stat-val">' + appState.xp + '</div><div class="dash-stat-sub">' + rank.name + '</div>'
                    + '<div style="margin-top:16px;"><div class="dash-stat-label">OVERALL ACCURACY</div><div class="dash-stat-val">' + overallAcc + '%</div><div class="dash-stat-sub">' + totalC + '/' + totalA + ' correct</div></div>'
                    + '<div style="margin-top:16px;"><div class="dash-stat-label">HIGHEST MOCK</div><div class="dash-stat-val">' + (appState.highestMock !== null ? appState.highestMock + '%' : '—') + '</div></div>'
                    + '<div style="margin-top:16px;"><div class="dash-stat-label">MODULES STUDIED</div><div class="dash-stat-val">' + appState.completedModules.length + '/' + courseModules.length + '</div></div>'
                    + '</div></div>';

                // Rank ladder in progress view
                this.renderRankLadder('rank-ladder-container');

                // Quiz history
                const histEl = document.getElementById('quiz-history-list');
                if(histEl) {
                    if(appState.recentScores.length === 0) {
                        histEl.innerHTML = '<span style="font-size:0.82rem;color:var(--text3);">No quizzes completed yet.</span>';
                    } else {
                        histEl.innerHTML = appState.recentScores.slice(-10).reverse().map(s => {
                            const pct = Math.round(s.score/s.total*100);
                            const cls = pct >= 70 ? 'score-good' : (pct >= 50 ? 'score-mid' : 'score-bad');
                            return '<div class="history-item"><span style="color:var(--text2);">' + s.type + '</span><span class="result-topic-score ' + cls + '">' + s.score + '/' + s.total + ' (' + pct + '%)</span></div>';
                        }).join('');
                    }
                }
            },

            renderRankLadder(containerId) {
                const container = document.getElementById(containerId);
                if(!container) return;
                const xp = appState.xp;
                const ranks = [
                    { name: 'Chief Medical Examiner', req: 1000, icon: '🌟' },
                    { name: 'Autopsy Officer', req: 600, icon: '🔬' },
                    { name: 'Scene Analyst', req: 300, icon: '🔍' },
                    { name: 'Evidence Collector', req: 100, icon: '💼' },
                    { name: 'Rookie Investigator', req: 0, icon: '🔰' }
                ];
                container.innerHTML = ranks.map(r => {
                    const achieved = xp >= r.req;
                    const current = achieved && !ranks.find(r2 => r2.req > r.req && xp >= r2.req);
                    const cls = current ? 'current' : (achieved ? 'achieved' : '');
                    return '<div class="rank-row ' + cls + '"><span class="rank-row-icon">' + r.icon + '</span><span>' + r.name + '</span><span class="rank-row-xp">' + r.req + ' XP</span></div>';
                }).join('');
            },

            // --- QUIZ ENGINE ---
            shuffle(array) {
                for (let i = array.length - 1; i > 0; i--) {
                    const j = Math.floor(Math.random() * (i + 1));
                    [array[i], array[j]] = [array[j], array[i]];
                }
                return array;
            },

            startQuiz(mode, topicId = null) {
                let pool = [];
                let title = "Quiz";

                if (mode === 'mixed' || mode === 'custom') {
                    // Check if custom mode with topic selection
                    if(mode === 'custom') {
                        const modeVal = document.querySelector('input[name="quizmode"]:checked');
                        if(modeVal && modeVal.value === 'topic') {
                            const checked = Array.from(document.querySelectorAll('#topic-chips input:checked')).map(cb => cb.value);
                            pool = questionBank.filter(q => checked.includes(q.topicId));
                            title = "Topic Quiz";
                        } else {
                            pool = [...questionBank];
                            title = "Mixed Quiz";
                        }
                        const allChecked = document.getElementById('q-all');
                        const countInput = document.getElementById('q-count');
                        this.shuffle(pool);
                        if(!(allChecked && allChecked.checked)) {
                            const count = countInput ? parseInt(countInput.value) || 10 : 10;
                            pool = pool.slice(0, Math.min(count, pool.length));
                        }
                    } else {
                        pool = [...questionBank];
                        title = "Mixed Quiz";
                        this.shuffle(pool);
                        if(pool.length > 10) pool = pool.slice(0, 10);
                    }
                } else if (mode === 'weak') {
                    const weakIds = this.getWeakTopics();
                    pool = questionBank.filter(q => weakIds.includes(q.topicId));
                    title = "Weak Topic Quiz";
                    this.shuffle(pool);
                    if(pool.length > 10) pool = pool.slice(0, 10);
                } else if (mode === 'topic') {
                    pool = questionBank.filter(q => q.topicId === topicId);
                    const mod = courseModules.find(m => m.id === topicId);
                    title = mod.title.replace(/^[IVXLC]+\.\s*/, '') + ' Quiz';
                    this.shuffle(pool);
                    if(pool.length > 10) pool = pool.slice(0, 10);
                }

                if(pool.length === 0) { this.showToast('⚠️ No questions available for this selection'); return; }

                // Read optional timer
                const timeSel = document.getElementById('q-time');
                const timeMinutes = timeSel ? parseInt(timeSel.value) : 0;

                currentQuiz = { questions: pool, currentIndex: 0, score: 0, type: title, isMock: false, timer: null, timeLeft: timeMinutes > 0 ? timeMinutes * 60 : null };
                quizActive = true;

                // Show quiz area, hide setup — set BEFORE navigate so renderPracticeHub is skipped
                const setup = document.getElementById('practice-setup');
                const quizArea = document.getElementById('practice-quiz');
                const resultsArea = document.getElementById('practice-results');
                if(setup) setup.style.display = 'none';
                if(quizArea) quizArea.style.display = 'block';
                if(resultsArea) resultsArea.style.display = 'none';

                this.navigate('practice');
                this.renderQuizQuestion();

                // Start timer if configured
                if(timeMinutes > 0) {
                    currentQuiz.timer = setInterval(() => {
                        currentQuiz.timeLeft--;
                        const counter = document.getElementById('quiz-counter');
                        if(counter) {
                            const m = Math.floor(currentQuiz.timeLeft/60);
                            const s = currentQuiz.timeLeft % 60;
                            counter.textContent = 'Q ' + (currentQuiz.currentIndex+1) + '/' + currentQuiz.questions.length
                                + '  ⏱ ' + m + ':' + String(s).padStart(2,'0');
                        }
                        if(currentQuiz.timeLeft <= 0) { this.finishQuiz(); }
                    }, 1000);
                }
            },

            exitQuiz() {
                clearInterval(currentQuiz.timer);
                quizActive = false;
                // Restore correct view
                if(currentQuiz.isMock) {
                    const mockSetup = document.getElementById('mock-setup');
                    if(mockSetup) mockSetup.style.display = 'block';
                    this.navigate('mock');
                } else {
                    const setup = document.getElementById('practice-setup');
                    const quizArea = document.getElementById('practice-quiz');
                    if(setup) setup.style.display = 'block';
                    if(quizArea) quizArea.style.display = 'none';
                    this.navigate('practice');
                }
            },

            renderQuizQuestion() {
                const q = currentQuiz.questions[currentQuiz.currentIndex];
                const total = currentQuiz.questions.length;
                const idx = currentQuiz.currentIndex;
                const mod = courseModules.find(m => m.id === q.topicId);
                const letters = ['A','B','C','D','E'];

                // Update counter & progress
                const counter = document.getElementById('quiz-counter');
                if(counter) counter.textContent = 'Question ' + (idx+1) + ' / ' + total;
                const progFill = document.getElementById('quiz-progress-fill');
                if(progFill) progFill.style.width = ((idx+1)/total*100) + '%';

                const area = document.getElementById('quiz-question-area');
                if(!area) return;
                area.innerHTML = '<div class="question-card">'
                    + '<div class="q-meta"><span>Question ' + (idx+1) + ' of ' + total + '</span><span class="q-topic-tag">' + (mod ? mod.title.replace(/^[IVXLC]+\.\s*/, '') : '') + '</span></div>'
                    + '<div class="q-text">' + (q.text || q.question || '') + '</div>'
                    + '<div class="q-options">' + q.options.map((opt, i) =>
                        '<div class="q-option" data-idx="' + i + '" onclick="app.selectQuizOption(this,' + i + ')">'
                        + '<span class="q-opt-letter">' + letters[i] + '.</span><span>' + opt + '</span></div>'
                    ).join('') + '</div>'
                    + '<div class="q-explanation" id="q-explanation"><strong id="q-explain-title"></strong><p style="margin-top:6px;margin-bottom:0;" id="q-explain-text"></p></div>'
                    + '<div class="q-nav"><div></div><button class="btn btn-primary" id="q-next-btn" style="display:none;" onclick="app.nextQuizQuestion()">Next →</button></div>'
                    + '</div>';
            },

            selectQuizOption(el, idx) {
                const q = currentQuiz.questions[currentQuiz.currentIndex];
                if(el.classList.contains('disabled')) return;
                // Disable all
                document.querySelectorAll('.q-option').forEach(o => o.classList.add('disabled'));
                const correct = idx === q.correct;
                el.classList.add(correct ? 'correct' : 'incorrect');
                // Highlight the correct answer
                document.querySelectorAll('.q-option')[q.correct].classList.add('correct');

                if(correct) currentQuiz.score++;

                // Track per-question result for breakdown
                if(!currentQuiz.correctLog) currentQuiz.correctLog = [];
                currentQuiz.correctLog.push({ topicId: q.topicId, correct });

                // Record in persistent stats
                if(!appState.topicStats[q.topicId]) appState.topicStats[q.topicId] = { correct: 0, attempted: 0 };
                appState.topicStats[q.topicId].attempted++;
                if(correct) appState.topicStats[q.topicId].correct++;
                if(correct && !currentQuiz.isMock) this.addXP(5);
                this.saveState();

                // Show explanation
                const expl = document.getElementById('q-explanation');
                const explTitle = document.getElementById('q-explain-title');
                const explText = document.getElementById('q-explain-text');
                if(expl) {
                    explTitle.textContent = correct ? '✓ Correct!' : '✗ Incorrect';
                    explTitle.style.color = correct ? 'var(--green2)' : '#e57373';
                    explText.textContent = q.explanation || '';
                    expl.classList.add('show');
                }

                // Show next button
                const nextBtn = document.getElementById('q-next-btn');
                if(nextBtn) {
                    nextBtn.style.display = 'inline-flex';
                    if(currentQuiz.currentIndex >= currentQuiz.questions.length - 1) nextBtn.textContent = 'View Results';
                }
            },

            nextQuizQuestion() {
                currentQuiz.currentIndex++;
                if(currentQuiz.currentIndex >= currentQuiz.questions.length) {
                    this.finishQuiz();
                    return;
                }
                this.renderQuizQuestion();
            },

            startMockExam() {
                // Read configurable values
                const mockQInput = document.getElementById('mock-q-count');
                const mockTimeInput = document.getElementById('mock-time');
                const mockQCount = mockQInput ? Math.max(10, Math.min(100, parseInt(mockQInput.value) || 20)) : 20;
                const mockTimeMin = mockTimeInput ? parseInt(mockTimeInput.value) || 20 : 20;

                let pool = this.shuffle([...questionBank]);
                if(pool.length > mockQCount) pool = pool.slice(0, mockQCount);

                currentQuiz = { questions: pool, currentIndex: 0, score: 0, type: 'Mock Exam (' + mockQCount + 'Q/' + mockTimeMin + 'min)', isMock: true, timer: null, timeLeft: mockTimeMin * 60 };
                quizActive = true;

                // Set DOM state BEFORE navigate so quizActive flag prevents renderPracticeHub reset
                const mockSetup = document.getElementById('mock-setup');
                if(mockSetup) mockSetup.style.display = 'none';
                const practiceSetup = document.getElementById('practice-setup');
                const quizArea = document.getElementById('practice-quiz');
                if(practiceSetup) practiceSetup.style.display = 'none';
                if(quizArea) quizArea.style.display = 'block';

                this.navigate('practice');
                this.renderQuizQuestion();

                // Start countdown timer
                currentQuiz.timer = setInterval(() => {
                    currentQuiz.timeLeft--;
                    // Update timer display in quiz counter
                    const counter = document.getElementById('quiz-counter');
                    if(counter) {
                        const m = Math.floor(currentQuiz.timeLeft/60);
                        const s = currentQuiz.timeLeft % 60;
                        counter.textContent = 'Q ' + (currentQuiz.currentIndex+1) + '/' + currentQuiz.questions.length
                            + '  ⏱ ' + m + ':' + String(s).padStart(2,'0');
                    }
                    if(currentQuiz.timeLeft <= 0) { this.finishQuiz(); }
                }, 1000);
            },

            finishQuiz() {
                clearInterval(currentQuiz.timer);
                quizActive = false;

                const total = currentQuiz.questions.length;
                const score = currentQuiz.score;
                const pct = Math.round((score / total) * 100);

                appState.recentScores.push({ type: currentQuiz.type, score, total });

                if(currentQuiz.isMock) {
                    this.addXP(50);
                    if(appState.highestMock === null || pct > appState.highestMock) appState.highestMock = pct;
                }
                this.saveState();

                // Restore views
                const setup = document.getElementById('practice-setup');
                const quizArea = document.getElementById('practice-quiz');
                const mockSetup = document.getElementById('mock-setup');
                if(setup) setup.style.display = 'block';
                if(quizArea) quizArea.style.display = 'none';
                if(mockSetup) mockSetup.style.display = 'block';

                // Build Results
                const resultsTitle = document.getElementById('results-title');
                const resultsScore = document.getElementById('results-score');
                const resultsSummary = document.getElementById('results-summary');
                if(resultsTitle) resultsTitle.textContent = currentQuiz.isMock ? 'Mock Exam Results' : 'Quiz Complete';
                if(resultsScore) { resultsScore.textContent = pct + '%'; resultsScore.style.color = pct >= 70 ? 'var(--green2)' : '#e57373'; }
                if(resultsSummary) resultsSummary.textContent = 'You answered ' + score + ' out of ' + total + ' correctly.';

                // XP notice
                const xpEarned = (score * 5) + (currentQuiz.isMock ? 50 : 0);
                const xpNotice = document.getElementById('results-xp-notice');
                if(xpNotice) xpNotice.innerHTML = '<div class="xp-gain-notice">⚡ +' + xpEarned + ' XP earned</div>';

                // Per-topic breakdown using session tracking
                const breakdown = document.getElementById('results-breakdown');
                if(breakdown) {
                    let sessionStats = {};
                    currentQuiz.questions.forEach(q => {
                        if(!sessionStats[q.topicId]) sessionStats[q.topicId] = { correct: 0, total: 0 };
                        sessionStats[q.topicId].total++;
                    });
                    // Use answered correctly from currentQuiz.correctLog if available
                    if(currentQuiz.correctLog) {
                        currentQuiz.correctLog.forEach(entry => {
                            if(sessionStats[entry.topicId] && entry.correct) sessionStats[entry.topicId].correct++;
                        });
                    }
                    breakdown.innerHTML = '<div class="result-topic-breakdown">'
                        + Object.keys(sessionStats).map(tId => {
                            const mod = courseModules.find(m => m.id === tId);
                            const s = sessionStats[tId];
                            const spct = s.total > 0 ? Math.round(s.correct/s.total*100) : 0;
                            const cls = spct >= 70 ? 'score-good' : (spct >= 50 ? 'score-mid' : 'score-bad');
                            return '<div class="result-topic-row"><span class="result-topic-name">' + (mod ? mod.title.replace(/^[IVXLC]+\.\s*/,'') : tId) + '</span><span class="result-topic-score ' + cls + '">' + s.correct + '/' + s.total + '</span></div>';
                        }).join('')
                        + '</div>';
                }

                this.navigate('results');
            },

            setupListeners() {
                // Handled via inline onclick in HTML
            }
        };

        // Boot
        window.addEventListener('DOMContentLoaded', () => {
            app.init();
        });

    </script>
</body>
</html>
