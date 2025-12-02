
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MarketDecoder TH</title>
    
    <!-- 1. Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- 2. React & ReactDOM -->
    <script type="importmap">
    {
      "imports": {
        "react": "https://esm.sh/react@18.2.0",
        "react-dom/client": "https://esm.sh/react-dom@18.2.0/client",
        "lucide-react": "https://esm.sh/lucide-react@0.263.1"
      }
    }
    </script>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
</head>
<body class="bg-slate-50">
    <div id="root"></div>

    <script type="text/babel" data-type="module">
        import React, { useState, useEffect } from 'react';
        import { createRoot } from 'react-dom/client';
        import { BookOpen, TrendingUp, AlertCircle, FileText, ChevronRight, Loader2, DollarSign, Brain, Globe } from 'lucide-react';

        const MarketDecoderTH = () => {
          const [inputText, setInputText] = useState('');
          const [loading, setLoading] = useState(false);
          const [result, setResult] = useState(null);
          const [error, setError] = useState(null);
          const [apiKey, setApiKey] = useState('');

          // Handle API Key management
          useEffect(() => {
            // WARNING: Hardcoding API keys in frontend code is risky for public repos.
            const envKey = "AIzaSyCfQ9FVl_geRXDt3Ty2uUXIpThHTtdO3eE"; 
            if (envKey) setApiKey(envKey);
          }, []);

          const analyzeNews = async () => {
            if (!inputText.trim()) {
              setError("กรุณาวางเนื้อหาข่าวลงในช่องว่างก่อน");
              return;
            }
            
            setLoading(true);
            setError(null);
            setResult(null);

            try {
              const systemPrompt = `
                You are an expert financial educator for Thai investors.
                Analyze the provided financial news text and generate a JSON response:
                1. "summary": A concise, plain-Thai explanation of what happened.
                2. "vocabulary": An array of objects { "term": "...", "definition": "..." }. 
                   - "term": Keep the financial term in ENGLISH (e.g., "Yield Curve").
                   - "definition": Explain the meaning in simple THAI.
                3. "insights": An array of objects { "title": "...", "explanation": "..." } representing educational lessons.
                   - "title": In Thai.
                   - "explanation": In Thai. Explain generalizable knowledge derived from the news.
              `;

              const userPrompt = `Analyze this news:\n\n${inputText}`;

              const response = await fetch(
                `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash-preview-09-2025:generateContent?key=${apiKey}`,
                {
                  method: 'POST',
                  headers: { 'Content-Type': 'application/json' },
                  body: JSON.stringify({
                    contents: [{ parts: [{ text: userPrompt }] }],
                    systemInstruction: { parts: [{ text: systemPrompt }] },
                    generationConfig: {
                      responseMimeType: "application/json",
                      responseSchema: {
                        type: "OBJECT",
                        properties: {
                          summary: { type: "STRING" },
                          vocabulary: {
                            type: "ARRAY",
                            items: {
                              type: "OBJECT",
                              properties: {
                                term: { type: "STRING" },
                                definition: { type: "STRING" }
                              }
                            }
                          },
                          insights: {
                            type: "ARRAY",
                            items: {
                              type: "OBJECT",
                              properties: {
                                title: { type: "STRING" },
                                explanation: { type: "STRING" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }),
                }
              );

              if (!response.ok) throw new Error(`API Error: ${response.status}`);

              const data = await response.json();
              const parsedContent = JSON.parse(data.candidates[0].content.parts[0].text);
              setResult(parsedContent);

            } catch (err) {
              setError(err.message || "เกิดข้อผิดพลาดในการวิเคราะห์ กรุณาตรวจสอบ API Key แล้วลองใหม่อีกครั้ง");
            } finally {
              setLoading(false);
            }
          };

          return (
            <div className="min-h-screen bg-slate-50 text-slate-900 font-sans p-4 md:p-8">
              <div className="max-w-4xl mx-auto space-y-6">
                
                {/* Header */}
                <header className="flex items-center space-x-3 mb-8">
                  <div className="p-3 bg-indigo-600 rounded-xl shadow-lg">
                    <Globe className="w-8 h-8 text-white" />
                  </div>
                  <div>
                    <h1 className="text-3xl font-bold text-slate-900">MarketDecoder <span className="text-indigo-600 text-lg ml-2">TH</span></h1>
                    <p className="text-slate-500">แปลและย่อยข่าวการเงินซับซ้อน ให้เป็นเรื่องง่ายสำหรับนักลงทุน</p>
                  </div>
                </header>

                {/* API Key Input (Hidden if set automatically) */}
                {!apiKey && (
                  <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-4 flex flex-col sm:flex-row gap-3 items-start sm:items-center">
                     <div className="flex items-center gap-2 text-yellow-800">
                        <AlertCircle size={18} />
                        <span className="text-sm font-medium">ระบุ API Key</span>
                     </div>
                     <input 
                        type="password" 
                        placeholder="กรอก Gemini API Key ที่นี่"
                        className="flex-1 bg-white border border-yellow-300 rounded px-3 py-1.5 text-sm outline-none focus:ring-2 focus:ring-yellow-400 w-full sm:w-auto"
                        onChange={(e) => setApiKey(e.target.value)}
                     />
                  </div>
                )}

                {/* Input Section */}
                <div className="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden">
                  <div className="p-4 border-b border-slate-100 bg-slate-50 flex justify-between items-center">
                    <h2 className="font-semibold text-slate-700 flex items-center gap-2">
                      <FileText size={18} />
                      เนื้อหาข่าว (English or Thai)
                    </h2>
                  </div>
                  <div className="p-4">
                    <textarea
                      className="w-full h-48 p-4 bg-slate-50 border border-slate-200 rounded-xl focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 outline-none transition-all resize-none font-mono text-sm"
                      placeholder="วางบทความข่าวการเงิน หรือลิงก์ข้อความที่ต้องการวิเคราะห์ที่นี่..."
                      value={inputText}
                      onChange={(e) => setInputText(e.target.value)}
                    />
                    <div className="mt-4 flex justify-end">
                      <button
                        onClick={analyzeNews}
                        disabled={loading || !inputText || !apiKey}
                        className={`
                          flex items-center gap-2 px-6 py-2.5 rounded-xl font-medium text-white shadow-md transition-all
                          \${loading || !inputText || !apiKey 
                            ? 'bg-slate-300 cursor-not-allowed' 
                            : 'bg-indigo-600 hover:bg-indigo-700 hover:shadow-lg active:scale-95'}
                        `}
                      >
                        {loading ? <Loader2 className="animate-spin" size={20} /> : <Brain size={20} />}
                        {loading ? 'กำลังวิเคราะห์...' : 'เริ่มวิเคราะห์'}
                      </button>
                    </div>
                  </div>
                </div>

                {/* Error Message */}
                {error && (
                  <div className="bg-red-50 text-red-600 p-4 rounded-xl border border-red-100 flex items-center gap-2">
                    <AlertCircle size={20} />
                    {error}
                  </div>
                )}

                {/* Results Section */}
                {result && (
                  <div className="space-y-6 animate-in fade-in slide-in-from-bottom-4 duration-500">
                    
                    {/* 1. The Summary */}
                    <div className="bg-white rounded-2xl shadow-sm border border-slate-200 p-6">
                      <h3 className="text-lg font-bold text-slate-800 mb-3 flex items-center gap-2">
                        <BookOpen className="text-indigo-500" size={20} />
                        สรุปแบบเข้าใจง่าย
                      </h3>
                      <p className="text-slate-600 leading-relaxed text-lg">
                        {result.summary}
                      </p>
                    </div>

                    {/* 2. Investor Lessons */}
                    <div className="grid md:grid-cols-2 gap-6">
                      {result.insights.map((insight, idx) => (
                        <div key={idx} className="bg-emerald-50 rounded-2xl border border-emerald-100 p-6 relative overflow-hidden">
                           <div className="absolute top-0 right-0 p-4 opacity-10">
                              <DollarSign size={64} className="text-emerald-800" />
                           </div>
                           <h4 className="font-bold text-emerald-900 mb-2 flex items-center gap-2">
                              <span className="bg-emerald-200 text-emerald-800 text-xs px-2 py-0.5 rounded-full">บทเรียนที่ {idx + 1}</span>
                              {insight.title}
                           </h4>
                           <p className="text-emerald-800 text-sm leading-relaxed">
                             {insight.explanation}
                           </p>
                        </div>
                      ))}
                    </div>

                    {/* 3. Vocabulary Table */}
                    {result.vocabulary.length > 0 && (
                      <div className="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden">
                        <div className="p-4 bg-slate-50 border-b border-slate-100">
                           <h3 className="font-bold text-slate-700 flex items-center gap-2">
                              <BookOpen size={18} />
                              คำศัพท์น่ารู้ (English Terms)
                           </h3>
                        </div>
                        <div className="overflow-x-auto">
                          <table className="w-full text-left text-sm">
                            <thead className="bg-slate-50 text-slate-500 font-medium border-b border-slate-100">
                              <tr>
                                <th className="p-4 w-1/3">Term (English)</th>
                                <th className="p-4">ความหมาย (Thai)</th>
                              </tr>
                            </thead>
                            <tbody className="divide-y divide-slate-100">
                              {result.vocabulary.map((item, idx) => (
                                <tr key={idx} className="hover:bg-slate-50 transition-colors">
                                  <td className="p-4 font-semibold text-slate-800 align-top font-mono text-indigo-700">
                                    {item.term}
                                  </td>
                                  <td className="p-4 text-slate-600 align-top">
                                    {item.definition}
                                  </td>
                                </tr>
                              ))}
                            </tbody>
                          </table>
                        </div>
                      </div>
                    )}
                    
                    <div className="text-center text-slate-400 text-xs pt-8 pb-4">
                       Powered by Gemini 2.5 Flash • MarketDecoder TH
                    </div>
                  </div>
                )}
              </div>
            </div>
          );
        };

        const root = createRoot(document.getElementById('root'));
        root.render(<MarketDecoderTH />);
    </script>
</body>
</html>
