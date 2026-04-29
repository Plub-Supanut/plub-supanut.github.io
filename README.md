<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verdict | Forensic Medicine Exam Prep</title>
    <style>
        /* --- CSS Reset & Variables --- */
        :root {
            --bg-base: #0f1115;
            --bg-surface: #1e2128;
            --bg-surface-hover: #2a2e37;
            --bg-panel: #16181d;
            --text-main: #e2e8f0;
            --text-muted: #94a3b8;
            --accent-warm: #d97706; /* Amber/Rust - forensic tape aesthetic */
            --accent-warm-hover: #b45309;
            --border-color: #334155;
            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;
            --font-sans: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            --sidebar-width: 260px;
        }

        * { margin: 0; padding: 0; box-sizing: border-box; }
        
        body {
            font-family: var(--font-sans);
            background-color: var(--bg-base);
            color: var(--text-main);
            line-height: 1.6;
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        /* --- Typography & Utilities --- */
        h1, h2, h3, h4 { color: #fff; font-weight: 600; }
        h1 { font-size: 1.75rem; margin-bottom: 1rem; }
        h2 { font-size: 1.5rem; margin-bottom: 0.75rem; border-bottom: 1px solid var(--border-color); padding-bottom: 0.5rem; }
        h3 { font-size: 1.25rem; margin-top: 1.5rem; margin-bottom: 0.5rem; color: var(--accent-warm); }
        p { margin-bottom: 1rem; }
        ul, ol { margin-bottom: 1rem; padding-left: 1.5rem; }
        li { margin-bottom: 0.25rem; }
        
        .text-accent { color: var(--accent-warm); }
        .text-muted { color: var(--text-muted); }
        .text-success { color: var(--success); }
        .text-danger { color: var(--danger); }
        .flex { display: flex; }
        .justify-between { justify-content: space-between; }
        .items-center { align-items: center; }
        .gap-2 { gap: 0.5rem; }
        .gap-4 { gap: 1rem; }
        .hidden { display: none !important; }

        /* --- Layout --- */
        #mobile-nav {
            display: none;
            background: var(--bg-surface);
            padding: 1rem;
            border-bottom: 1px solid var(--border-color);
            align-items: center;
            justify-content: space-between;
            z-index: 50;
        }

        #mobile-menu-btn {
            background: none; border: none; color: var(--text-main); font-size: 1.5rem; cursor: pointer;
        }

        #sidebar {
            width: var(--sidebar-width);
            background-color: var(--bg-surface);
            border-right: 1px solid var(--border-color);
            display: flex;
            flex-direction: column;
            transition: transform 0.3s ease;
            z-index: 40;
        }

        .brand {
            padding: 1.5rem;
            font-size: 1.5rem;
            font-weight: 700;
            letter-spacing: 1px;
            color: #fff;
            border-bottom: 1px solid var(--border-color);
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .brand span { color: var(--accent-warm); }

        .nav-links {
            flex: 1;
            padding: 1rem 0;
            overflow-y: auto;
        }

        .nav-item {
            padding: 0.75rem 1.5rem;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            color: var(--text-muted);
            text-decoration: none;
            cursor: pointer;
            transition: all 0.2s;
            border-left: 3px solid transparent;
        }

        .nav-item:hover {
            background-color: var(--bg-surface-hover);
            color: var(--text-main);
        }

        .nav-item.active {
            background-color: var(--bg-base);
            color: var(--accent-warm);
            border-left-color: var(--accent-warm);
        }

        .user-widget {
            padding: 1.5rem;
            border-top: 1px solid var(--border-color);
            background-color: var(--bg-panel);
        }

        #main-content {
            flex: 1;
            overflow-y: auto;
            padding: 2rem;
            scroll-behavior: smooth;
        }

        .view-section { display: none; max-width: 900px; margin: 0 auto; animation: fadeIn 0.3s ease; }
        .view-section.active { display: block; }

        @keyframes fadeIn { from { opacity: 0; transform: translateY(5px); } to { opacity: 1; transform: translateY(0); } }

        /* --- Components --- */
        .card {
            background: var(--bg-surface);
            border: 1px solid var(--border-color);
            border-radius: 8px;
            padding: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .grid-2 { display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; }
        .grid-3 { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1rem; }

        .stat-box {
            background: var(--bg-panel);
            padding: 1rem;
            border-radius: 6px;
            border-left: 4px solid var(--accent-warm);
        }
        .stat-value { font-size: 1.8rem; font-weight: 700; color: #fff; margin-top: 0.25rem; }
        .stat-label { font-size: 0.85rem; color: var(--text-muted); text-transform: uppercase; letter-spacing: 0.5px; }

        .progress-bar-bg { width: 100%; background: var(--bg-base); border-radius: 4px; height: 8px; overflow: hidden; margin-top: 0.5rem; border: 1px solid var(--border-color);}
        .progress-bar-fill { height: 100%; background: var(--accent-warm); transition: width 0.5s ease; }

        .btn {
            background: var(--bg-panel);
            color: var(--text-main);
            border: 1px solid var(--border-color);
            padding: 0.5rem 1rem;
            border-radius: 6px;
            cursor: pointer;
            font-weight: 500;
            transition: all 0.2s;
            font-size: 0.95rem;
        }
        .btn:hover { background: var(--bg-surface-hover); border-color: var(--text-muted); }
        .btn-primary { background: var(--accent-warm); color: #fff; border-color: var(--accent-warm); }
        .btn-primary:hover { background: var(--accent-warm-hover); border-color: var(--accent-warm-hover); }
        .btn-danger { background: rgba(239, 68, 68, 0.1); color: var(--danger); border-color: var(--danger); }
        .btn-danger:hover { background: var(--danger); color: #fff; }
        .btn-full { width: 100%; text-align: center; }

        .badge { display: inline-block; padding: 0.2rem 0.5rem; border-radius: 4px; font-size: 0.75rem; font-weight: 600; text-transform: uppercase; }
        .badge-warning { background: rgba(245, 158, 11, 0.15); color: var(--warning); border: 1px solid rgba(245,158,11,0.3); }
        .badge-success { background: rgba(16, 185, 129, 0.15); color: var(--success); border: 1px solid rgba(16,185,129,0.3); }

        /* --- Educational Formatting --- */
        .module-list-item {
            display: flex; justify-content: space-between; align-items: center;
            padding: 1rem; border: 1px solid var(--border-color); border-radius: 6px; margin-bottom: 0.75rem;
            background: var(--bg-panel); cursor: pointer; transition: background 0.2s;
        }
        .module-list-item:hover { background: var(--bg-surface-hover); }

        .pearl-box, .confuse-box {
            padding: 1rem 1rem 1rem 3rem; margin: 1.5rem 0; border-radius: 6px; position: relative; background: var(--bg-panel);
        }
        .pearl-box { border-left: 4px solid var(--accent-warm); }
        .confuse-box { border-left: 4px solid var(--danger); }
        .pearl-box::before { content: '💡'; position: absolute; left: 1rem; top: 1rem; font-size: 1.2rem; }
        .confuse-box::before { content: '⚠️'; position: absolute; left: 1rem; top: 1rem; font-size: 1.2rem; }
        .box-title { font-weight: bold; margin-bottom: 0.25rem; display: block; color: #fff; }

        .active-recall {
            background: #111827; border: 1px dashed var(--border-color); padding: 1rem; border-radius: 6px; margin: 1rem 0; text-align: center;
        }
        .active-recall span { cursor: pointer; color: var(--accent-warm); font-weight: bold; border-bottom: 1px dotted var(--accent-warm); }
        .active-recall .answer { display: none; margin-top: 0.5rem; color: #fff; }

        table { width: 100%; border-collapse: collapse; margin: 1rem 0; font-size: 0.9rem; }
        th, td { border: 1px solid var(--border-color); padding: 0.75rem; text-align: left; }
        th { background: var(--bg-panel); color: #fff; font-weight: 600; }
        tr:nth-child(even) { background: rgba(255,255,255,0.02); }

        /* --- Quiz UI --- */
        .quiz-option {
            display: block; width: 100%; text-align: left; padding: 1rem; margin-bottom: 0.75rem;
            background: var(--bg-panel); border: 1px solid var(--border-color); border-radius: 6px;
            cursor: pointer; transition: all 0.2s; font-size: 1rem; color: var(--text-main);
        }
        .quiz-option:hover:not(:disabled) { background: var(--bg-surface-hover); border-color: var(--accent-warm); }
        .quiz-option.correct { background: rgba(16, 185, 129, 0.1); border-color: var(--success); }
        .quiz-option.wrong { background: rgba(239, 68, 68, 0.1); border-color: var(--danger); }
        .quiz-option:disabled { cursor: default; }

        .quiz-feedback { margin-top: 1rem; padding: 1rem; border-radius: 6px; display: none; background: var(--bg-panel); border-left: 4px solid var(--accent-warm); }
        
        #timer-bar { height: 4px; background: var(--danger); width: 100%; transition: width 1s linear; margin-bottom: 1rem; display: none; }

        /* --- Mobile Responsiveness --- */
        @media (max-width: 768px) {
            body { flex-direction: column; }
            #sidebar { 
                position: fixed; top: 0; left: 0; height: 100%; 
                transform: translateX(-100%); width: 280px; box-shadow: 2px 0 10px rgba(0,0,0,0.5);
            }
            #sidebar.open { transform: translateX(0); }
            #mobile-nav { display: flex; }
            #main-content { padding: 1rem; }
            .grid-2 { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

    <!-- Mobile Top Bar -->
    <div id="mobile-nav">
        <div class="brand"><span>//</span> Verdict</div>
        <button id="mobile-menu-btn">☰</button>
    </div>

    <!-- Sidebar Navigation -->
    <nav id="sidebar">
        <div class="brand"><span>//</span> Verdict</div>
        <div class="nav-links">
            <a class="nav-item active" onclick="app.navigate('dashboard')">Dashboard</a>
            <a class="nav-item" onclick="app.navigate('modules')">Study Modules</a>
            <a class="nav-item" onclick="app.navigate('practice')">Practice / Quiz</a>
            <a class="nav-item" onclick="app.navigate('mock')">Mock Exam</a>
            <a class="nav-item" onclick="app.navigate('progress')">My Progress</a>
        </div>
        <div class="user-widget">
            <div class="stat-label">Current Rank</div>
            <div id="ui-rank-name" class="text-accent" style="font-weight: 600; margin-bottom: 0.5rem;">Rookie Investigator</div>
            <div class="flex justify-between items-center" style="font-size: 0.8rem;">
                <span class="text-muted">XP: <span id="ui-xp-total" style="color:#fff">0</span></span>
                <span class="text-muted" title="Daily Streak">🔥 <span id="ui-streak">0</span></span>
            </div>
            <div class="progress-bar-bg"><div id="ui-xp-bar" class="progress-bar-fill" style="width: 0%;"></div></div>
        </div>
    </nav>

    <!-- Main Content Area -->
    <main id="main-content">
        
        <!-- Dashboard View -->
        <section id="view-dashboard" class="view-section active">
            <h1>Investigator Dashboard</h1>
            
            <div class="grid-3 card">
                <div class="stat-box">
                    <div class="stat-label">Modules Completed</div>
                    <div class="stat-value"><span id="dash-modules">0</span> <span style="font-size:1rem; color:var(--text-muted)">/ 6</span></div>
                </div>
                <div class="stat-box">
                    <div class="stat-label">Questions Answered</div>
                    <div class="stat-value" id="dash-questions">0</div>
                </div>
                <div class="stat-box">
                    <div class="stat-label">Current Streak</div>
                    <div class="stat-value"><span id="dash-streak">0</span> <span style="font-size:1rem; color:var(--text-muted)">Days</span></div>
                </div>
            </div>

            <div class="grid-2">
                <div class="card">
                    <h2>Weak Topics Flagged</h2>
                    <p class="text-muted" style="font-size: 0.9rem;">Topics with accuracy below 70% require review.</p>
                    <div id="dash-weak-topics">
                        <!-- Populated via JS -->
                    </div>
                </div>
                <div class="card">
                    <h2>Quick Actions</h2>
                    <div class="flex" style="flex-direction: column; gap: 0.75rem;">
                        <button class="btn btn-primary" onclick="app.navigate('modules')">Continue Studying</button>
                        <button class="btn" onclick="app.navigate('practice')">Start a Mixed Quiz</button>
                    </div>
                    <h3 style="margin-top: 2rem;">Recent Performance</h3>
                    <div id="dash-recent-scores" style="font-size: 0.9rem;">
                        <!-- Populated via JS -->
                    </div>
                </div>
            </div>
        </section>

        <!-- Modules List View -->
        <section id="view-modules" class="view-section">
            <h1>Study Modules</h1>
            <p class="text-muted">Master the core concepts of Forensic Medicine & Medicolegal Investigation.</p>
            <div class="card" id="modules-container">
                <!-- Populated via JS -->
            </div>
        </section>

        <!-- Single Module Detail View -->
        <section id="view-module-detail" class="view-section">
            <button class="btn" style="margin-bottom: 1rem;" onclick="app.navigate('modules')">← Back to Modules</button>
            <div class="card">
                <h1 id="module-title">Module Title</h1>
                <div id="module-content">
                    <!-- Populated via JS -->
                </div>
                <div style="margin-top: 3rem; text-align: center; border-top: 1px solid var(--border-color); padding-top: 1.5rem;">
                    <button id="btn-mark-studied" class="btn btn-primary" style="padding: 0.75rem 2rem; font-size: 1.1rem;">Mark as Studied (+10 XP)</button>
                </div>
            </div>
        </section>

        <!-- Practice / Quiz Setup View -->
        <section id="view-practice" class="view-section">
            <h1>Practice Hub</h1>
            <div class="grid-2">
                <div class="card">
                    <h2>Mixed Topic Quiz</h2>
                    <p class="text-muted">Test your knowledge across all forensic topics.</p>
                    <button class="btn btn-primary" onclick="app.startQuiz('mixed')">Start 10-Question Mix</button>
                </div>
                <div class="card">
                    <h2>Target Weak Topics</h2>
                    <p class="text-muted">Focus only on the areas where your accuracy is below 70%.</p>
                    <button class="btn" id="btn-weak-quiz" onclick="app.startQuiz('weak')">Start Weak Topic Quiz</button>
                </div>
            </div>
            <div class="card">
                <h2>Topic-Specific Quizzes</h2>
                <div id="quiz-topic-list" style="display: flex; flex-direction: column; gap: 0.5rem;">
                    <!-- Populated via JS -->
                </div>
            </div>
        </section>

        <!-- Active Quiz View -->
        <section id="view-quiz-active" class="view-section">
            <div class="flex justify-between items-center" style="margin-bottom: 1rem;">
                <h2 style="margin:0; border:none;" id="quiz-header">Quiz Mode</h2>
                <span class="badge badge-warning" id="quiz-progress">1 / 10</span>
            </div>
            <div id="timer-bar"></div>
            <div class="card">
                <h3 id="quiz-question-text" style="color: #fff; margin-top: 0; margin-bottom: 1.5rem;">Question text goes here?</h3>
                <div id="quiz-options-container">
                    <!-- Populated via JS -->
                </div>
                <div id="quiz-feedback" class="quiz-feedback">
                    <strong id="quiz-feedback-title"></strong>
                    <p id="quiz-feedback-text" style="margin-top: 0.5rem; margin-bottom: 0;"></p>
                </div>
                <div style="margin-top: 1.5rem; text-align: right;">
                    <button id="quiz-next-btn" class="btn btn-primary hidden" onclick="app.nextQuizQuestion()">Next Question</button>
                </div>
            </div>
        </section>

        <!-- Mock Exam Setup View -->
        <section id="view-mock" class="view-section">
            <h1>Mock Exam Simulation</h1>
            <div class="card text-center" style="padding: 3rem 1rem;">
                <h2>Comprehensive Assessment</h2>
                <p class="text-muted" style="max-width: 500px; margin: 0 auto 2rem;">
                    This mock exam consists of 20 randomized questions covering all modules. It is timed (20 minutes). Complete it to evaluate your overall exam readiness and earn massive XP.
                </p>
                <button class="btn btn-primary" style="font-size: 1.2rem; padding: 1rem 2.5rem;" onclick="app.startMockExam()">Commence Mock Exam</button>
            </div>
        </section>

        <!-- Quiz/Exam Results View -->
        <section id="view-results" class="view-section">
            <div class="card text-center">
                <h1 id="results-title">Analysis Complete</h1>
                <div style="font-size: 4rem; font-weight: bold; color: var(--accent-warm);" id="results-score">80%</div>
                <p id="results-summary" style="font-size: 1.1rem; margin-bottom: 2rem;">You answered 8 out of 10 correctly.</p>
                
                <div style="text-align: left; max-width: 600px; margin: 0 auto; background: var(--bg-panel); padding: 1.5rem; border-radius: 8px;">
                    <h3>Performance Breakdown</h3>
                    <div id="results-breakdown">
                        <!-- Populated via JS -->
                    </div>
                </div>

                <div style="margin-top: 2rem; display: flex; gap: 1rem; justify-content: center;">
                    <button class="btn" onclick="app.navigate('dashboard')">Return to Dashboard</button>
                    <button class="btn btn-primary" onclick="app.navigate('practice')">More Practice</button>
                </div>
            </div>
        </section>

        <!-- Progress View -->
        <section id="view-progress" class="view-section">
            <h1>My Progress & Data</h1>
            <div class="grid-2">
                <div class="card">
                    <h2>Topic Mastery Stats</h2>
                    <div id="progress-topic-stats">
                        <!-- Populated via JS -->
                    </div>
                </div>
                <div>
                    <div class="card">
                        <h2>Activity Log</h2>
                        <p><strong>Total XP:</strong> <span id="prog-xp">0</span></p>
                        <p><strong>Current Rank:</strong> <span id="prog-rank" class="text-accent"></span></p>
                        <p><strong>Highest Mock Score:</strong> <span id="prog-mock">N/A</span></p>
                    </div>
                    <div class="card">
                        <h2>System Management</h2>
                        <p class="text-muted" style="font-size:0.9rem">Warning: Resetting will clear all local storage data, including XP, completed modules, and quiz histories.</p>
                        <button class="btn btn-danger btn-full" onclick="app.resetProgress()">⚠️ Reset All Progress</button>
                    </div>
                </div>
            </div>
        </section>

    </main>

    <!-- Application Script -->
    <script>
        // --- COURSE CONTENT DATA ---
        const courseModules = [
            {
                id: 'sys',
                title: 'I. Medicolegal Systems & Thai Law',
                content: `
                    <p>Medicolegal Death Investigation (MDI) determines the cause and manner of death. Different jurisdictions use different systems.</p>
                    
                    <h3>MDI Systems Comparison</h3>
                    <table>
                        <tr><th>System</th><th>Leadership</th><th>Key Characteristics</th></tr>
                        <tr><td>Medical Examiner</td><td>Forensic Pathologist</td><td>Medical professional in charge. Common in the US.</td></tr>
                        <tr><td>Coronial System</td><td>Elected Civilian Official</td><td>Coroner decides which cases go to pathologists.</td></tr>
                        <tr><td>Police System</td><td>Police Investigators</td><td>Police lead the investigation and consult pathologists. <strong>Used in Thailand.</strong></td></tr>
                    </table>

                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Thai Medicolegal Law</span>
                        Under the Thai Criminal Procedure Code (CPC) Article 148, there are exactly <strong>5 categories</strong> of unnatural death requiring an autopsy:
                        <ul style="margin-top:0.5rem; margin-bottom:0;">
                            <li>Suicide</li>
                            <li>Homicide</li>
                            <li>Animal attack</li>
                            <li>Accident</li>
                            <li>Unknown cause</li>
                        </ul>
                        <em>Note: Death while in official custody also mandates an investigation.</em>
                    </div>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse</span>
                        <strong>Natural Death</strong> (known cause, doctor signs cert based on medical history) vs. <strong>Unnatural Death</strong> (triggers legal investigation regardless of hospital admission).
                    </div>

                    <div class="active-recall">
                        Does an elderly patient dying of terminal cancer at home require an autopsy under CPC 148?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer">No. This is a Natural Death with a known cause.</div>
                    </div>
                `
            },
            {
                id: 'trauma',
                title: 'II. & III. CSI, Traumatology & Injury Patterns',
                content: `
                    <p>Crime Scene Investigation aims to find the cause/manner of death, providing crucial context for the pathologist. Traumatology focuses on the physical wounds.</p>
                    <p><strong>Definition:</strong> A <em>Wound</em> is a disruption of tissue continuity caused by external force, distinct from an ulcer (disease-driven).</p>

                    <h3>Blunt vs. Sharp Force Injuries</h3>
                    <table>
                        <tr><th>Feature</th><th>Laceration (Blunt)</th><th>Incised Wound (Sharp)</th></tr>
                        <tr><td>Mechanism</td><td>Crushing / Tearing</td><td>Slicing / Cutting</td></tr>
                        <tr><td>Margins</td><td>Irregular, bruised, crushed</td><td>Clean, sharp, no bruising</td></tr>
                        <tr><td>Wound Depth</td><td>Tissue strands/bridges present</td><td>Cleanly severed tissues</td></tr>
                        <tr><td>Underlying Bone</td><td>Often intact</td><td>May have linear cut marks</td></tr>
                    </table>

                    <p><strong>Bruise (Contusion) Color Evolution:</strong> Hemoglobin (red/purple) → Hemosiderin → Biliverdin (green) → Bilirubin (yellow).</p>

                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Fall From Height</span>
                        The primary lethal mechanism is the <strong>Acceleration-Deceleration (AC-DC) Mechanism</strong>. When the rigid skeleton abruptly stops, tethered internal organs continue at terminal velocity, causing massive internal shearing and tearing.
                    </div>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse</span>
                        Clinicians often mistakenly call any cut a "laceration". In forensic medicine, a laceration <strong>strictly implies blunt force trauma</strong> with tissue bridging.
                    </div>
                `
            },
            {
                id: 'pmc',
                title: 'V. Postmortem Changes',
                content: `
                    <p>Decomposition involves two main parallel processes: <strong>Autolysis</strong> (aseptic, enzymatic cell breakdown) and <strong>Putrefaction</strong> (bacterial breakdown, gas formation).</p>

                    <h3>Autolysis vs. Putrefaction</h3>
                    <table>
                        <tr><th>Process</th><th>Agent</th><th>Key Signs</th></tr>
                        <tr><td>Autolysis</td><td>Intrinsic Enzymes</td><td>Cell necrosis, early skin slippage, hemolysis</td></tr>
                        <tr><td>Putrefaction</td><td>Bacteria (esp. GI tract)</td><td>Marbling, Bloating, Tissue gas, Foul odor</td></tr>
                    </table>

                    <h3>Modifications of Decomposition</h3>
                    <p>Environmental factors can halt normal decay and cause unique modifications:</p>
                    <ul>
                        <li><strong>Mummification:</strong> Requires dry, high temperature, low humidity. Fluid is lost via evaporation.</li>
                        <li><strong>Adipocere:</strong> Requires damp, warm environments. Body fat turns into a firm, wax-like material (hydroxy fatty acids) produced by <em>Clostridium</em> bacteria.</li>
                        <li><strong>Skeletonization:</strong> Rapid in hot climates with scavengers (9-10 days). The <strong>uterus and prostate</strong> are the last organs to decompose.</li>
                    </ul>

                    <div class="pearl-box">
                        <span class="box-title">Pathology Concept: Necrosis</span>
                        <strong>Coagulative necrosis:</strong> Intracellular acidosis denatures proteins, preserving cell outlines. 
                        <strong>Liquefactive necrosis:</strong> Hydrolytic enzymes soften tissue, seen predominantly in the CNS.
                    </div>
                `
            },
            {
                id: 'asphyxia',
                title: 'IV. Asphyxia & Strangulation',
                content: `
                    <p>Asphyxia denotes conditions where tissue hypoxia results from interference with respiration.</p>

                    <h3>Hanging vs. Autoerotic Hanging</h3>
                    <ul>
                        <li><strong>Suicidal Hanging:</strong> Ligature mark is usually an inverted V-shape, peaking at the knot.</li>
                        <li><strong>Autoerotic Hanging:</strong> Intentional temporary cerebral hypoxia for euphoria. Death is accidental, caused by the failure of a "tension release" mechanism.</li>
                    </ul>

                    <div class="pearl-box">
                        <span class="box-title">Exam Pearl: Manual Strangulation</span>
                        The classic internal autopsy findings for manual strangulation (throttling) include multiple fractures of the:
                        <ul style="margin-top:0.5rem; margin-bottom:0;">
                            <li>Greater horn of the hyoid bone</li>
                            <li>Superior horn and plate of the thyroid cartilage</li>
                            <li>Anterior part of the cricoid cartilage</li>
                        </ul>
                    </div>

                    <div class="active-recall">
                        A body is found with a fractured greater horn of the hyoid bone. What is the most likely mechanism of death?
                        <br><span onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">Show Answer</span>
                        <div class="answer">Manual strangulation.</div>
                    </div>
                `
            },
            {
                id: 'obgyn',
                title: 'VI. Abortion & Infanticide',
                content: `
                    <p>A crucial medicolegal question in suspected infanticide is determining if the infant was born alive or was dead in utero.</p>

                    <h3>Signs of Intrauterine Death (Born Dead)</h3>
                    <p><strong>Maceration:</strong> A sterile autolytic process indicating the fetus died in utero and remained there for days. Signs include skin peeling, brown discoloration, and mummification (Grades 1-5).</p>

                    <h3>Signs of Live Birth</h3>
                    <ul>
                        <li>Presence of milk or food in the stomach.</li>
                        <li>Microscopic examination of the lungs showing distended, aerated alveoli.</li>
                    </ul>

                    <div class="confuse-box">
                        <span class="box-title">Must Not Confuse: Hydrostatic Test Pitfalls</span>
                        The Hydrostatic Test (lung float test) checks if lungs float in water, suggesting aeration (breathing). However, <strong>beware of false positives</strong>. Lungs may float due to gas produced by putrefaction (decomposition), not true breathing. Always confirm with histology.
                    </div>
                `
            },
            {
                id: 'sex_tox',
                title: 'VI & VIII. Sexual Assault, ID & Toxicology',
                content: `
                    <h3>Sexual Assault Evidence Collection</h3>
                    <p>Proper chain of custody and sampling are vital. Best practices include:</p>
                    <ul>
                        <li>Taking 2-3 swabs at each relevant site.</li>
                        <li><strong>Crucial:</strong> Air-dry slide smears and swabs before packaging to prevent mold growth. Do not store in wet, sealed tubes.</li>
                    </ul>

                    <h3>Disaster Victim Identification (DVI)</h3>
                    <p>Standardized forms are used globally:</p>
                    <ul>
                        <li><strong>Yellow Forms (Ante-mortem):</strong> Personal data, missing person info from relatives/dentists.</li>
                        <li><strong>Pink Forms (Post-mortem):</strong> Recovery details, physical descriptions, distinguishing marks from the body.</li>
                    </ul>

                    <h3>Forensic Toxicology</h3>
                    <p>Based on Paracelsus's theory: <em>"Poison is in everything... the dosage makes it either a poison or a remedy."</em></p>
                    <p><strong>Sample Collection:</strong></p>
                    <ul>
                        <li>Gastric contents: Collect ~30ml, use NO preservative.</li>
                        <li>Head hair: 150-200 hairs cut from the vertex, stored in aluminum foil (excellent for chronic heavy metal or drug use timelines).</li>
                    </ul>
                `
            }
        ];

        // --- QUESTION BANK (30 Questions) ---
        const questionBank = [
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
    { id: 'sex_tox_1', topicId: 'sex_tox', text: "When collecting biological swabs for a sexual assault kit, a crucial step is to:", options: ["Store them immediately in closed wet tubes", "Air-dry slide smears and swabs before packaging", "Add formalin preservative to the swabs", "Freeze them immediately in liquid nitrogen"], correct: 1, explanation: "Swabs must be air-dried to prevent bacterial and fungal growth, which rapidly degrades DNA in moist environments." },
    { id: 'sex_tox_2', topicId: 'sex_tox', text: "In Disaster Victim Identification (DVI), Ante-mortem data is recorded on which color form?", options: ["Pink", "Yellow", "Blue", "White"], correct: 1, explanation: "Interpol standardizes DVI forms globally: Yellow forms for Ante-mortem (missing person) data, and Pink forms for Post-mortem (body recovery) data." },
    { id: 'sex_tox_3', topicId: 'sex_tox', text: "Paracelsus's theory, the foundational principle of toxicology, states:", options: ["All synthetic chemicals are toxic", "The dosage makes it either a poison or a remedy", "Natural toxins are harmless", "Only heavy metals cause death"], correct: 1, explanation: "Paracelsus stated: 'All things are poison and nothing is without poison; only the dose makes a thing not a poison.'" },
    { id: 'sex_tox_4', topicId: 'sex_tox', text: "For toxicological analysis of chronic drug use or heavy metal exposure, where should head hair samples be cut?", options: ["The nape of the neck", "The vertex (crown)", "The temporal region", "The eyebrows"], correct: 1, explanation: "150-200 hairs should be cut close to the scalp from the vertex, as this area has the most consistent growth rate (approx. 1 cm/month)." },
    { id: 'sex_tox_5', topicId: 'sex_tox', text: "Gastric content sampling for postmortem toxicology requires:", options: ["1000ml with preservative", "30-50ml with NO preservative", "Only solid food remnants", "Immediate neutralization with a base"], correct: 1, explanation: "Gastric contents should be collected without preservatives to avoid contaminating the sample or altering the chemical makeup of ingested toxins." },
    { id: 'sex_tox_6', topicId: 'sex_tox', text: "Which test is considered a 'presumptive' test for semen?", options: ["PSA (Prostate-Specific Antigen) / p30", "Acid Phosphatase (AP) test", "Microscopic identification of spermatozoa", "DNA profiling"], correct: 1, explanation: "Acid Phosphatase is found in high levels in semen but is presumptive because it is also present (in lower amounts) in vaginal secretions and some fungi/plants." },
    { id: 'sex_tox_7', topicId: 'sex_tox', text: "Which finding provides 'confirmatory' evidence of seminal fluid, even if the assailant had a vasectomy?", options: ["Acid Phosphatase", "Toluidine blue", "PSA (p30) or Semenogelin", "Amylase"], correct: 2, explanation: "PSA (p30) and Semenogelin are proteins produced by the prostate and seminal vesicles. They will be present in the ejaculate of a vasectomized male, who will lack spermatozoa." },
    { id: 'sex_tox_8', topicId: 'sex_tox', text: "What is the purpose of using Toluidine Blue dye during a clinical forensic examination for sexual assault?", options: ["To detect semen fluorescence", "To highlight microtrauma and microscopic lacerations in the vaginal/perineal mucosa", "To numb the examination area", "To test for HPV"], correct: 1, explanation: "Toluidine blue selectively stains the nucleated cells in the deeper layers of the epidermis exposed by microtrauma, making subtle tears highly visible." },
    { id: 'sex_tox_9', topicId: 'sex_tox', text: "The most common site of genital injury in an adult victim of forcible vaginal rape is the:", options: ["Cervix", "Anterior vaginal wall", "Posterior fourchette and fossa navicularis", "Labia majora"], correct: 2, explanation: "The posterior fourchette (the bottom junction of the labia minora) is subjected to the greatest tension during forced penetration and frequently tears." },
    { id: 'sex_tox_10', topicId: 'sex_tox', text: "In forensic dentistry, why are teeth so valuable for human identification?", options: ["They contain the most blood", "Enamel is the hardest substance in the body and survives fire, decomposition, and severe trauma", "They never change position during life", "They contain fingerprints"], correct: 1, explanation: "Teeth survive extreme environmental conditions that destroy soft tissues and bone, preserving dental restorations and pulp DNA." },
    { id: 'sex_tox_11', topicId: 'sex_tox', text: "According to Interpol, which of the following is a 'Primary' identifier in DVI?", options: ["Tattoos", "Fingerprints", "Scars", "Jewelry"], correct: 1, explanation: "The three primary identifiers that stand alone in court are: DNA, Fingerprints (Friction ridge analysis), and Dental records (Odontology)." },
    { id: 'sex_tox_12', topicId: 'sex_tox', text: "Which bone is considered the most accurate for determining the sex of an adult skeleton?", options: ["Femur", "Skull", "Pelvis (Ossa coxae)", "Sternum"], correct: 2, explanation: "The pelvis provides the most sexually dimorphic traits (e.g., wider subpubic angle and greater sciatic notch in females for childbirth)." },
    { id: 'sex_tox_13', topicId: 'sex_tox', text: "Which bone is considered the most reliable for estimating the living stature (height) of an unknown skeletal remain?", options: ["Humerus", "Femur", "Radius", "Clavicle"], correct: 1, explanation: "The femur (the longest and strongest bone) has the highest correlation to total living stature." },
    { id: 'sex_tox_14', topicId: 'sex_tox', text: "What is 'Postmortem Redistribution' in toxicology?", options: ["The metabolic breakdown of drugs after death", "The movement of drugs from solid organs (like the liver/lungs) into the blood after death, artificially raising blood concentrations", "The evaporation of volatile poisons", "The leaking of gastric contents into the trachea"], correct: 1, explanation: "Drugs leak down concentration gradients postmortem. Therefore, peripheral blood (e.g., femoral) is preferred over central blood (e.g., cardiac) to avoid falsely elevated toxic levels." },
    { id: 'sex_tox_15', topicId: 'sex_tox', text: "To prevent postmortem glycolysis and ethanol production by bacteria in a blood sample, which preservative is added?", options: ["EDTA", "Sodium Fluoride", "Heparin", "Formalin"], correct: 1, explanation: "Sodium fluoride acts as an enzyme inhibitor (stopping glycolysis) and a preservative (preventing bacterial putrefaction from creating false-positive alcohol levels)." },
    { id: 'sex_tox_16', topicId: 'sex_tox', text: "A body is found with a distinct 'bitter almond' odor and bright pink lividity. What poison is suspected?", options: ["Carbon monoxide", "Cyanide", "Arsenic", "Organophosphates"], correct: 1, explanation: "Cyanide halts cellular respiration, leaving venous blood oxygen-rich (pink). A genetic trait allows some people to smell its bitter almond odor." },
    { id: 'sex_tox_17', topicId: 'sex_tox', text: "Toxicity from which heavy metal is classically associated with 'Mees lines' (white transverse lines on nails), garlic breath, and hyperkeratosis?", options: ["Lead", "Mercury", "Arsenic", "Thallium"], correct: 2, explanation: "Arsenic poisoning presents with severe GI distress, peripheral neuropathy, and characteristic dermatological signs like Mees lines and hyperkeratosis of the palms/soles." },
    { id: 'sex_tox_18', topicId: 'sex_tox', text: "Basophilic stippling of red blood cells, Burton's line (blue line on gums), and wrist drop are classic signs of:", options: ["Lead poisoning", "Iron toxicity", "Arsenic poisoning", "Carbon monoxide poisoning"], correct: 0, explanation: "Lead interferes with heme synthesis (causing anemia and basophilic stippling) and causes motor neuropathies like wrist drop." },
    { id: 'sex_tox_19', topicId: 'sex_tox', text: "A farm worker dies presenting with pinpoint pupils (miosis), excessive salivation, bronchospasm, and muscle fasciculations. What is the likely poison?", options: ["Atropine", "Cocaine", "Organophosphate (insecticide)", "Cyanide"], correct: 2, explanation: "Organophosphates irreversibly inhibit acetylcholinesterase, leading to a massive cholinergic crisis (SLUDGE syndrome: Salivation, Lacrimation, Urination, Defecation, GI distress, Emesis)." },
    { id: 'sex_tox_20', topicId: 'sex_tox', text: "Cocaine abuse commonly leads to sudden death via which mechanism?", options: ["Respiratory depression", "Massive hepatic necrosis", "Coronary artery vasospasm leading to myocardial infarction or lethal arrhythmias", "Renal failure"], correct: 2, explanation: "Cocaine is a powerful sympathomimetic that blocks catecholamine reuptake, causing severe vasoconstriction, hypertension, and ischemia." },
    { id: 'sex_tox_21', topicId: 'sex_tox', text: "Finding which specific metabolite in the urine or blood provides definitive proof of Heroin (diacetylmorphine) use, distinguishing it from other opiates?", options: ["Morphine", "Codeine", "6-Monoacetylmorphine (6-MAM)", "Oxycodone"], correct: 2, explanation: "Heroin rapidly metabolizes into 6-MAM before breaking down into morphine. 6-MAM is unique to heroin." },
    { id: 'sex_tox_22', topicId: 'sex_tox', text: "Methanol (wood alcohol) poisoning is lethal primarily because it metabolizes into:", options: ["Acetaldehyde", "Formic acid", "Acetic acid", "Oxalic acid"], correct: 1, explanation: "Methanol is metabolized by alcohol dehydrogenase into toxic formaldehyde and formic acid, causing severe metabolic acidosis and blindness (optic nerve damage)." },
    { id: 'sex_tox_23', topicId: 'sex_tox', text: "A patient dies after consuming antifreeze. Autopsy reveals massive acute renal failure. What microscopic finding is expected in the kidneys?", options: ["Massive fat droplets", "Calcium oxalate crystals in the tubules", "Amyloid deposits", "Glomerular sclerosis"], correct: 1, explanation: "Ethylene glycol (antifreeze) metabolizes into oxalic acid, which binds with calcium to form insoluble calcium oxalate crystals that physically destroy the renal tubules." },
    { id: 'sex_tox_24', topicId: 'sex_tox', text: "Acetaminophen (Paracetamol) overdose causes death primarily through:", options: ["Cardiotoxicity", "Centrilobular hepatic necrosis (Liver failure)", "Pulmonary edema", "Brain hemorrhage"], correct: 1, explanation: "The toxic metabolite NAPQI depletes glutathione, causing massive, delayed necrosis of the liver (specifically the centrilobular regions)." },
    { id: 'sex_tox_25', topicId: 'sex_tox', text: "Fatal 'Water Intoxication' (e.g., from hazing or contest rituals) causes death via:", options: ["Pulmonary edema", "Severe hyponatremia leading to massive cerebral edema and brain herniation", "Cardiac arrhythmias from hyperkalemia", "Stomach rupture"], correct: 1, explanation: "Massive water intake dilutes blood sodium. Water rushes into brain cells via osmosis, causing lethal swelling within the rigid skull." },
    { id: 'sex_tox_26', topicId: 'sex_tox', text: "Which drug is notorious for causing 'Drug-Facilitated Sexual Assault' (DFSA) due to its rapidly inducing anterograde amnesia, and is colloquially known as 'Roofies'?", options: ["Flunitrazepam (Rohypnol)", "Cocaine", "Methamphetamine", "LSD"], correct: 0, explanation: "Flunitrazepam is a potent benzodiazepine that causes deep sedation and anterograde amnesia, often clearing from the blood very rapidly, complicating delayed toxicology testing." },
    { id: 'sex_tox_27', topicId: 'sex_tox', text: "GHB (Gamma-Hydroxybutyrate) is difficult to detect in DFSA cases because:", options: ["It is a natural hormone", "It is rapidly metabolized and has a very short half-life (undetectable in blood after ~8 hours)", "It does not enter the urine", "Standard lab equipment cannot recognize its mass"], correct: 1, explanation: "GHB metabolizes quickly to CO2 and water, making timely sample collection (within 12 hours for urine, 8 for blood) critical." },
    { id: 'sex_tox_28', topicId: 'sex_tox', text: "Locard's Exchange Principle states:", options: ["Every poison has an antidote", "Every contact leaves a trace", "DNA never degrades", "Insects arrive at a body in a predictable order"], correct: 1, explanation: "Edmond Locard's principle ('Every contact leaves a trace') is the foundation of trace evidence collection, such as pubic hair combing in sexual assaults." },
    { id: 'sex_tox_29', topicId: 'sex_tox', text: "In sexual assault kits, what is the purpose of swabbing bite marks?", options: ["To measure the depth of the bite", "To collect salivary amylase and the assailant's epithelial DNA", "To test for rabies", "To collect the victim's blood"], correct: 1, explanation: "Saliva contains high levels of amylase and sloughed epithelial cells, providing an excellent source of the perpetrator's DNA." },
    { id: 'sex_tox_30', topicId: 'sex_tox', text: "The hallucinogenic compound in 'Magic Mushrooms' (Psilocybe) is:", options: ["LSD", "Mescaline", "Psilocybin / Psilocin", "DMT"], correct: 2, explanation: "Psilocybin is the prodrug naturally occurring in the mushrooms, which is metabolized into the psychoactive psilocin in the body." },
    { id: 'sex_tox_31', topicId: 'sex_tox', text: "A forensic toxicologist needs to determine if a deceased pilot was under the influence of alcohol during a crash, but the body is severely decomposed. What is the best fluid to test?", options: ["Central heart blood", "Urine", "Vitreous Humor", "Gastric contents"], correct: 2, explanation: "The eye is an isolated, privileged space. Vitreous humor resists putrefaction longer than blood and is an excellent matrix for ethanol and electrolyte analysis." },
    { id: 'sex_tox_32', topicId: 'sex_tox', text: "In a closed disaster (like a commercial airplane crash), DVI is generally faster because:", options: ["The bodies are less damaged", "There is a definitive, closed passenger manifest to compare against", "There are more investigators", "The accident site is smaller"], correct: 1, explanation: "A closed manifest provides a specific, limited list of potential victims, allowing investigators to quickly gather exact Ante-mortem (AM) records." },
    { id: 'sex_tox_33', topicId: 'sex_tox', text: "What does 'MNI' stand for in forensic anthropology regarding commingled remains?", options: ["Maximum Number of Injuries", "Minimum Number of Individuals", "Major National Incident", "Multiple Neurological Infarctions"], correct: 1, explanation: "MNI is the lowest possible number of people present in a commingled mass grave (e.g., finding three left femurs means the MNI is 3)." },
    { id: 'sex_tox_34', topicId: 'sex_tox', text: "Strychnine poisoning causes death by:", options: ["Massive liver failure", "Blocking glycine receptors in the spinal cord, leading to violent, tetanic muscle spasms and asphyxia", "Depressing the respiratory center in the brain", "Causing massive internal bleeding"], correct: 1, explanation: "Strychnine blocks inhibitory neurotransmitters, causing extreme muscle contractions, 'risus sardonicus' (grinning), and 'opisthotonos' (severe back arching) until the respiratory muscles fail." },
    { id: 'sex_tox_35', topicId: 'sex_tox', text: "Salicylate (Aspirin) toxicity initially causes which acid-base disturbance?", options: ["Metabolic alkalosis", "Respiratory alkalosis (due to direct stimulation of the medullary respiratory center)", "Metabolic acidosis", "Respiratory acidosis"], correct: 1, explanation: "Aspirin overdose first causes hyperventilation and respiratory alkalosis, which is quickly followed by a severe high anion-gap metabolic acidosis." },
    { id: 'sex_tox_36', topicId: 'sex_tox', text: "The presence of a 'drug mule' carrying packets of cocaine in their GI tract creates a risk of 'Body Packer Syndrome'. If a packet bursts, what is the surgical approach?", options: ["Endoscopic retrieval", "Immediate laparotomy/enterotomy to remove all packets", "Observation and laxatives", "Gastric lavage"], correct: 1, explanation: "A ruptured packet delivers a massive, instantly fatal dose. Endoscopy risks rupturing more packets; emergency laparotomy is required." },
    { id: 'sex_tox_37', topicId: 'sex_tox', text: "A forensic pathologist is collecting tissue for toxicology in a severely decomposed, skeletonized body. Which tissue is best for heavy metal analysis?", options: ["Brain", "Bone or Teeth", "Muscle", "Fat"], correct: 1, explanation: "Heavy metals (like lead and arsenic) substitute for calcium and are permanently deposited in the mineral matrix of bone and teeth." },
    { id: 'sex_tox_38', topicId: 'sex_tox', text: "Which drug exhibits 'zero-order kinetics' in its metabolism, meaning a constant amount is eliminated per hour regardless of the blood concentration?", options: ["Cocaine", "Morphine", "Ethanol (Alcohol)", "Aspirin"], correct: 2, explanation: "Ethanol metabolizes at a steady rate (roughly 15 mg/dL per hour) because the alcohol dehydrogenase enzyme becomes saturated quickly." },
    { id: 'sex_tox_39', topicId: 'sex_tox', text: "Which piece of evidence must NEVER be stored in an airtight plastic bag?", options: ["A blood-stained shirt from a sexual assault", "A pill bottle", "A sample of gastric contents", "A bullet"], correct: 0, explanation: "Biological evidence like bloody or semen-stained clothing must be stored in breathable paper bags to prevent moisture buildup, mold, and DNA destruction." },
    { id: 'sex_tox_40', topicId: 'sex_tox', text: "Conversely, which type of evidence MUST be stored in airtight containers (like metal cans or glass jars)?", options: ["Semen swabs", "Clothing containing volatile accelerants from an arson/fire", "Bone fragments", "Hair samples"], correct: 1, explanation: "Volatile poisons or fire accelerants (like gasoline) will evaporate out of paper bags; they must be sealed airtight to preserve the headspace vapor for analysis." },
    { id: 'sex_tox_41', topicId: 'sex_tox', text: "In cases of suspected inhalant abuse (e.g., 'huffing' paint thinner or aerosols), what is the most common mechanism of sudden death?", options: ["Lung cancer", "Sudden Sniffing Death Syndrome (fatal cardiac arrhythmias due to myocardial sensitization to catecholamines)", "Liver cirrhosis", "Gastric rupture"], correct: 1, explanation: "Volatile hydrocarbons heavily sensitize the heart. A sudden surge of adrenaline (e.g., being caught or startled) triggers ventricular fibrillation." },
    { id: 'sex_tox_42', topicId: 'sex_tox', text: "When evaluating a bite mark, what must be done BEFORE taking the DNA swab?", options: ["Wash the area with soap", "Take a forensic photograph with a scale conforming to ABFO guidelines", "Apply Toluidine blue", "Make a plaster cast"], correct: 1, explanation: "A high-quality, scaled photograph must be taken immediately before any swabbing or manipulation alters the physical appearance of the bite." },
    { id: 'sex_tox_43', topicId: 'sex_tox', text: "What is the primary psychoactive component in Cannabis?", options: ["Cannabidiol (CBD)", "Delta-9-tetrahydrocannabinol (THC)", "Psilocybin", "Cotinine"], correct: 1, explanation: "THC is the principal psychoactive constituent of cannabis." },
    { id: 'sex_tox_44', topicId: 'sex_tox', text: "The 'Gustafson Method' is used in forensic odontology to:", options: ["Extract DNA from teeth", "Estimate age based on physiological changes in the teeth (e.g., attrition, secondary dentin, root resorption)", "Determine sex", "Match bite marks"], correct: 1, explanation: "Gustafson developed a scoring system evaluating six age-related changes in adult teeth to estimate chronological age." },
    { id: 'sex_tox_45', topicId: 'sex_tox', text: "In a sexual assault examination, finding motile (swimming) sperm in the vaginal vault typically indicates intercourse occurred within:", options: ["1-2 hours", "6-24 hours", "72 hours", "1 week"], correct: 1, explanation: "Sperm usually remain motile in the vagina for up to 6-24 hours, though non-motile sperm heads can be found up to 72 hours (and sometimes longer in the cervix)." },
    { id: 'sex_tox_46', topicId: 'sex_tox', text: "Carbon monoxide (CO) levels in the blood are measured as a percentage of:", options: ["Oxygen saturation", "Carboxyhemoglobin (COHb)", "Free carbon", "Methemoglobin"], correct: 1, explanation: "CO binds to hemoglobin to form Carboxyhemoglobin, which is quantified using a CO-oximeter." },
    { id: 'sex_tox_47', topicId: 'sex_tox', text: "Which demographic requires the lowest level of carboxyhemoglobin to suffer fatal CO poisoning?", options: ["Healthy male adults", "Pregnant women", "Elderly individuals with severe coronary artery disease", "Teenagers"], correct: 2, explanation: "People with compromised cardiovascular systems (CAD) cannot tolerate the hypoxia caused by CO; they often die at much lower COHb levels (e.g., 20-30%) than healthy adults (50%+)." },
    { id: 'sex_tox_48', topicId: 'sex_tox', text: "A secondary identifier in DVI (which cannot establish identity on its own but supports it) includes:", options: ["Dental X-rays", "DNA profile", "Fingerprints", "Scars, marks, tattoos, and clothing"], correct: 3, explanation: "While highly useful, tattoos and scars are not mathematically unique enough to be primary identifiers under strict Interpol guidelines." },
    { id: 'sex_tox_49', topicId: 'sex_tox', text: "In a fatal suspected opioid overdose, an autopsy reveals 'foam cones' at the mouth and nose. This is caused by:", options: ["Epilepsy", "Severe non-cardiogenic pulmonary edema", "Gastric acid reflux", "Bacterial gas"], correct: 1, explanation: "Opioids cause profound respiratory depression leading to hypoxia, which damages pulmonary capillaries, resulting in massive fluid leakage (pulmonary edema) that whips into foam." },
    { id: 'sex_tox_50', topicId: 'sex_tox', text: "An examination of the hymen reveals a transecting tear extending to the base. This finding:", options: ["Definitively proves rape", "Indicates penetration occurred, but cannot alone differentiate between consensual sex, trauma, or assault", "Proves virginity prior to the incident", "Is a normal anatomical variant"], correct: 1, explanation: "Hymenal tears indicate blunt trauma or penetration, but medical findings alone cannot establish the legal issue of consent." }
];
    ];

        // --- APP STATE & PERSISTENCE ---
        const DEFAULT_STATE = {
            xp: 0,
            streak: 0,
            lastActiveDate: null,
            completedModules: [],
            topicStats: {
                'sys': { attempted: 0, correct: 0 },
                'trauma': { attempted: 0, correct: 0 },
                'pmc': { attempted: 0, correct: 0 },
                'asphyxia': { attempted: 0, correct: 0 },
                'obgyn': { attempted: 0, correct: 0 },
                'sex_tox': { attempted: 0, correct: 0 }
            },
            recentScores: [],
            highestMock: null
        };

        let appState = JSON.parse(JSON.stringify(DEFAULT_STATE));
        let currentQuiz = { questions: [], currentIndex: 0, score: 0, type: '', timer: null };

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
                    try { appState = { ...DEFAULT_STATE, ...JSON.parse(saved) }; } 
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
                    alert("Progress reset to zero.");
                }
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
                document.querySelectorAll('.view-section').forEach(el => el.classList.remove('active'));
                document.getElementById(`view-${viewId}`).classList.add('active');
                
                document.querySelectorAll('.nav-item').forEach(el => el.classList.remove('active'));
                const navItem = Array.from(document.querySelectorAll('.nav-item')).find(el => el.getAttribute('onclick').includes(viewId));
                if(navItem) navItem.classList.add('active');

                document.getElementById('sidebar').classList.remove('open'); // close mobile nav
                clearInterval(currentQuiz.timer); // stop timers if navigating away

                this.updateGlobalUI();

                if(viewId === 'dashboard') this.renderDashboard();
                if(viewId === 'practice') this.renderPracticeHub();
                if(viewId === 'progress') this.renderProgress();
            },

            updateGlobalUI() {
                const rank = this.getRank();
                document.getElementById('ui-rank-name').innerText = rank.name;
                document.getElementById('ui-xp-total').innerText = appState.xp;
                document.getElementById('ui-streak').innerText = appState.streak;
                document.getElementById('ui-xp-bar').style.width = `${rank.progress}%`;
            },

            // --- VIEW RENDERERS ---
            renderDashboard() {
                document.getElementById('dash-modules').innerText = appState.completedModules.length;
                let totalQ = 0;
                for(let key in appState.topicStats) totalQ += appState.topicStats[key].attempted;
                document.getElementById('dash-questions').innerText = totalQ;
                document.getElementById('dash-streak').innerText = appState.streak;

                // Weak Topics
                const weakIds = this.getWeakTopics();
                const weakContainer = document.getElementById('dash-weak-topics');
                weakContainer.innerHTML = '';
                if(weakIds.length === 0) {
                    weakContainer.innerHTML = '<p class="text-success" style="margin-top:1rem;">✅ No weak topics detected. Great job!</p>';
                } else {
                    weakIds.forEach(id => {
                        const mod = courseModules.find(m => m.id === id);
                        const stats = appState.topicStats[id];
                        const acc = Math.round((stats.correct / stats.attempted) * 100);
                        weakContainer.innerHTML += `
                            <div style="background:var(--bg-panel); padding:0.75rem; margin-top:0.5rem; border-left:3px solid var(--danger); border-radius:4px; display:flex; justify-content:space-between;">
                                <span>${mod.title}</span>
                                <strong class="text-danger">${acc}% Acc</strong>
                            </div>
                        `;
                    });
                }

                // Recent Scores
                const recentContainer = document.getElementById('dash-recent-scores');
                recentContainer.innerHTML = '';
                if(appState.recentScores.length === 0) {
                    recentContainer.innerHTML = '<p class="text-muted">No quizzes completed yet.</p>';
                } else {
                    appState.recentScores.slice(-3).reverse().forEach(score => {
                        recentContainer.innerHTML += `
                            <div style="padding:0.5rem 0; border-bottom:1px solid var(--border-color); display:flex; justify-content:space-between;">
                                <span>${score.type}</span>
                                <strong>${score.score}/${score.total}</strong>
                            </div>
                        `;
                    });
                }
            },

            renderModulesList() {
                const container = document.getElementById('modules-container');
                container.innerHTML = '';
                courseModules.forEach(mod => {
                    const isDone = appState.completedModules.includes(mod.id);
                    container.innerHTML += `
                        <div class="module-list-item" onclick="app.openModule('${mod.id}')">
                            <div>
                                <strong>${mod.title}</strong>
                                <div class="text-muted" style="font-size:0.85rem; margin-top:0.25rem;">Study concepts, facts, and exam pearls</div>
                            </div>
                            <span class="badge ${isDone ? 'badge-success' : 'badge-warning'}">${isDone ? '✓ Completed' : 'Pending'}</span>
                        </div>
                    `;
                });
            },

            openModule(id) {
                const mod = courseModules.find(m => m.id === id);
                document.getElementById('module-title').innerText = mod.title;
                document.getElementById('module-content').innerHTML = mod.content;
                
                const btn = document.getElementById('btn-mark-studied');
                btn.onclick = () => {
                    if(!appState.completedModules.includes(id)) {
                        appState.completedModules.push(id);
                        this.addXP(10);
                        alert(`Module marked as studied! +10 XP`);
                        this.renderModulesList();
                    } else {
                        alert("Module already marked as studied.");
                    }
                    this.navigate('modules');
                };

                this.navigate('module-detail');
            },

            renderPracticeHub() {
                const weakIds = this.getWeakTopics();
                const weakBtn = document.getElementById('btn-weak-quiz');
                if(weakIds.length === 0) {
                    weakBtn.disabled = true;
                    weakBtn.innerText = "No Weak Topics Yet";
                } else {
                    weakBtn.disabled = false;
                    weakBtn.innerText = `Start Weak Topic Quiz (${weakIds.length} topics)`;
                }

                const list = document.getElementById('quiz-topic-list');
                list.innerHTML = '';
                courseModules.forEach(mod => {
                    list.innerHTML += `
                        <div class="module-list-item" onclick="app.startQuiz('topic', '${mod.id}')">
                            <span>${mod.title.split('.')[0]} Specific</span>
                            <span style="font-size:1.2rem;">→</span>
                        </div>
                    `;
                });
            },

            renderProgress() {
                document.getElementById('prog-xp').innerText = appState.xp;
                document.getElementById('prog-rank').innerText = this.getRank().name;
                document.getElementById('prog-mock').innerText = appState.highestMock ? `${appState.highestMock}%` : 'N/A';

                const statCont = document.getElementById('progress-topic-stats');
                statCont.innerHTML = '';
                courseModules.forEach(mod => {
                    const stats = appState.topicStats[mod.id];
                    const acc = stats.attempted > 0 ? Math.round((stats.correct/stats.attempted)*100) : 0;
                    const color = acc >= 70 ? 'var(--success)' : (stats.attempted > 0 ? 'var(--danger)' : 'var(--text-muted)');
                    
                    statCont.innerHTML += `
                        <div style="margin-bottom: 1rem;">
                            <div class="flex justify-between" style="font-size:0.9rem; margin-bottom:0.25rem;">
                                <span>${mod.title.split('.')[0]}</span>
                                <span style="color:${color}">${acc}% (${stats.correct}/${stats.attempted})</span>
                            </div>
                            <div class="progress-bar-bg"><div class="progress-bar-fill" style="width:${acc}%; background:${color};"></div></div>
                        </div>
                    `;
                });
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

                if (mode === 'mixed') {
                    pool = [...questionBank];
                    title = "Mixed Quiz";
                } else if (mode === 'weak') {
                    const weakIds = this.getWeakTopics();
                    pool = questionBank.filter(q => weakIds.includes(q.topicId));
                    title = "Weak Topic Quiz";
                } else if (mode === 'topic') {
                    pool = questionBank.filter(q => q.topicId === topicId);
                    const mod = courseModules.find(m => m.id === topicId);
                    title = `${mod.title.split('.')[0]} Quiz`;
                }

                this.shuffle(pool);
                // limit non-mock to 10 max
                if (pool.length > 10) pool = pool.slice(0, 10);

                if(pool.length === 0) {
                    alert("Not enough questions available for this mode.");
                    return;
                }

                currentQuiz = {
                    questions: pool,
                    currentIndex: 0,
                    score: 0,
                    type: title,
                    isMock: false
                };

                document.getElementById('quiz-header').innerText = title;
                document.getElementById('timer-bar').style.display = 'none';
                this.navigate('quiz-active');
                this.renderQuizQuestion();
            },

            startMockExam() {
                let pool = [...questionBank];
                this.shuffle(pool);
                pool = pool.slice(0, 20); // 20 questions

                currentQuiz = {
                    questions: pool,
                    currentIndex: 0,
                    score: 0,
                    type: "Mock Exam",
                    isMock: true,
                    timeLimit: 20 * 60, // 20 mins in seconds
                    timeRemaining: 20 * 60
                };

                document.getElementById('quiz-header').innerText = "Mock Exam Simulation";
                document.getElementById('timer-bar').style.display = 'block';
                this.navigate('quiz-active');
                this.renderQuizQuestion();
                this.startTimer();
            },

            startTimer() {
                const bar = document.getElementById('timer-bar');
                currentQuiz.timer = setInterval(() => {
                    currentQuiz.timeRemaining--;
                    const pct = (currentQuiz.timeRemaining / currentQuiz.timeLimit) * 100;
                    bar.style.width = `${pct}%`;
                    if(currentQuiz.timeRemaining <= 0) {
                        clearInterval(currentQuiz.timer);
                        alert("Time's up!");
                        this.finishQuiz();
                    }
                }, 1000);
            },

            renderQuizQuestion() {
                const q = currentQuiz.questions[currentQuiz.currentIndex];
                document.getElementById('quiz-progress').innerText = `${currentQuiz.currentIndex + 1} / ${currentQuiz.questions.length}`;
                document.getElementById('quiz-question-text').innerText = q.text;
                
                const optContainer = document.getElementById('quiz-options-container');
                optContainer.innerHTML = '';
                
                q.options.forEach((opt, idx) => {
                    optContainer.innerHTML += `<button class="quiz-option" onclick="app.answerQuestion(${idx})">${opt}</button>`;
                });

                document.getElementById('quiz-feedback').style.display = 'none';
                document.getElementById('quiz-next-btn').classList.add('hidden');
            },

            answerQuestion(selectedIndex) {
                const q = currentQuiz.questions[currentQuiz.currentIndex];
                const isCorrect = (selectedIndex === q.correct);
                
                // Track stats
                appState.topicStats[q.topicId].attempted += 1;
                if(isCorrect) {
                    appState.topicStats[q.topicId].correct += 1;
                    currentQuiz.score += 1;
                    this.addXP(5); // 5 XP per correct answer
                }

                // UI Update
                const btns = document.querySelectorAll('.quiz-option');
                btns.forEach((btn, idx) => {
                    btn.disabled = true;
                    if(idx === q.correct) btn.classList.add('correct');
                    if(idx === selectedIndex && !isCorrect) btn.classList.add('wrong');
                });

                // Feedback
                const fBox = document.getElementById('quiz-feedback');
                const fTitle = document.getElementById('quiz-feedback-title');
                const fText = document.getElementById('quiz-feedback-text');
                
                fBox.style.display = 'block';
                fBox.style.borderLeftColor = isCorrect ? 'var(--success)' : 'var(--danger)';
                fTitle.innerText = isCorrect ? 'Correct!' : 'Incorrect';
                fTitle.className = isCorrect ? 'text-success' : 'text-danger';
                fText.innerText = q.explanation;

                document.getElementById('quiz-next-btn').classList.remove('hidden');
                this.saveState(); // save progress instantly
            },

            nextQuizQuestion() {
                currentQuiz.currentIndex++;
                if (currentQuiz.currentIndex < currentQuiz.questions.length) {
                    this.renderQuizQuestion();
                } else {
                    this.finishQuiz();
                }
            },

            finishQuiz() {
                clearInterval(currentQuiz.timer);
                
                const total = currentQuiz.questions.length;
                const score = currentQuiz.score;
                const pct = Math.round((score / total) * 100);

                // Save Score
                appState.recentScores.push({ type: currentQuiz.type, score: score, total: total });
                
                if(currentQuiz.isMock) {
                    this.addXP(50); // completion bonus
                    if(appState.highestMock === null || pct > appState.highestMock) {
                        appState.highestMock = pct;
                    }
                }
                this.saveState();

                // Build Results View
                document.getElementById('results-title').innerText = currentQuiz.isMock ? "Mock Exam Results" : "Quiz Complete";
                document.getElementById('results-score').innerText = `${pct}%`;
                document.getElementById('results-score').style.color = pct >= 70 ? 'var(--success)' : 'var(--danger)';
                document.getElementById('results-summary').innerText = `You answered ${score} out of ${total} correctly.`;
                
                // Build Breakdown
                const breakdown = document.getElementById('results-breakdown');
                breakdown.innerHTML = '';
                
                // Count topics in this specific quiz
                let sessionStats = {};
                currentQuiz.questions.forEach((q, idx) => {
                    if(!sessionStats[q.topicId]) sessionStats[q.topicId] = { total: 0 };
                    sessionStats[q.topicId].total += 1;
                });

                for(let tId in sessionStats) {
                    const mod = courseModules.find(m => m.id === tId);
                    breakdown.innerHTML += `<div style="margin-top:0.5rem; padding: 0.5rem; background: var(--bg-base); border-radius: 4px;">• ${mod.title} (${sessionStats[tId].total} questions)</div>`;
                }

                this.navigate('results');
            },

            setupListeners() {
                document.getElementById('mobile-menu-btn').addEventListener('click', () => {
                    document.getElementById('sidebar').classList.toggle('open');
                });
            }
        };

        // Boot
        window.addEventListener('DOMContentLoaded', () => {
            app.init();
        });

    </script>
</body>
</html>
