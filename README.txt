# Broiler Guide — Netlify (FULL app v4.2)

- واجهة كاملة مع استشارة AI مدمجة.
- ErrorBoundary لمنع الشاشة البيضاء لو صار استثناء.
- فنكشن CommonJS تعمل على Netlify بدون Build.

## التفعيل
- إمّا تغيّر السطر في `netlify/functions/ai-chat.js` وتضع مفتاحك مكان `PASTE_YOUR_OPENAI_KEY_HERE`،
- أو تضيف `OPENAI_API_KEY` في Environment variables.

## النشر
- أنشئ **Site عادي** (مو Drop).
- ارفع **المجلد كامل** (فيه `index.html` و`netlify/` و`netlify.toml`).

## إن ظهرت صفحة بيضاء
- أعد التحميل مع `?v=2` لتجاوز الكاش.
- افتح Console وانسخ أول خطأ يظهر وابعثه لي.

## المعاينة المحلية
- من سطر الأوامر نفّذ `./serve.sh` داخل المجلد لتشغيل خادم بسيط على المنفذ الافتراضي 8000، أو مرّر رقم المنفذ الذي تفضّله مثل `./serve.sh 9000`.
- افتح المتصفح على `http://localhost:8000/index.html` لمشاهدة واجهة المربين،
- وانتقل إلى `http://localhost:8000/admin.html` لإدارة حسابات المربين وسجلاتهم.
