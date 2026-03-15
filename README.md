<html lang="th" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ระบบข้อมูลและวางแผนภาษีสำหรับแพทย์</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- Chosen Palette: Warm Neutrals & Medical Teal (bg-slate-50, text-slate-800, accent-teal-700, highlight-amber-500) -->
    <!-- Application Structure Plan: The SPA is structured as a continuous scrolling dashboard prioritizing logical learning flow over original document order. 1. 'Hero & Mindset' (Context setting), 2. 'Income Types' (Interactive comparison to show why classification matters), 3. 'Clinic & Business' (Toggle-based scenario explorer for private practice), 4. 'Deductions & Tips' (Filterable data table and interactive chart to maximize tax savings). This guides the user from understanding rules, classifying income, planning a business, to executing tax reduction strategies. -->
    <!-- Visualization & Content Choices: 1. Mindset -> Grid Cards (Inform) -> Easy readability of core rules. 2. Income Types -> Interactive Buttons & Bar Chart (Compare) -> Chart.js shows the drastic difference in deduction limits between 40(1) and 40(6). 3. Business Models -> Toggle Switch & CSS Grid (Compare/Inform) -> Side-by-side pros/cons and VAT rules based on clinic type. 4. Deductions -> Filterable HTML Table & Doughnut Chart (Organize/Inform) -> Helps users quickly find relevant deductions and visualizes the complex '500k Retirement Group' limit. NO SVG/Mermaid used. -->
    <!-- CONFIRMATION: NO SVG graphics used. NO Mermaid JS used. -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Sarabun:wght@300;400;500;600;700&display=swap');
        body { font-family: 'Sarabun', sans-serif; background-color: #f8fafc; color: #1e293b; }
        .chart-container { position: relative; width: 100%; max-width: 700px; margin-left: auto; margin-right: auto; height: 350px; max-height: 400px; }
        @media (max-width: 640px) { .chart-container { height: 250px; } }
        .nav-link.active { border-bottom: 2px solid #0f766e; color: #0f766e; font-weight: 600; }
        .tab-btn.active { background-color: #0f766e; color: white; border-color: #0f766e; }
        ::-webkit-scrollbar { width: 6px; }
        ::-webkit-scrollbar-track { background: transparent; }
        ::-webkit-scrollbar-thumb { background: #cbd5e1; border-radius: 10px; }
        ::-webkit-scrollbar-thumb:hover { background: #94a3b8; }
    </style>
</head>
<body class="antialiased">

    <nav class="fixed top-0 w-full bg-white shadow-sm z-50 border-b border-gray-200">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <span class="text-2xl mr-2">🩺</span>
                    <span class="font-bold text-xl text-teal-800">MedTax Planner</span>
                </div>
                <div class="hidden md:flex space-x-8 items-center">
                    <button onclick="scrollToSection('mindset')" class="nav-link text-gray-600 hover:text-teal-700 px-3 py-2 text-sm font-medium transition-colors">หลักการ (Mindset)</button>
                    <button onclick="scrollToSection('income-types')" class="nav-link text-gray-600 hover:text-teal-700 px-3 py-2 text-sm font-medium transition-colors">ประเภทเงินได้</button>
                    <button onclick="scrollToSection('business')" class="nav-link text-gray-600 hover:text-teal-700 px-3 py-2 text-sm font-medium transition-colors">ธุรกิจคลินิก</button>
                    <button onclick="scrollToSection('deductions')" class="nav-link text-gray-600 hover:text-teal-700 px-3 py-2 text-sm font-medium transition-colors">สิทธิลดหย่อน</button>
                    <button onclick="scrollToSection('ai-section')" class="nav-link text-amber-600 hover:text-amber-700 px-3 py-2 text-sm font-bold transition-colors bg-amber-50 rounded-full">✨ AI ผู้ช่วย</button>
                </div>
            </div>
        </div>
    </nav>

    <main class="pt-20 pb-16 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-24">

        <section id="mindset" class="pt-8">
            <div class="text-center max-w-3xl mx-auto mb-12">
                <h1 class="text-4xl font-bold text-slate-800 mb-4">วางแผนภาษีสำหรับแพทย์</h1>
                <p class="text-lg text-slate-600">การเสียภาษีที่ถูกต้องคือการวางแผน ไม่ใช่การเลี่ยงภาษี ทำความเข้าใจกฎเกณฑ์เพื่อรักษาสิทธิประโยชน์และป้องกันปัญหาการตรวจสอบย้อนหลัง</p>
            </div>

            <div class="bg-teal-700 rounded-2xl p-8 text-white shadow-lg mb-12 relative overflow-hidden">
                <div class="absolute top-0 right-0 opacity-10 text-9xl transform translate-x-1/4 -translate-y-1/4">⚖️</div>
                <h2 class="text-2xl font-bold mb-6 flex items-center"><span class="text-3xl mr-3">⚠️</span> กฎเหล็กเบื้องต้น (Mindset)</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div class="bg-white/10 rounded-xl p-5 backdrop-blur-sm border border-white/20">
                        <h3 class="font-bold text-amber-300 text-lg mb-2">อย่ายื่นขอคืนภาษี</h3>
                        <p class="text-sm opacity-90">การขอคืนภาษีแสดงถึงการวางแผนที่ไม่ดี และเพิ่มความเสี่ยงสูงในการถูกสรรพากรตรวจสอบย้อนหลัง</p>
                    </div>
                    <div class="bg-white/10 rounded-xl p-5 backdrop-blur-sm border border-white/20">
                        <h3 class="font-bold text-amber-300 text-lg mb-2">เสียโอกาสทางการเงิน</h3>
                        <p class="text-sm opacity-90">การจ่ายภาษีเกินไปก่อน คือการให้สรรพากรยืมเงินฟรีโดยไม่คิดดอกเบี้ย แทนที่จะนำไปลงทุนต่อยอด</p>
                    </div>
                    <div class="bg-white/10 rounded-xl p-5 backdrop-blur-sm border border-white/20">
                        <h3 class="font-bold text-amber-300 text-lg mb-2">แพทย์มักเสียฐาน 35%</h3>
                        <p class="text-sm opacity-90">ทำงาน 12 เดือน เหมือนจ่ายภาษีไปฟรีๆ ถึง 4 เดือน 6 วัน หากไม่มีการวางแผนสิทธิลดหย่อนที่ดี</p>
                    </div>
                    <div class="bg-white/10 rounded-xl p-5 backdrop-blur-sm border border-white/20">
                        <h3 class="font-bold text-amber-300 text-lg mb-2">ค่าปรับมหาโหด</h3>
                        <p class="text-sm opacity-90">หากผิดพลาด เบี้ยปรับ 1-2 เท่า และมีเงินเพิ่ม (ดอกเบี้ย) อีก 1.5% ต่อเดือนของยอดภาษี</p>
                    </div>
                    <div class="bg-white/10 rounded-xl p-5 backdrop-blur-sm border border-white/20">
                        <h3 class="font-bold text-amber-300 text-lg mb-2">ดีเลย์การเสียภาษี</h3>
                        <p class="text-sm opacity-90">การยืดเวลาชำระภาษีอย่างถูกกฎหมาย ช่วยเพิ่มกระแสเงินสดหมุนเวียนในมือได้</p>
                    </div>
                    <div class="bg-white/10 rounded-xl p-5 backdrop-blur-sm border border-white/20">
                        <h3 class="font-bold text-amber-300 text-lg mb-2">อย่าให้เอกสารเกิน</h3>
                        <p class="text-sm opacity-90">หลีกเลี่ยงการยื่นเอกสารที่สรรพากรไม่ได้ร้องขอ เพราะจะเพิ่มประเด็นในการถูกตรวจสอบ</p>
                    </div>
                </div>
            </div>
        </section>

        <section id="income-types">
            <div class="mb-8">
                <h2 class="text-3xl font-bold text-slate-800 mb-4 flex items-center"><span class="text-3xl mr-3">💰</span> ประเภทเงินได้ของแพทย์</h2>
                <p class="text-slate-600 max-w-4xl">การระบุประเภทเงินได้มีความสำคัญมากที่สุดในการคำนวณภาษี เพราะเงินได้แต่ละประเภทมีเพดานการหักค่าใช้จ่ายที่แตกต่างกันอย่างมหาศาล เลือกประเภทด้านล่างเพื่อดูรายละเอียด</p>
            </div>

            <div class="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden">
                <div class="flex flex-wrap border-b border-slate-200 bg-slate-50 p-2 gap-2" id="income-tabs">
                    <button onclick="selectIncomeType('401')" id="btn-401" class="tab-btn active px-4 py-2 rounded-lg text-sm font-semibold border border-transparent transition-all">ม.40(1) เงินเดือน</button>
                    <button onclick="selectIncomeType('402')" id="btn-402" class="tab-btn px-4 py-2 rounded-lg text-sm font-semibold border border-transparent text-slate-600 hover:bg-slate-200 transition-all">ม.40(2) รับจ้างทำของ</button>
                    <button onclick="selectIncomeType('406')" id="btn-406" class="tab-btn px-4 py-2 rounded-lg text-sm font-semibold border border-transparent text-slate-600 hover:bg-slate-200 transition-all">ม.40(6) วิชาชีพอิสระ</button>
                    <button onclick="selectIncomeType('408')" id="btn-408" class="tab-btn px-4 py-2 rounded-lg text-sm font-semibold border border-transparent text-slate-600 hover:bg-slate-200 transition-all">ม.40(8) ธุรกิจพาณิชย์</button>
                </div>
                
                <div class="p-6 md:p-8 grid grid-cols-1 lg:grid-cols-2 gap-8 items-center">
                    <div>
                        <div id="income-details" class="min-h-[200px]"></div>
                        
                        <div class="mt-6 bg-amber-50 border-l-4 border-amber-500 p-4 rounded-r-lg">
                            <h4 class="font-bold text-amber-800 mb-1 flex items-center"><span class="mr-2">💡</span> Trick การทำสัญญา</h4>
                            <p class="text-sm text-amber-900">พยายามทำสัญญากับ รพ.เอกชน ให้รายได้เข้าข่าย ม.40(6) (ทำสัญญาเช่าพื้นที่/เครื่องมือ รับรายได้ตรงจากคนไข้) เพื่อใช้สิทธิหักเหมา 60% แทน ม.40(2) ที่รวมกับเงินเดือนแล้วหักได้แค่ 1 แสนบาท</p>
                        </div>
                    </div>
                    
                    <div class="bg-slate-50 p-4 rounded-xl border border-slate-100">
                        <h4 class="text-center font-semibold text-slate-700 mb-4 text-sm">เปรียบเทียบการหักค่าใช้จ่าย (สมมติรายได้ 1,000,000 บาท)</h4>
                        <div class="chart-container">
                            <canvas id="deductionChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="business">
            <div class="mb-8">
                <h2 class="text-3xl font-bold text-slate-800 mb-4 flex items-center"><span class="text-3xl mr-3">🏥</span> การเปิดคลินิกและธุรกิจส่วนตัว</h2>
                <p class="text-slate-600 max-w-4xl">เมื่อรายได้สูงขึ้น การทำธุรกิจในนามบุคคลธรรมดาอาจทำให้เสียภาษีฐานสูงสุด (35%) การทำความเข้าใจโครงสร้างนิติบุคคลและภาษีมูลค่าเพิ่ม (VAT) จึงเป็นสิ่งจำเป็นสำหรับคลินิกในอนาคต</p>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-8">
                <div class="bg-white rounded-2xl shadow-sm border border-slate-200 p-6 md:p-8">
                    <h3 class="text-xl font-bold text-slate-800 mb-4 border-b pb-2">1. รูปแบบธุรกิจ</h3>
                    
                    <div class="space-y-6">
                        <div>
                            <div class="flex items-center justify-between mb-2">
                                <h4 class="font-bold text-teal-700 text-lg">บุคคลธรรมดา ม.40(8)</h4>
                                <span class="bg-slate-100 text-slate-600 text-xs px-2 py-1 rounded">เริ่มต้นง่าย</span>
                            </div>
                            <ul class="text-sm text-slate-600 space-y-2 list-disc pl-5">
                                <li><span class="font-semibold text-green-600">ข้อดี:</span> จัดการง่าย นำเงินออกมาใช้ได้ทันที ไม่ต้องทำบัญชีส่งกระทรวงพาณิชย์</li>
                                <li><span class="font-semibold text-red-500">ข้อเสีย:</span> หากรายได้สูง จะถูกคิดภาษีอัตราก้าวหน้าสูงสุดถึง 35%</li>
                                <li><span class="font-semibold text-amber-600">คำเตือน:</span> ปัจจุบันการตั้ง "คณะบุคคล" ไม่คุ้มค่าและอาจขาดทุนกว่าเดิม ไม่แนะนำให้ทำ</li>
                            </ul>
                        </div>
                        
                        <div class="pt-4 border-t border-slate-100">
                            <div class="flex items-center justify-between mb-2">
                                <h4 class="font-bold text-teal-700 text-lg">นิติบุคคล (บริษัทจำกัด)</h4>
                                <span class="bg-teal-50 text-teal-700 border border-teal-200 text-xs px-2 py-1 rounded">รายได้ถึงฐาน 20-25%</span>
                            </div>
                            <ul class="text-sm text-slate-600 space-y-2 list-disc pl-5">
                                <li><span class="font-semibold text-green-600">ข้อดี:</span> ภาษี SME สูงสุด 20% (กำไร 3 แสนแรกยกเว้นภาษี), นำค่าใช้จ่ายธุรกิจมาหักได้ตามจริง, จำกัดความรับผิดชอบ</li>
                                <li><span class="font-semibold text-red-500">ข้อเสีย:</span> มีค่าทำบัญชี/สอบบัญชี, นำเงินออกยาก (ต้องเป็นเงินเดือน/ปันผล)</li>
                                <li><span class="font-semibold text-amber-600">คำเตือน:</span> หากขอยื่นปรับปรุงแบบย้อนหลัง จะโดนเพ่งเล็งตรวจสอบเป็นพิเศษ</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="bg-white rounded-2xl shadow-sm border border-slate-200 p-6 md:p-8">
                    <h3 class="text-xl font-bold text-slate-800 mb-4 border-b pb-2">2. ภาษีมูลค่าเพิ่ม (VAT) สำหรับคลินิก</h3>
                    
                    <div class="space-y-6">
                        <div class="bg-blue-50 border border-blue-100 rounded-lg p-4">
                            <h4 class="font-bold text-blue-800 mb-2">คลินิกเวชกรรมทั่วไป (รักษาโรค)</h4>
                            <p class="text-sm text-blue-900">รายได้จากการประกอบโรคศิลปะ (ค่าตรวจ, ค่ารักษา, ค่ายาที่จ่ายพร้อมการรักษา) <strong class="bg-blue-200 px-1 rounded">ได้รับการยกเว้น VAT 100%</strong> ไม่ว่ารายได้จะสูงแค่ไหนก็ตาม</p>
                        </div>
                        
                        <div class="bg-rose-50 border border-rose-100 rounded-lg p-4">
                            <h4 class="font-bold text-rose-800 mb-2">คลินิกความงาม / ผิวพรรณ / ศัลยกรรม</h4>
                            <div class="text-sm text-rose-900 space-y-2">
                                <p><strong>ส่วนที่ยกเว้น VAT:</strong> หัตถการที่ทำโดยแพทย์ (เช่น ฉีดโบท็อกซ์, เลเซอร์รักษาโรค)</p>
                                <p><strong>ส่วนที่ต้องเสีย VAT:</strong> ขายเวชสำอาง, อาหารเสริม, ทรีทเมนท์โดยพนักงาน</p>
                                <div class="mt-3 p-3 bg-white/60 rounded border border-rose-200">
                                    <span class="text-red-600 font-bold">กฎสำคัญ:</span> ถ้ารายได้ส่วนที่ต้องเสีย VAT เกิน 1.8 ล้านบาท/ปี <span class="underline font-bold">ต้องจดทะเบียน VAT</span> และต้องทำบัญชีแยกบิลค่ารักษาและค่าสินค้าให้ชัดเจน หากรวมบิลสรรพากรอาจเหมาว่าต้องเสีย VAT ทั้งหมด
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="deductions">
            <div class="mb-8">
                <h2 class="text-3xl font-bold text-slate-800 mb-4 flex items-center"><span class="text-3xl mr-3">📊</span> สิทธิลดหย่อนและเทคนิคประหยัดภาษี</h2>
                <p class="text-slate-600 max-w-4xl">เครื่องมือสำคัญที่ช่วยดึงเงินภาษีกลับมาเป็นเงินออม ค้นหารายการลดหย่อนที่เหมาะสมและทำความเข้าใจเงื่อนไขของกลุ่มกองทุนเกษียณ 500,000 บาท</p>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8 mb-8">
                <div class="lg:col-span-2 bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden flex flex-col">
                    <div class="p-4 border-b border-slate-200 bg-slate-50 flex justify-between items-center">
                        <h3 class="font-bold text-slate-800">ตารางสิทธิลดหย่อน</h3>
                        <select id="deduction-filter" class="border-slate-300 rounded-md text-sm shadow-sm py-1.5 px-3 focus:ring-teal-500 focus:border-teal-500">
                            <option value="all">ดูทั้งหมด</option>
                            <option value="personal">ส่วนตัวและครอบครัว</option>
                            <option value="invest">ประกันและการลงทุน</option>
                            <option value="donate">เงินบริจาค</option>
                        </select>
                    </div>
                    <div class="overflow-x-auto flex-1">
                        <table class="min-w-full divide-y divide-slate-200">
                            <thead class="bg-slate-50">
                                <tr>
                                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-slate-500 uppercase tracking-wider w-1/4">หมวดหมู่</th>
                                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-slate-500 uppercase tracking-wider w-1/2">รายการ</th>
                                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-slate-500 uppercase tracking-wider w-1/4">สิทธิสูงสุด</th>
                                </tr>
                            </thead>
                            <tbody id="deduction-tbody" class="bg-white divide-y divide-slate-200">
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="space-y-8">
                    <div class="bg-white rounded-2xl shadow-sm border border-slate-200 p-6">
                        <h3 class="font-bold text-slate-800 mb-2 text-center text-sm">กลุ่มกองทุนเกษียณสูงสุดไม่เกิน 500,000 บ.</h3>
                        <p class="text-xs text-slate-500 text-center mb-4">กบข. + RMF + SSF + กองทุนสำรองเลี้ยงชีพ + ประกันบำนาญ ต้องรวมกันไม่เกินยอดนี้</p>
                        <div class="chart-container" style="height: 220px; max-height: 250px;">
                            <canvas id="retirementChart"></canvas>
                        </div>
                    </div>

                    <div class="bg-teal-50 rounded-2xl border border-teal-100 p-6">
                        <h3 class="font-bold text-teal-800 mb-4 flex items-center"><span>💡</span> ทริคเพิ่มเติม</h3>
                        <ul class="text-sm text-teal-900 space-y-3">
                            <li class="flex items-start"><span class="mr-2">▪️</span> <span><strong>เงินบริจาค e-Donation:</strong> ลดหย่อนได้ 2 เท่า ใบเสร็จหารสิทธิตามชื่อเสมอ ห้ามใส่ "และครอบครัว" ถือว่าจะใช้สิทธิได้ไม่เต็ม</span></li>
                            <li class="flex items-start"><span class="mr-2">▪️</span> <span><strong>ซื้อ RMF เถอะ:</strong> แม้จะใช้เงินก้อนนี้ก่อน 5 ปี ก็ควรซื้อ เพราะกำไรไม่เสียภาษี ถอนก่อนแค่คืนภาษี (ไม่เกิน 5 ปี) เหมือนยืมเงินสรรพากรลงทุน</span></li>
                            <li class="flex items-start"><span class="mr-2">▪️</span> <span><strong>ระวังธุรกรรมเฉพาะ:</strong> ธนาคารส่งข้อมูลหากเงินเข้า 3,000 ครั้ง/ปี หรือ 400 ครั้งและเกิน 2 ล้านบาท ต้องแยกบัญชีรับเงินและส่วนตัว</span></li>
                            <li class="flex items-start"><span class="mr-2">▪️</span> <span><strong>Income Splitting:</strong> ถ้าจดบริษัท จ้างคนในครอบครัวทำงาน (ทำจริงมีหลักฐาน) จ่ายเงินเดือนเพื่อกระจายฐานภาษี</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="ai-section" class="pt-8">
            <div class="mb-8 text-center max-w-3xl mx-auto">
                <h2 class="text-3xl font-bold text-slate-800 mb-4">✨ ผู้ช่วย AI วางแผนภาษี (Powered by Gemini)</h2>
                <p class="text-slate-600">มีข้อสงสัยเพิ่มเติม? หรือต้องการให้ AI ช่วยวิเคราะห์ข้อความสัญญาจ้างว่าเข้าข่ายเงินได้ประเภทใด? พิมพ์ข้อความด้านล่างได้เลยครับ</p>
            </div>

            <div class="bg-gradient-to-br from-slate-800 to-slate-900 rounded-3xl shadow-xl border border-slate-700 p-6 md:p-8 max-w-4xl mx-auto text-white relative overflow-hidden">
                <div class="absolute -top-10 -right-10 opacity-10 text-9xl transform rotate-12">🤖</div>
                
                <div class="relative z-10">
                    <label for="ai-input" class="block text-sm font-medium text-slate-300 mb-2">ข้อความหรือคำถามของคุณ:</label>
                    <textarea id="ai-input" rows="4" class="w-full bg-slate-800 border border-slate-600 text-white rounded-xl p-4 focus:ring-2 focus:ring-teal-500 focus:border-transparent placeholder-slate-500" placeholder="เช่น ซื้อเครื่องมือแพทย์มาเปิดคลินิก หักค่าใช้จ่ายได้ไหม? หรือ วางข้อความสัญญาจ้าง รพ. ที่นี่..."></textarea>
                    <p id="ai-error" class="text-red-400 text-sm mt-2 hidden">กรุณาพิมพ์ข้อความก่อนให้ AI วิเคราะห์ครับ</p>

                    <div class="flex flex-wrap gap-4 mt-6">
                        <button onclick="handleAiSubmit('general')" class="flex-1 bg-teal-600 hover:bg-teal-500 text-white font-bold py-3 px-6 rounded-xl shadow-lg transition-all flex justify-center items-center">
                            ✨ ถามคำถามภาษีทั่วไป
                        </button>
                        <button onclick="handleAiSubmit('contract')" class="flex-1 bg-indigo-600 hover:bg-indigo-500 text-white font-bold py-3 px-6 rounded-xl shadow-lg transition-all flex justify-center items-center">
                            ✨ วิเคราะห์สัญญา/ประเภทเงินได้
                        </button>
                    </div>

                    <div id="ai-result-container" class="mt-8 hidden">
                        <div class="border-t border-slate-600 pt-6">
                            <h3 class="text-lg font-bold text-teal-300 mb-4 flex items-center">
                                <span class="mr-2">💡</span> คำแนะนำจาก AI:
                            </h3>
                            
                            <div id="ai-loading" class="hidden">
                                <div class="flex items-center space-x-2 text-slate-400 animate-pulse">
                                    <div class="w-2 h-2 bg-teal-500 rounded-full"></div>
                                    <div class="w-2 h-2 bg-teal-500 rounded-full animation-delay-200"></div>
                                    <div class="w-2 h-2 bg-teal-500 rounded-full animation-delay-400"></div>
                                    <span>กำลังประมวลผลข้อมูลทางภาษี...</span>
                                </div>
                            </div>
                            
                            <div id="ai-content" class="text-slate-200 text-sm md:text-base leading-relaxed space-y-4 prose prose-invert max-w-none">
                                <!-- ผลลัพธ์จาก AI จะแสดงที่นี่ -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer class="text-center text-slate-500 text-sm pb-8 border-t border-slate-200 pt-8 mt-12">
            <p>อ้างอิงข้อมูลจากการบรรยายเรื่องภาษีของแพทย์ไทย ผสมผสานกับกฎหมายภาษีปัจจุบัน</p>
            <p class="mt-2 text-xs">ข้อมูลนี้เพื่อการศึกษาและการวางแผนเบื้องต้น ควรปรึกษาผู้เชี่ยวชาญด้านภาษีหรือผู้สอบบัญชีสำหรับการดำเนินการจริง</p>
        </footer>

    </main>

    <script>
        const incomeData = {
            '401': {
                title: 'มาตรา 40(1) - เงินเดือน',
                desc: 'เงินเดือนประจำจากโรงพยาบาลรัฐหรือเอกชน รวมถึงเงินประจำตำแหน่งของข้าราชการ',
                deduction: 'หักแบบเหมาได้ 50% แต่สูงสุดไม่เกิน 100,000 บาท',
                note: 'รวมกับ ม.40(2) แล้วหักสูงสุดห้ามเกิน 100,000 บาท สวัสดิการ เช่น หอฟรีจากโรงพยาบาล จะถูกตีมูลค่าเป็นรายได้เพื่อคิดภาษีด้วย',
                chartValues: [100000, 900000],
                color: '#3b82f6'
            },
            '402': {
                title: 'มาตรา 40(2) - รับจ้างทำของ',
                desc: 'เช่น การรับจ๊อบเวรโรงพยาบาลเอกชน (โดยที่คนไข้เป็นของโรงพยาบาล โรงพยาบาลจ้างหมอตรวจ)',
                deduction: 'หักแบบเหมาได้ 50% แต่สูงสุดไม่เกิน 100,000 บาท',
                note: 'รวมกับ ม.40(1) แล้วหักสูงสุดห้ามเกิน 100,000 บาท เป็นประเภทที่แพทย์เสียเปรียบมากที่สุดในการหักค่าใช้จ่าย',
                chartValues: [100000, 900000],
                color: '#ef4444'
            },
            '406': {
                title: 'มาตรา 40(6) - วิชาชีพอิสระ',
                desc: 'เงินได้จากการตรวจรักษาที่แพทย์มีอำนาจกำหนดค่ารักษาเอง (เงื่อนไข: จบตรง, ทำงานตรง, เป็นอิสระ)',
                deduction: 'หักเหมาได้ 60% (ไม่จำกัดเพดาน) หรือหักตามค่าใช้จ่ายจริง',
                note: 'วิชาชีพแพทย์ได้สิทธิหัก 60% ซึ่งสูงกว่าวิชาชีพอิสระอื่น (เช่น สถาปนิก วิศวกร ได้เพียง 30%)',
                chartValues: [600000, 400000],
                color: '#10b981'
            },
            '408': {
                title: 'มาตรา 40(8) - ธุรกิจ/พาณิชย์',
                desc: 'เช่น การเปิดคลินิกและมีการขายยา การทำธุรกิจส่วนตัวอื่นๆ',
                deduction: 'หักตามจริง (ต้องทำบัญชี) หรือหักเหมา 60% (ตามที่กฎหมายกำหนดในบางกิจการ)',
                note: 'ต้องทำบัญชีรายรับ-รายจ่าย หากเลือกหักตามจริง',
                chartValues: [600000, 400000],
                color: '#8b5cf6'
            }
        };

        const deductionTableData = [
            { category: 'personal', catName: 'ส่วนตัว/ครอบครัว', name: 'ผู้มีเงินได้', limit: '60,000 บาท' },
            { category: 'personal', catName: 'ส่วนตัว/ครอบครัว', name: 'บิดา-มารดา (อายุ >60, รายได้ <30k)', limit: 'คนละ 30,000 บาท' },
            { category: 'invest', catName: 'ประกัน/ลงทุน', name: 'ประกันชีวิตทั่วไป / สะสมทรัพย์', limit: '100,000 บาท' },
            { category: 'invest', catName: 'ประกัน/ลงทุน', name: 'ประกันสุขภาพตัวเอง', limit: '25,000 บาท (รวมประกันชีวิตไม่เกิน 100k)' },
            { category: 'invest', catName: 'ประกัน/ลงทุน', name: 'ประกันสุขภาพบิดา-มารดา', limit: '15,000 บาท' },
            { category: 'invest', catName: 'ประกัน/ลงทุน', name: 'กบข. (ข้าราชการ)', limit: '30% (สูงสุดไม่เกิน 500k)*' },
            { category: 'invest', catName: 'ประกัน/ลงทุน', name: 'RMF (เพื่อการเลี้ยงชีพ)', limit: '30% (สูงสุดไม่เกิน 500k)*' },
            { category: 'invest', catName: 'ประกัน/ลงทุน', name: 'SSF (เพื่อการออม)', limit: '30% (สูงสุดไม่เกิน 200k)*' },
            { category: 'invest', catName: 'ประกัน/ลงทุน', name: 'Thai ESG (ความยั่งยืน)', limit: '30% (สูงสุดไม่เกิน 100k) **ไม่รวมในกลุ่ม 5 แสน**' },
            { category: 'donate', catName: 'เงินบริจาค', name: 'สนับสนุนการศึกษา / รพ.รัฐ (e-Donation)', limit: '2 เท่า (ไม่เกิน 10% ของเงินได้หลังหักค่าใช้จ่าย)' },
            { category: 'donate', catName: 'เงินบริจาค', name: 'บริจาคทั่วไป', limit: 'ตามจริง (ไม่เกิน 10% ของเงินได้หลังหักค่าใช้จ่าย)' }
        ];

        let deductionChartInstance = null;

        function initDeductionChart() {
            const ctx = document.getElementById('deductionChart').getContext('2d');
            deductionChartInstance = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['หักค่าใช้จ่ายได้', 'เงินได้สุทธิที่นำไปคิดภาษี'],
                    datasets: [{
                        label: 'จำนวนเงิน (บาท)',
                        data: [0, 0],
                        backgroundColor: ['#14b8a6', '#f43f5e'],
                        borderRadius: 6
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        y: { beginAtZero: true, max: 1000000, ticks: { callback: function(value) { return value/1000 + 'k'; } } }
                    },
                    plugins: {
                        legend: { display: false },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    return context.parsed.y.toLocaleString() + ' บาท';
                                }
                            }
                        }
                    }
                }
            });
        }

        function updateDeductionChart(values, color) {
            deductionChartInstance.data.datasets[0].data = values;
            deductionChartInstance.data.datasets[0].backgroundColor[0] = color;
            deductionChartInstance.update();
        }

        function selectIncomeType(type) {
            document.querySelectorAll('.tab-btn').forEach(btn => {
                btn.classList.remove('active', 'bg-teal-700', 'text-white');
                btn.classList.add('text-slate-600', 'hover:bg-slate-200');
            });
            const activeBtn = document.getElementById(`btn-${type}`);
            activeBtn.classList.add('active', 'bg-teal-700', 'text-white');
            activeBtn.classList.remove('text-slate-600', 'hover:bg-slate-200');

            const data = incomeData[type];
            document.getElementById('income-details').innerHTML = `
                <h3 class="text-2xl font-bold text-slate-800 mb-2" style="color: ${data.color}">${data.title}</h3>
                <p class="text-slate-600 mb-4">${data.desc}</p>
                <div class="bg-slate-50 p-4 rounded-lg border border-slate-200 mb-4">
                    <span class="block text-sm font-semibold text-slate-500 uppercase tracking-wider mb-1">สิทธิหักค่าใช้จ่าย</span>
                    <span class="text-lg font-bold text-slate-800">${data.deduction}</span>
                </div>
                <p class="text-sm text-slate-500 italic flex items-start"><span class="mr-1">📌</span> <span>${data.note}</span></p>
            `;

            updateDeductionChart(data.chartValues, data.color);
        }

        function initRetirementChart() {
            const ctx = document.getElementById('retirementChart').getContext('2d');
            new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['RMF (Max 500k)', 'SSF (Max 200k)', 'กบข./กองทุนสำรองฯ'],
                    datasets: [{
                        data: [250000, 150000, 100000], 
                        backgroundColor: ['#0f766e', '#14b8a6', '#5eead4'],
                        borderWidth: 2,
                        borderColor: '#ffffff'
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    cutout: '70%',
                    plugins: {
                        legend: { position: 'bottom', labels: { boxWidth: 12, font: { size: 10 } } },
                        tooltip: {
                            callbacks: {
                                label: function(context) { return ' ' + context.label; }
                            }
                        }
                    }
                },
                plugins: [{
                    id: 'centerText',
                    beforeDraw: function(chart) {
                        var width = chart.width, height = chart.height, ctx = chart.ctx;
                        ctx.restore();
                        var fontSize = (height / 110).toFixed(2);
                        ctx.font = "bold " + fontSize + "em Sarabun";
                        ctx.textBaseline = "middle";
                        ctx.fillStyle = "#334155";
                        var text = "Max 500k",
                            textX = Math.round((width - ctx.measureText(text).width) / 2),
                            textY = height / 2 - 10;
                        ctx.fillText(text, textX, textY);
                        ctx.save();
                    }
                }]
            });
        }

        function renderTable(filter = 'all') {
            const tbody = document.getElementById('deduction-tbody');
            tbody.innerHTML = '';
            
            const filteredData = filter === 'all' 
                ? deductionTableData 
                : deductionTableData.filter(item => item.category === filter);

            filteredData.forEach(item => {
                let badgeClass = 'bg-slate-100 text-slate-800';
                if(item.category === 'personal') badgeClass = 'bg-blue-100 text-blue-800';
                if(item.category === 'invest') badgeClass = 'bg-teal-100 text-teal-800';
                if(item.category === 'donate') badgeClass = 'bg-rose-100 text-rose-800';

                const tr = document.createElement('tr');
                tr.innerHTML = `
                    <td class="px-6 py-4 whitespace-nowrap"><span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full ${badgeClass}">${item.catName}</span></td>
                    <td class="px-6 py-4 text-sm text-slate-800 font-medium">${item.name}</td>
                    <td class="px-6 py-4 text-sm text-slate-600">${item.limit}</td>
                `;
                tbody.appendChild(tr);
            });
        }

        function scrollToSection(id) {
            document.getElementById(id).scrollIntoView({ behavior: 'smooth' });
        }

        // --- ระบบ AI ด้วย Gemini API ---
        const apiKey = ""; // API Key จาก Environment

        async function fetchWithRetry(url, options, retries = 5) {
            const delays = [1000, 2000, 4000, 8000, 16000];
            for (let i = 0; i < retries; i++) {
                try {
                    const response = await fetch(url, options);
                    if (!response.ok) {
                        throw new Error(`HTTP error! status: ${response.status}`);
                    }
                    return await response.json();
                } catch (e) {
                    if (i === retries - 1) throw e;
                    console.log(`Retrying API call... Attempt ${i + 1}`);
                    await new Promise(res => setTimeout(res, delays[i]));
                }
            }
        }

        async function callGemini(prompt, type) {
            const resultContainer = document.getElementById('ai-result-container');
            const loadingDiv = document.getElementById('ai-loading');
            const contentDiv = document.getElementById('ai-content');

            resultContainer.classList.remove('hidden');
            contentDiv.innerHTML = '';
            loadingDiv.classList.remove('hidden');

            let systemInstruction = "คุณคือผู้เชี่ยวชาญด้านภาษีสำหรับแพทย์ในประเทศไทย ให้คำแนะนำที่ถูกต้อง ชัดเจน สรุปเป็นข้อๆ เข้าใจง่าย และอ้างอิงตามกฎหมายภาษีไทย (ม.40(1), (2), (6), (8))";
            if (type === 'contract') {
                systemInstruction = "คุณคือผู้เชี่ยวชาญด้านภาษีสำหรับแพทย์ในประเทศไทย หน้าที่ของคุณคือวิเคราะห์ข้อความหรือสัญญาจ้างที่ผู้ใช้ส่งมา และประเมินว่ารายได้นี้น่าจะเข้าข่ายเงินได้ประเภทใด (โดยเฉพาะการแยกแยะระหว่าง ม.40(2) รับจ้างทำของ และ ม.40(6) วิชาชีพอิสระ) พร้อมอธิบายเหตุผลประกอบสั้นๆ ตามหลักความอิสระในการทำงานและการรับความเสี่ยง และแนะนำวิธีการปรับแก้สัญญาให้เป็น ม.40(6) หากทำได้";
            }

            const url = `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash-preview-09-2025:generateContent?key=${apiKey}`;
            const payload = {
                contents: [{ parts: [{ text: prompt }] }],
                systemInstruction: { parts: [{ text: systemInstruction }] }
            };

            try {
                const data = await fetchWithRetry(url, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(payload)
                });

                let text = data.candidates?.[0]?.content?.parts?.[0]?.text;
                if (!text) throw new Error("No response from AI");
                
                // จัด Format Markdown เบื้องต้นให้แสดงผลสวยงาม
                text = text.replace(/\*\*(.*?)\*\*/g, '<strong class="text-teal-300">$1</strong>');
                text = text.replace(/\n/g, '<br>');
                text = text.replace(/\* (.*?)(<br>|$)/g, '<li class="ml-4">$1</li>');
                
                contentDiv.innerHTML = text;
            } catch (error) {
                contentDiv.innerHTML = `<span class="text-rose-400">เกิดข้อผิดพลาดในการเชื่อมต่อกับระบบ AI กรุณาลองใหม่อีกครั้งในภายหลังครับ</span>`;
            } finally {
                loadingDiv.classList.add('hidden');
            }
        }

        function handleAiSubmit(type) {
            const inputElement = document.getElementById('ai-input');
            const errorElement = document.getElementById('ai-error');
            const input = inputElement.value.trim();
            
            if (!input) {
                errorElement.classList.remove('hidden');
                inputElement.classList.add('border-rose-500');
                return;
            }
            
            errorElement.classList.add('hidden');
            inputElement.classList.remove('border-rose-500');
            callGemini(input, type);
        }

        window.onload = () => {
            initDeductionChart();
            selectIncomeType('406'); 
            initRetirementChart();
            renderTable();

            document.getElementById('deduction-filter').addEventListener('change', (e) => {
                renderTable(e.target.value);
            });
        };
    </script>
</body>
</html>
