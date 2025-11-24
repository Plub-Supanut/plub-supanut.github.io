# plub-supanut.github.io
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fed 101: คู่มือสำรวจธนาคารกลางสหรัฐฯ (AI Edition)</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- Add Markdown parser for AI responses -->
    <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Sarabun:wght@400;600;700&display=swap" rel="stylesheet">
    <!-- 
        Chosen Palette: Warm Neutral (Stone, Teal) + Indigo for AI features
        Application Structure Plan: 
        1. Top Navigation Bar: Added "AI Lab ✨"
        2. Home, Structure, Jobs, Process, Data Sections: Kept original educational content.
        3. NEW "AI Lab" Section:
            - Tabbed interface for 3 AI tools.
            - Tool 1: Ask the Expert (General Q&A).
            - Tool 2: Jargon Buster (Simplifier).
            - Tool 3: Policy Simulator (Scenario analysis based on Dual Mandate).
        4. Integration: Uses Gemini API to process user inputs and generate educational responses in Thai.
        
        Visualization & Content Choices:
        - Kept all original visualizations (Cards, Tool Buttons, Chart.js).
        - Added AI Interaction Cards: Clean input areas with clear call-to-action buttons using the sparkle emoji.
        - Loading States: Visual feedback when waiting for LLM response.
        - Markdown Rendering: For nicely formatted AI answers.

        CONFIRMATION: NO SVG graphics used. NO Mermaid JS used.
    -->
    <style>
        body {
            font-family: 'Sarabun', sans-serif;
            background-color: #f8f7f6; /* Warm stone bg */
        }
        .nav-link {
            @apply px-4 py-2 text-stone-600 hover:text-teal-700 hover:bg-stone-200 rounded-lg transition-colors duration-200;
        }
        .nav-link.active {
            @apply bg-teal-600 text-white hover:text-white hover:bg-teal-700;
        }
        /* Special style for AI Nav Link */
        .nav-link-ai {
            @apply text-indigo-600 hover:text-indigo-800 hover:bg-indigo-50 font-bold;
        }
        .nav-link-ai.active {
            @apply bg-indigo-600 text-white hover:text-white hover:bg-indigo-700;
        }
        
        .card {
            @apply bg-white p-6 rounded-xl shadow-lg transition-shadow duration-300 hover:shadow-xl;
        }
        .btn-tool {
            @apply w-full text-left px-4 py-3 rounded-lg bg-stone-100 text-stone-700 hover:bg-stone-200;
        }
        .btn-tool.active {
            @apply bg-teal-600 text-white;
        }
        /* AI Tool Tabs */
        .tab-btn {
            @apply px-4 py-2 text-sm font-medium rounded-t-lg border-b-2 border-transparent hover:text-indigo-600 hover:border-indigo-300 transition-all;
        }
        .tab-btn.active {
            @apply text-indigo-700 border-indigo-600 bg-indigo-50;
        }
        
        .chart-container {
            position: relative;
            width: 100%;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            height: 350px;
            max-height: 400px;
        }
        @media (min-width: 768px) {
            .chart-container {
                height: 400px;
            }
        }
        /* Markdown Styles within AI response */
        .prose p { margin-bottom: 0.5em; }
        .prose ul { list-style-type: disc; padding-left: 1.5em; margin-bottom: 0.5em; }
        .prose strong { color: #4338ca; } /* Indigo-700 */
    </style>
</head>
<body class="text-stone-800">

    <!-- Header & Navigation -->
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <nav class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                <div class="flex-shrink-0 flex items-center gap-2">
                    <h1 class="text-2xl font-bold text-teal-700">Fed 101</h1>
                    <span class="bg-indigo-100 text-indigo-800 text-xs font-semibold px-2.5 py-0.5 rounded">AI Powered</span>
                </div>
                <div class="hidden md:block">
                    <div class="flex space-x-1" id="nav-links">
                        <a href="#home" class="nav-link active">หน้าแรก</a>
                        <a href="#structure" class="nav-link">โครงสร้าง</a>
                        <a href="#jobs" class="nav-link">หน้าที่</a>
                        <a href="#process" class="nav-link">กระบวนการ</a>
                        <a href="#data" class="nav-link">ข้อมูล</a>
                        <a href="#ai-lab" class="nav-link nav-link-ai">ห้องทดลอง AI ✨</a>
                    </div>
                </div>
                <div class="md:hidden">
                    <select id="mobile-nav" class="w-full rounded-md border-stone-300 shadow-sm focus:border-teal-500 focus:ring-teal-500">
                        <option value="#home">หน้าแรก</option>
                        <option value="#structure">โครงสร้างองค์กร</option>
                        <option value="#jobs">หน้าที่หลัก</option>
                        <option value="#process">กระบวนการทำงาน</option>
                        <option value="#data">ตัวอย่างข้อมูล</option>
                        <option value="#ai-lab">✨ ห้องทดลอง AI</option>
                    </select>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content -->
    <main class="container mx-auto px-4 sm:px-6 lg:px-8 py-8">

        <!-- Section: Home -->
        <section id="home" class="pt-8 text-center">
            <h2 class="text-4xl font-bold text-teal-800 mb-4">"เฟด" (The Fed) คืออะไร?</h2>
            <p class="text-xl text-stone-600 max-w-3xl mx-auto">
                "เฟด" (Fed) หรือชื่อเต็มคือ **Federal Reserve System** คือ **ธนาคารกลางของสหรัฐอเมริกา**
                <br>
                ลองนึกถึง "ธนาคารแห่งประเทศไทย" แต่เป็นเวอร์ชั่นของอเมริกาครับ เฟดถูกก่อตั้งขึ้นในปี 1913 เพื่อสร้างระบบการเงินที่มั่นคงและยืดหยุ่นให้กับประเทศ
            </p>
            <p class="text-lg text-stone-600 max-w-3xl mx-auto mt-4">
                เป้าหมายหลักของเฟด (ที่เราเรียกว่า "Dual Mandate") มี 2 อย่างคือ:
                <br>
                1. **การจ้างงานเต็มศักยภาพ (Maximum Employment):** พยายามให้คนมีงานทำมากที่สุด
                <br>
                2. **การรักษาเสถียรภาพราคา (Stable Prices):** ควบคุมเงินเฟ้อให้อยู่ในระดับต่ำและคงที่ (เป้าหมายคือ 2%)
            </p>
        </section>

        <!-- Section: Structure -->
        <section id="structure" class="pt-20">
            <h2 class="text-3xl font-bold text-center mb-8">โครงสร้างองค์กร: ใครเป็นใครในเฟด?</h2>
            <p class="text-lg text-stone-600 text-center max-w-2xl mx-auto mb-10">
                เฟดไม่ได้เป็นองค์กรเดียว แต่เป็น "ระบบ" (System) ที่มีโครงสร้างกึ่งรัฐกึ่งเอกชน เพื่อกระจายอำนาจและป้องกันการแทรกแซงทางการเมือง ประกอบด้วย 3 เสาหลัก:
            </p>
            
            <div class="grid md:grid-cols-3 gap-8">
                <!-- Card 1: Board of Governors -->
                <div class="card text-center">
                    <div class="text-5xl mb-4">🏛️</div>
                    <h3 class="text-2xl font-bold text-teal-700 mb-3">คณะผู้ว่าการ (Board of Governors)</h3>
                    <p class="text-stone-600">
                        ตั้งอยู่ที่กรุงวอชิงตัน ดี.ซี. เปรียบเหมือน "มันสมอง" ส่วนกลางที่เป็นหน่วยงานของรัฐบาล
                        <br><br>
                        ประกอบด้วยผู้ว่าการ 7 คน (รวมถึงประธานเฟด เช่น Jerome Powell) ที่ได้รับการแต่งตั้งโดยประธานาธิบดีสหรัฐฯ และรับรองโดยวุฒิสภา มีวาระ 14 ปี
                    </p>
                </div>
                <!-- Card 2: 12 Reserve Banks -->
                <div class="card text-center">
                    <div class="text-5xl mb-4">🏦</div>
                    <h3 class="text-2xl font-bold text-teal-700 mb-3">ธนาคารกลาง 12 แห่ง (12 Reserve Banks)</h3>
                    <p class="text-stone-600">
                        เปรียบเหมือน "แขนขา" ที่กระจายอยู่ทั่วประเทศ (เช่น เฟดนิวยอร์ก, เฟดซานฟรานซิสโก)
                        <br><br>
                        ทำหน้าที่เป็นธนาคารของธนาคารพาณิชย์ในเขตของตน, วิจัยเศรษฐกิจในพื้นที่, และให้บริการชำระเงิน (เช่น พิมพ์ธนบัตร, โอนเงิน)
                    </p>
                </div>
                <!-- Card 3: FOMC -->
                <div class="card text-center">
                    <div class="text-5xl mb-4">🗳️</div>
                    <h3 class="text-2xl font-bold text-teal-700 mb-3">คณะกรรมการ FOMC (The FOMC)</h3>
                    <p class="text-stone-600">
                        นี่คือ **"หัวใจสำคัญ"** ที่เราพูดถึงกันบ่อยๆ ย่อมาจาก Federal Open Market Committee
                        <br><br>
                        เป็นกลุ่มคนที่ตัดสินใจเรื่อง **"นโยบายการเงิน"** (เช่น การขึ้น/ลดดอกเบี้ย) ประกอบด้วยผู้ว่าการ 7 คน + ประธานเฟดสาขานิวยอร์ก + ประธานเฟดอีก 4 สาขา (หมุนเวียนกัน)
                    </p>
                </div>
            </div>
             <p class="text-lg text-stone-600 text-center max-w-3xl mx-auto mt-10">
                [Image of Federal Reserve System structure diagram]
                <br>
                แผนภาพนี้แสดงให้เห็นว่า คณะผู้ว่าการ (Board) ทำหน้าที่กำกับดูแลธนาคารกลาง 12 แห่ง (Reserve Banks) และทั้งสองส่วนนี้จะส่งสมาชิกไปรวมกันเป็นคณะกรรมการ FOMC เพื่อตัดสินใจนโยบายการเงิน
            </p>
        </section>

        <!-- Section: Jobs -->
        <section id="jobs" class="pt-20">
            <h2 class="text-3xl font-bold text-center mb-10">หน้าที่หลัก: เฟดทำอะไรบ้าง?</h2>
            <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-6" id="job-cards">
                
                <div class="card cursor-pointer" data-job="policy">
                    <h3 class="text-xl font-bold text-teal-700 mb-2">1. กำหนดนโยบายการเงิน (Monetary Policy)</h3>
                    <p class="text-stone-600" id="job-policy-desc" style="display: none;">
                        งานที่สำคัญที่สุด คือการควบคุมปริมาณเงินและดอกเบี้ยในระบบ เพื่อให้บรรลุเป้าหมาย 2 ข้อ (การจ้างงานสูงสุด และ เงินเฟ้อคงที่)
                    </p>
                    <span class="text-teal-600 text-sm font-semibold">คลิกเพื่ออ่าน</span>
                </div>

                <div class="card cursor-pointer" data-job="supervision">
                    <h3 class="text-xl font-bold text-teal-700 mb-2">2. กำกับดูแลธนาคาร (Bank Supervision)</h3>
                    <p class="text-stone-600" id="job-supervision-desc" style="display: none;">
                        ตรวจสอบและกำกับดูแลธนาคารพาณิชย์ต่างๆ เพื่อให้แน่ใจว่าธนาคารเหล่านั้นมั่นคง, ปลอดภัย, และปฏิบัติต่อลูกค้าอย่างเป็นธรรม
                    </p>
                    <span class="text-teal-600 text-sm font-semibold">คลิกเพื่ออ่าน</span>
                </div>

                <div class="card cursor-pointer" data-job="stability">
                    <h3 class="text-xl font-bold text-teal-700 mb-2">3. รักษาเสถียรภาพการเงิน (Financial Stability)</h3>
                    <p class="text-stone-600" id="job-stability-desc" style="display: none;">
                        คอยจับตาดูความเสี่ยงต่างๆ ในระบบการเงิน (เช่น ฟองสบู่) และพยายามป้องกันไม่ให้เกิดวิกฤตการเงินเหมือนในอดีต
                    </p>
                    <span class="text-teal-600 text-sm font-semibold">คลิกเพื่ออ่าน</span>
                </div>
                
                <div class="card cursor-pointer" data-job="payments">
                    <h3 class="text-xl font-bold text-teal-700 mb-2">4. บริการระบบชำระเงิน (Payment Services)</h3>
                    <p class="text-stone-600" id="job-payments-desc" style="display: none;">
                        เป็น "ธนาคารของธนาคาร" และ "ธนาคารของรัฐบาล" ให้บริการโอนเงิน, เบิกจ่ายเช็ค, และดูแลการพิมพ์ธนบัตรดอลลาร์สหรัฐ
                    </p>
                    <span class="text-teal-600 text-sm font-semibold">คลิกเพื่ออ่าน</span>
                </div>

            </div>
        </section>
        
        <!-- Section: Process -->
        <section id="process" class="pt-20">
            <h2 class="text-3xl font-bold text-center mb-4">กระบวนการทำงาน: เฟด "ขึ้น/ลดดอกเบี้ย" อย่างไร?</h2>
            <p class="text-lg text-stone-600 text-center max-w-3xl mx-auto mb-10">
                นี่คือกระบวนการที่เราสนใจครับ! การตัดสินใจนี้เกิดขึ้นในการประชุม **FOMC** ซึ่งจะจัดขึ้นประมาณ 8 ครั้งต่อปี (หรือทุก 6 สัปดาห์)
            </p>

            <div class="bg-white rounded-xl shadow-lg p-6 md:p-8">
                <h3 class="text-2xl font-bold mb-6">ขั้นตอนการประชุม FOMC</h3>
                <ol class="list-decimal list-inside space-y-3 text-stone-700">
                    <li><b>รวบรวมข้อมูล:</b> นักเศรษฐศาสตร์ของเฟดทั่วประเทศรวบรวมข้อมูลเศรษฐกิจ (ตัวเลขจ้างงาน, เงินเฟ้อ, GDP ฯลฯ)</li>
                    <li><b>วิเคราะห์และถกเถียง:</b> คณะกรรมการ FOMC (12 คน) นำข้อมูลมาวิเคราะห์และถกเถียงกันถึง "อุณหภูมิ" ของเศรษฐกิจ (ร้อนไป หรือ หนาวไป)</li>
                    <li><b>ลงมติ:</b> คณะกรรมการลงคะแนนเสียงว่าจะ "เหยียบเบรก" (ขึ้นดอกเบี้ย), "เหยียบคันเร่ง" (ลดดอกเบี้ย), หรือ "คงไว้" (คงดอกเบี้ย)</li>
                    <li><b>แถลงการณ์:</b> ประธานเฟด (Jerome Powell) ออกมาแถลงผลการประชุมและส่งสัญญาณทิศทางในอนาคตให้ตลาดรับรู้</li>
                </ol>
            </div>

            <h3 class="text-2xl font-bold text-center mt-12 mb-6">เครื่องมือ 3 อย่างที่ FOMC ใช้</h3>
            <p class="text-lg text-stone-600 text-center max-w-3xl mx-auto mb-10">
                เมื่อ FOMC ตัดสินใจแล้ว พวกเขามี 3 เครื่องมือหลักในการ "ปรับจูน" เศรษฐกิจ (คลิกเพื่อดูว่าแต่ละอันทำงานอย่างไร):
            </p>

            <div class="grid md:grid-cols-3 gap-6">
                <!-- Tool Buttons -->
                <div class="md:col-span-1 space-y-3" id="tool-buttons">
                    <button class="btn-tool active" data-tool="rates">
                        <span class="font-bold">1. ดอกเบี้ยนโยบาย (Fed Funds Rate)</span>
                        <span class="block text-sm">เครื่องมือหลักที่ใช้บ่อยที่สุด</span>
                    </button>
                    <button class="btn-tool" data-tool="omo">
                        <span class="font-bold">2. การซื้อขายพันธบัตร (OMO)</span>
                        <span class="block text-sm">การอัดฉีด/ดูดซับเงิน (QE/QT)</span>
                    </button>
                    <button class="btn-tool" data-tool="reserves">
                        <span class="font-bold">3. อัตราเงินสำรอง (Reserve Requirements)</span>
                        <span class="block text-sm">ปัจจุบันไม่ค่อยได้ใช้</span>
                    </button>
                </div>
                
                <!-- Tool Description -->
                <div class="md:col-span-2 card bg-stone-50 min-h-[250px]">
                    <div id="tool-desc-rates" class="tool-description">
                        <h4 class="text-xl font-bold text-teal-800 mb-3">ดอกเบี้ยนโยบาย (Fed Funds Rate)</h4>
                        <p class="text-stone-700">นี่คือดอกเบี้ยที่ธนาคารพาณิชย์กู้ยืมเงินกันเองในชั่วข้ามคืน เฟดไม่ได้บังคับ แต่จะ "กำหนดเป้าหมาย" (Target Range) ไว้</p>
                        <ul class="list-disc list-inside mt-4 space-y-2">
                            <li><b>เมื่อเฟด "ขึ้น" ดอกเบี้ย:</b> 📈 ต้นทุนการกู้ยืมของธนาคารสูงขึ้น -> ธนาคารส่งต่อต้นทุนไปให้เรา (ดอกเบี้ยบ้าน, รถ, บัตรเครดิตแพงขึ้น) -> คนกู้น้อยลง, ออมมากขึ้น, การใช้จ่ายชะลอตัว -> <b>เงินเฟ้อลดลง</b> (แต่การจ้างงานอาจชะลอ)</li>
                            <li><b>เมื่อเฟด "ลด" ดอกเบี้ย:</b> 📉 ต้นทุนการกู้ยืมถูกลง -> ดอกเบี้ยเงินกู้ถูกลง -> คนกู้เงินมาลงทุน/ใช้จ่ายมากขึ้น -> <b>เศรษฐกิจเติบโต</b> (แต่เงินเฟ้ออาจสูงขึ้น)</li>
                        </ul>
                    </div>
                    
                    <div id="tool-desc-omo" class="tool-description" style="display: none;">
                        <h4 class="text-xl font-bold text-teal-800 mb-3">การซื้อขายพันธบัตร (Open Market Operations - OMO)</h4>
                        <p class="text-stone-700">คือการที่เฟดเข้าไปซื้อหรือขายพันธบัตรรัฐบาลในตลาดเปิด</p>
                        <ul class="list-disc list-inside mt-4 space-y-2">
                            <li><b>Quantitative Easing (QE):</b> 💸 เฟด "ซื้อ" พันธบัตรจากตลาด -> เท่ากับ "พิมพ์เงินใหม่" อัดฉีดเข้าสู่ระบบ -> เพิ่มสภาพคล่อง, กดดอกเบี้ยระยะยาวให้ต่ำลง -> กระตุ้นเศรษฐกิจ</li>
                            <li><b>Quantitative Tightening (QT):</b> 🌪️ เฟด "ขาย" พันธบัตร (หรือปล่อยให้หมดอายุ) -> เท่ากับ "ดูดเงิน" ออกจากระบบ -> ลดสภาพคล่อง, ดันดอกเบี้ยระยะยาวให้สูงขึ้น -> ชะลอเศรษฐกิจ</li>
                        </ul>
                    </div>
                    
                    <div id="tool-desc-reserves" class="tool-description" style="display: none;">
                        <h4 class="text-xl font-bold text-teal-800 mb-3">อัตราเงินสำรอง (Reserve Requirements)</h4>
                        <p class="text-stone-700">ในอดีต เฟดเคยบังคับให้ธนาคารพาณิชย์ต้อง "กันเงินสด" ส่วนหนึ่งไว้ ห้ามปล่อยกู้ แต่ปัจจุบัน (ตั้งแต่ปี 2020) เฟดกำหนดอัตรานี้เป็น 0% และหันไปใช้เครื่องมืออื่นเป็นหลักครับ</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section: Data -->
        <section id="data" class="pt-20">
            <h2 class="text-3xl font-bold text-center mb-4">ตัวอย่างข้อมูล: การตัดสินใจของเฟดในโลกจริง</h2>
            <p class="text-lg text-stone-600 text-center max-w-3xl mx-auto mb-10">
                ลองมาดูข้อมูล "ดอกเบี้ยนโยบาย" (Fed Funds Rate) ในช่วง 3 ปีที่ผ่านมา ซึ่งเชื่อมโยงกับคำถามของคุณครับ
            </p>

            <div class="card">
                <div class="flex flex-col md:flex-row md:items-center md:justify-between mb-4">
                    <h3 class="text-2xl font-bold text-teal-800 mb-2 md:mb-0">ประวัติอัตราดอกเบี้ยนโยบาย (Fed Funds Rate Target)</h3>
                    <div>
                        <label for="year-filter" class="text-sm font-medium text-stone-600 mr-2">เลือกปีที่สนใจ:</label>
                        <select id="year-filter" class="rounded-md border-stone-300 shadow-sm focus:border-teal-500 focus:ring-teal-500">
                            <option value="all">ทั้งหมด (2022-2025)</option>
                            <option value="2022">2022: เริ่มต้นการต่อสู้</option>
                            <option value="2023">2023: การขึ้นดอกเบี้ยครั้งใหญ่</option>
                            <option value="2024">2024: คงดอกเบี้ยไว้สูง</option>
                            <option value="2025">2025: ความหวังในการลด</option>
                        </select>
                    </div>
                </div>

                <div class="chart-container mb-6">
                    <canvas id="fedRateChart"></canvas>
                </div>

                <div id="data-explanation" class="bg-stone-50 p-4 rounded-lg">
                    <h4 class="font-bold text-lg text-teal-700">บริบทของข้อมูล (2022-2025)</h4>
                    <p class="text-stone-700">
                        นี่คือภาพรวมทั้งหมด: คุณจะเห็นว่าดอกเบี้ยเป็น 0% ในต้นปี 2022 ก่อนที่เฟดจะเริ่ม "เหยียบเบรก" อย่างรุนแรงเพื่อสู้กับเงินเฟ้อที่พุ่งสูง จากนั้นก็คงอัตราดอกเบี้ยไว้ในระดับสูง (Restrictive) ตลอดปี 2024 และเริ่มมีการพิจารณาลดดอกเบี้ย (Pivot) ในปี 2025 เมื่อตลาดแรงงานเริ่มชะลอตัวลง
                    </p>
                </div>
            </div>
        </section>

        <!-- NEW SECTION: AI Lab -->
        <section id="ai-lab" class="pt-24 pb-12">
            <div class="text-center mb-10">
                <span class="bg-indigo-100 text-indigo-800 text-sm font-bold px-3 py-1 rounded-full uppercase tracking-wide">New Feature</span>
                <h2 class="text-4xl font-bold text-indigo-900 mt-4 mb-4">ห้องทดลอง AI (AI Lab) ✨</h2>
                <p class="text-xl text-stone-600 max-w-3xl mx-auto">
                    ใช้พลังของ Gemini AI เพื่อทำความเข้าใจนโยบายการเงินให้ลึกซึ้งยิ่งขึ้น ไม่ว่าจะถามคำถาม แปลข่าวยากๆ หรือจำลองสถานการณ์ทางเศรษฐกิจ
                </p>
            </div>

            <div class="max-w-4xl mx-auto bg-white rounded-2xl shadow-xl overflow-hidden border border-indigo-100">
                <!-- AI Tabs -->
                <div class="flex border-b border-gray-200 bg-gray-50">
                    <button class="tab-btn flex-1 py-4 text-center active" onclick="switchTab('ask')">
                        💬 ถาม-ตอบผู้เชี่ยวชาญ
                    </button>
                    <button class="tab-btn flex-1 py-4 text-center" onclick="switchTab('decoder')">
                        📰 นักแปลภาษาเฟด
                    </button>
                    <button class="tab-btn flex-1 py-4 text-center" onclick="switchTab('simulator')">
                        🕹️ จำลองการประชุม FOMC
                    </button>
                </div>

                <!-- Tab Content: Ask -->
                <div id="tab-ask" class="p-6 md:p-8 tab-content block">
                    <h3 class="text-xl font-bold text-indigo-800 mb-2">ถามคำถามเกี่ยวกับ Fed</h3>
                    <p class="text-stone-600 mb-4 text-sm">สงสัยอะไรเกี่ยวกับเฟด ดอกเบี้ย หรือเงินเฟ้อ? พิมพ์ถามได้เลยครับ AI จะตอบให้เข้าใจง่ายที่สุด</p>
                    <textarea id="ask-input" class="w-full p-4 border border-indigo-200 rounded-lg focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 min-h-[100px]" placeholder="เช่น: ทำไมเฟดต้องขึ้นดอกเบี้ยเมื่อเงินเฟ้อสูง?"></textarea>
                    <button onclick="runAI('ask')" class="mt-4 bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 px-6 rounded-lg shadow transition-colors w-full sm:w-auto flex items-center justify-center gap-2">
                        <span>ถาม AI ผู้เชี่ยวชาญ</span> ✨
                    </button>
                </div>

                <!-- Tab Content: Decoder -->
                <div id="tab-decoder" class="p-6 md:p-8 tab-content hidden">
                    <h3 class="text-xl font-bold text-indigo-800 mb-2">แปลข่าวยากๆ ให้เป็นภาษาชาวบ้าน</h3>
                    <p class="text-stone-600 mb-4 text-sm">ก๊อปปี้ข่าวเศรษฐกิจ หรือแถลงการณ์เฟดภาษาอังกฤษ/ไทย ที่อ่านยากๆ มาวางที่นี่</p>
                    <textarea id="decoder-input" class="w-full p-4 border border-indigo-200 rounded-lg focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 min-h-[100px]" placeholder="วางข้อความข่าวที่นี่..."></textarea>
                    <button onclick="runAI('decoder')" class="mt-4 bg-teal-600 hover:bg-teal-700 text-white font-bold py-3 px-6 rounded-lg shadow transition-colors w-full sm:w-auto flex items-center justify-center gap-2">
                        <span>แปลให้เข้าใจง่าย</span> ✨
                    </button>
                </div>

                <!-- Tab Content: Simulator -->
                <div id="tab-simulator" class="p-6 md:p-8 tab-content hidden">
                    <h3 class="text-xl font-bold text-indigo-800 mb-2">บทบาทสมมติ: คุณคือประธานเฟด!</h3>
                    <p class="text-stone-600 mb-6 text-sm">กำหนดค่าเศรษฐกิจด้านล่าง แล้วดูว่า AI แนะนำให้นโยบายเป็นอย่างไรตามหลักเศรษฐศาสตร์</p>
                    
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-6">
                        <div>
                            <label class="block text-sm font-medium text-stone-700 mb-2">อัตราเงินเฟ้อ (Inflation Rate)</label>
                            <input type="range" id="sim-inflation" min="0" max="15" step="0.5" value="2.0" class="w-full h-2 bg-stone-200 rounded-lg appearance-none cursor-pointer accent-indigo-600" oninput="updateSimVal('inflation', this.value)">
                            <div class="text-right font-bold text-indigo-700 text-lg mt-1"><span id="val-inflation">2.0</span>%</div>
                            <p class="text-xs text-stone-500 mt-1">เป้าหมายเฟดคือ 2%</p>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-stone-700 mb-2">อัตราการว่างงาน (Unemployment Rate)</label>
                            <input type="range" id="sim-unemployment" min="0" max="15" step="0.1" value="4.0" class="w-full h-2 bg-stone-200 rounded-lg appearance-none cursor-pointer accent-teal-600" oninput="updateSimVal('unemployment', this.value)">
                            <div class="text-right font-bold text-teal-700 text-lg mt-1"><span id="val-unemployment">4.0</span>%</div>
                            <p class="text-xs text-stone-500 mt-1">ปกติอยู่ที่ 3.5% - 4.5%</p>
                        </div>
                    </div>

                    <button onclick="runAI('simulator')" class="bg-stone-800 hover:bg-black text-white font-bold py-3 px-6 rounded-lg shadow transition-colors w-full flex items-center justify-center gap-2">
                        <span>วิเคราะห์นโยบาย</span> ✨
                    </button>
                </div>

                <!-- AI Output Area -->
                <div id="ai-result-area" class="bg-indigo-50 border-t border-indigo-100 p-6 md:p-8 hidden">
                    <div id="ai-loading" class="hidden flex items-center justify-center py-4">
                        <div class="animate-spin rounded-full h-8 w-8 border-b-2 border-indigo-700"></div>
                        <span class="ml-3 text-indigo-700 font-medium">กำลังประมวลผลด้วย Gemini AI...</span>
                    </div>
                    <div id="ai-response" class="prose prose-stone max-w-none text-stone-800">
                        <!-- AI Response content goes here -->
                    </div>
                </div>
            </div>
        </section>

    </main>

    <footer class="text-center py-6 mt-12 border-t border-stone-200 bg-white">
        <p class="text-sm text-stone-500">สร้างขึ้นเพื่อการศึกษาโดยไม่มีส่วนเกี่ยวข้องกับ Federal Reserve System | ขับเคลื่อนด้วย Gemini API</p>
    </footer>

    <script>
        const apiKey = ""; // System provides key at runtime

        document.addEventListener('DOMContentLoaded', () => {
            // ... (Existing navigation and chart code remains the same) ...
            
            // --- Navigation Logic ---
            const navLinks = document.querySelectorAll('.nav-link');
            const mobileNav = document.getElementById('mobile-nav');
            
            function setActiveLink(hash) {
                navLinks.forEach(link => {
                    if (link.hash === hash) {
                        link.classList.add('active');
                    } else {
                        link.classList.remove('active');
                    }
                });
                mobileNav.value = hash;
            }

            document.getElementById('nav-links').addEventListener('click', (e) => {
                if (e.target.tagName === 'A') {
                    e.preventDefault();
                    const targetId = e.target.hash;
                    document.querySelector(targetId).scrollIntoView({ behavior: 'smooth' });
                    window.location.hash = targetId;
                    setActiveLink(targetId);
                }
            });

            mobileNav.addEventListener('change', (e) => {
                const targetId = e.target.value;
                document.querySelector(targetId).scrollIntoView({ behavior: 'smooth' });
                window.location.hash = targetId;
                setActiveLink(targetId);
            });

             // --- Job Cards Logic ---
             const jobCards = document.getElementById('job-cards');
            jobCards.addEventListener('click', (e) => {
                const card = e.target.closest('.card');
                if (!card) return;

                const job = card.dataset.job;
                const desc = document.getElementById(`job-${job}-desc`);
                const label = card.querySelector('span');
                
                if (desc) {
                    const isVisible = desc.style.display === 'block';
                    desc.style.display = isVisible ? 'none' : 'block';
                    label.textContent = isVisible ? 'คลิกเพื่ออ่าน' : 'ซ่อนเนื้อหา';
                }
            });

            // --- Process Tools Logic ---
            const toolButtons = document.getElementById('tool-buttons');
            const toolDescs = document.querySelectorAll('.tool-description');
            
            toolButtons.addEventListener('click', (e) => {
                const button = e.target.closest('.btn-tool');
                if (!button) return;

                const tool = button.dataset.tool;

                // Toggle buttons
                toolButtons.querySelectorAll('.btn-tool').forEach(btn => {
                    btn.classList.remove('active');
                });
                button.classList.add('active');

                // Toggle descriptions
                toolDescs.forEach(desc => {
                    if (desc.id === `tool-desc-${tool}`) {
                        desc.style.display = 'block';
                    } else {
                        desc.style.display = 'none';
                    }
                });
            });

            // --- Chart Logic ---
            const ctx = document.getElementById('fedRateChart').getContext('2d');
            const yearFilter = document.getElementById('year-filter');
            const dataExplanation = document.getElementById('data-explanation');

            const fullData = {
                labels: ['ม.ค. 22', 'มี.ค. 22', 'พ.ค. 22', 'มิ.ย. 22', 'ก.ค. 22', 'ก.ย. 22', 'พ.ย. 22', 'ธ.ค. 22', 'ก.พ. 23', 'มี.ค. 23', 'พ.ค. 23', 'ก.ค. 23', 'ก.ย. 23', 'ธ.ค. 23', 'มี.ค. 24', 'มิ.ย. 24', 'ก.ย. 24', 'ธ.ค. 24', 'ก.พ. 25', 'พ.ค. 25', 'ก.ย. 25', 'ต.ค. 25', 'ธ.ค. 25?'],
                datasets: [{
                    label: 'อัตราดอกเบี้ยเป้าหมาย (เพดานบน)',
                    data: [0.25, 0.50, 1.00, 1.75, 2.50, 3.25, 4.00, 4.50, 4.75, 5.00, 5.25, 5.50, 5.50, 5.50, 5.50, 5.50, 5.50, 5.50, 5.50, 5.50, 5.25, 5.00, 4.75],
                    borderColor: 'rgb(13, 148, 136)',
                    backgroundColor: 'rgba(13, 148, 136, 0.1)',
                    fill: true,
                    tension: 0.1,
                    pointRadius: 3,
                    pointHoverRadius: 6
                }]
            };
            
             const explanations = {
                "all": {
                    title: "บริบทของข้อมูล (2022-2025)",
                    text: "นี่คือภาพรวมทั้งหมด: คุณจะเห็นว่าดอกเบี้ยเป็น 0% ในต้นปี 2022 ก่อนที่เฟดจะเริ่ม 'เหยียบเบรก' อย่างรุนแรงเพื่อสู้กับเงินเฟ้อที่พุ่งสูง จากนั้นก็คงอัตราดอกเบี้ยไว้ในระดับสูง (Restrictive) ตลอดปี 2024 และเริ่มมีการพิจารณาลดดอกเบี้ย (Pivot) ในปี 2025 เมื่อตลาดแรงงานเริ่มชะลอตัวลง"
                },
                "2022": {
                    title: "ปี 2022: เริ่มต้นการต่อสู้",
                    text: "เงินเฟ้อพุ่งสูงหลังโควิดและสงคราม เฟดจึงเริ่มขึ้นดอกเบี้ยจาก 0% อย่างรวดเร็วและต่อเนื่อง นี่คือการ 'เหยียบเบรก' ที่แรงที่สุดในรอบหลายสิบปี"
                },
                "2023": {
                    title: "ปี 2023: การขึ้นดอกเบี้ยครั้งใหญ่",
                    text: "เฟดยังคงขึ้นดอกเบี้ยต่อเนื่องในช่วงครึ่งปีแรกจนถึง 5.50% เพื่อให้แน่ใจว่านโยบายการเงิน 'ตึงตัว' (Restrictive) มากพอที่จะดึงเงินเฟ้อลงมาให้ได้"
                },
                "2024": {
                    title: "ปี 2024: คงดอกเบี้ยไว้สูง (Higher for Longer)",
                    text: "หลังจากขึ้นดอกเบี้ยจนพอใจ เฟดใช้นโยบาย 'คงอัตราดอกเบี้ยไว้ในระดับสูง' ตลอดทั้งปี เพื่อรอให้ผลของดอกเบี้ยส่งผ่านไปยังเศรษฐกิจและกดเงินเฟ้อให้ลงมาที่เป้าหมาย 2%"
                },
                "2025": {
                    title: "ปี 2025: ความหวังในการลด (The Pivot)",
                    text: "ข้อมูลล่าสุด (เช่น อัตราว่างงานที่ 4.4%) เริ่มชี้ว่าตลาดแรงงานกำลังชะลอตัว เฟดจึงเริ่มส่งสัญญาณ 'Pivot' หรือการกลับทิศนโยบาย โดยลดดอกเบี้ยลงเล็กน้อยในเดือน ก.ย. และ ต.ค. และตลาดกำลังลุ้นว่าจะลดอีกในเดือน ธ.ค. หรือไม่"
                }
            };


            const fedRateChart = new Chart(ctx, {
                type: 'line',
                data: JSON.parse(JSON.stringify(fullData)),
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: { callback: function(value) { return value.toFixed(2) + '%'; } }
                        },
                        x: { ticks: { autoSkip: true, maxTicksLimit: 15 } }
                    },
                    plugins: {
                        tooltip: {
                            callbacks: {
                                label: function(context) { return context.dataset.label + ': ' + context.parsed.y.toFixed(2) + '%'; }
                            }
                        }
                    }
                }
            });

            yearFilter.addEventListener('change', (e) => {
                const year = e.target.value;
                const filteredData = JSON.parse(JSON.stringify(fullData));
                const explanation = explanations[year];

                if (year !== 'all') {
                    const yearPrefix = year.slice(-2);
                    filteredData.labels = fullData.labels.filter(label => label.endsWith(yearPrefix) || label.endsWith(yearPrefix + '?'));
                    filteredData.datasets[0].data = fullData.datasets[0].data.filter((_, index) => {
                        const label = fullData.labels[index];
                        return label.endsWith(yearPrefix) || label.endsWith(yearPrefix + '?');
                    });
                     // Add last point logic (simplified from previous version for brevity but functional)
                    if (year === '2023') { filteredData.labels.unshift('ธ.ค. 22'); filteredData.datasets[0].data.unshift(4.50); }
                    else if (year === '2024') { filteredData.labels.unshift('ธ.ค. 23'); filteredData.datasets[0].data.unshift(5.50); }
                    else if (year === '2025') { filteredData.labels.unshift('ธ.ค. 24'); filteredData.datasets[0].data.unshift(5.50); }
                }
                
                fedRateChart.data = filteredData;
                fedRateChart.update();
                dataExplanation.innerHTML = `<h4 class="font-bold text-lg text-teal-700">${explanation.title}</h4><p class="text-stone-700">${explanation.text}</p>`;
            });

        });

        // --- AI Lab Logic ---
        
        function switchTab(tabId) {
            // Hide all contents
            document.querySelectorAll('.tab-content').forEach(el => el.classList.add('hidden'));
            document.querySelectorAll('.tab-content').forEach(el => el.classList.remove('block'));
            
            // Show selected
            document.getElementById(`tab-${tabId}`).classList.remove('hidden');
            document.getElementById(`tab-${tabId}`).classList.add('block');
            
            // Update buttons
            document.querySelectorAll('.tab-btn').forEach(el => el.classList.remove('active'));
            document.querySelector(`button[onclick="switchTab('${tabId}')"]`).classList.add('active');
            
            // Hide result area on switch
            document.getElementById('ai-result-area').classList.add('hidden');
        }

        function updateSimVal(type, value) {
            document.getElementById(`val-${type}`).textContent = parseFloat(value).toFixed(1);
        }

        async function runAI(mode) {
            const resultArea = document.getElementById('ai-result-area');
            const loading = document.getElementById('ai-loading');
            const responseDiv = document.getElementById('ai-response');
            
            resultArea.classList.remove('hidden');
            loading.classList.remove('hidden');
            loading.classList.add('flex');
            responseDiv.innerHTML = '';

            let prompt = "";
            let userContent = "";

            if (mode === 'ask') {
                userContent = document.getElementById('ask-input').value;
                if (!userContent.trim()) { alert("กรุณาพิมพ์คำถามก่อนครับ"); loading.classList.add('hidden'); return; }
                prompt = `You are a friendly expert on the US Federal Reserve (The Fed). Answer the following question in simple Thai suitable for a beginner. Question: ${userContent}`;
            } else if (mode === 'decoder') {
                userContent = document.getElementById('decoder-input').value;
                if (!userContent.trim()) { alert("กรุณาวางข้อความข่าวก่อนครับ"); loading.classList.add('hidden'); return; }
                prompt = `Translate and simplify the following financial text into simple Thai that a high school student can understand. Explain any jargon clearly. Text: ${userContent}`;
            } else if (mode === 'simulator') {
                const inf = document.getElementById('sim-inflation').value;
                const unemp = document.getElementById('sim-unemployment').value;
                prompt = `Roleplay as the Federal Reserve Chair. Analyze this economic scenario: Inflation is ${inf}% (Target 2%) and Unemployment is ${unemp}% (Natural rate approx 4%). 
                Based on the Dual Mandate, what should the monetary policy decision be (Raise Rates, Lower Rates, or Hold)? 
                Explain your reasoning clearly in Thai. Use a professional but accessible tone. Structure the answer with: 1. Decision, 2. Reasoning, 3. Expected Impact.`;
            }

            try {
                const response = await callGeminiAPI(prompt);
                responseDiv.innerHTML = marked.parse(response);
            } catch (error) {
                responseDiv.innerHTML = `<p class="text-red-600">ขออภัย เกิดข้อผิดพลาดในการเชื่อมต่อกับ AI: ${error.message}</p>`;
            } finally {
                loading.classList.add('hidden');
                loading.classList.remove('flex');
            }
        }

        async function callGeminiAPI(prompt) {
            const url = `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash-preview-09-2025:generateContent?key=${apiKey}`;
            const payload = {
                contents: [{ parts: [{ text: prompt }] }]
            };

            const response = await fetch(url, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(payload)
            });

            if (!response.ok) {
                throw new Error(`API Error: ${response.status}`);
            }

            const data = await response.json();
            return data.candidates[0].content.parts[0].text;
        }
    </script>
</body>
</html>
