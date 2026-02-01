<!DOCTYPE html>
<!--
    تعريف نوع المستند
    HTML5 هو الإصدار الحديث من HTML
-->
<html lang="ar" dir="rtl">
<!--
    lang="ar"  => لغة الموقع عربي
    dir="rtl"  => اتجاه الكتابة من اليمين لليسار
-->

<head>
    <!-- ترميز الصفحة عشان العربي يشتغل صح -->
    <meta charset="UTF-8">

    <!-- عشان الموقع يكون Responsive على الموبايل -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- عنوان الصفحة اللي بيظهر في التاب -->
    <title>موقعي الأول</title>

    <!-- ================= CSS ================= -->
    <style>
        /* إعادة ضبط القيم الافتراضية للمتصفح */
        * {
            margin: 0;              /* إزالة المسافات الخارجية */
            padding: 0;             /* إزالة المسافات الداخلية */
            box-sizing: border-box; /* حساب الحجم يشمل البوردر */
            font-family: Tahoma, Arial, sans-serif;
        }

        /* تنسيق الجسم الرئيسي */
        body {
            background-color: #f4f6f9; /* لون الخلفية */
            color: #333;               /* لون النص */
            line-height: 1.8;          /* تباعد السطور */
        }

        /* ================= الهيدر ================= */
        header {
            background: linear-gradient(135deg, #2c3e50, #3498db);
            color: white;
            padding: 30px;
            text-align: center;
        }

        header h1 {
            font-size: 40px;
            margin-bottom: 10px;
        }

        header p {
            font-size: 18px;
            opacity: 0.9;
        }

        /* ================= القائمة ================= */
        nav {
            background-color: #222;
        }

        nav ul {
            list-style: none;          /* إزالة النقاط */
            display: flex;             /* عرض أفقي */
            justify-content: center;   /* توسيط */
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;     /* إزالة الخط */
            font-size: 18px;
            padding: 15px;
            display: block;
            transition: 0.3s;
        }

        nav ul li a:hover {
            background-color: #3498db;
            border-radius: 5px;
        }

        /* ================= الأقسام ================= */
        section {
            padding: 60px 20px;
            max-width: 1100px;
            margin: auto;
        }

        section h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 32px;
            color: #2c3e50;
        }

        /* ================= الكروت ================= */
        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .card {
            background-color: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        /* ================= الفورم ================= */
        form {
            background: white;
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            margin: auto;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        form input,
        form textarea,
        form button {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        form button {
            background-color: #3498db;
            color: white;
            cursor: pointer;
            border: none;
        }

        form button:hover {
            background-color: #2c3e50;
        }

        /* ================= الفوتر ================= */
        footer {
            background-color: #222;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }
    </style>
</head>

<body>

    <!-- ================= الهيدر ================= -->
    <header>
        <h1>أهلاً بيك في موقعي</h1>
        <p>ده مثال تعليمي كامل بـ HTML و CSS و JavaScript</p>
    </header>

    <!-- ================= القائمة ================= -->
    <nav>
        <ul>
            <li><a href="#about">عن الموقع</a></li>
            <li><a href="#services">الخدمات</a></li>
            <li><a href="#contact">تواصل معنا</a></li>
        </ul>
    </nav>

    <!-- ================= عن الموقع ================= -->
    <section id="about">
        <h2>عن الموقع</h2>
        <p style="text-align:center;">
            الموقع ده معمول كمثال تعليمي لشرح أساسيات
            بناء مواقع الويب باستخدام HTML و CSS و JavaScript
        </p>
    </section>

    <!-- ================= الخدمات ================= -->
    <section id="services">
        <h2>الخدمات</h2>

        <div class="cards">
            <div class="card">
                <h3>تصميم مواقع</h3>
                <p>تصميم مواقع حديثة ومتجاوبة مع جميع الشاشات.</p>
            </div>

            <div class="card">
                <h3>برمجة</h3>
                <p>برمجة مواقع باستخدام أحدث التقنيات.</p>
            </div>

            <div class="card">
                <h3>دعم فني</h3>
                <p>دعم فني مستمر وحلول سريعة.</p>
            </div>
        </div>
    </section>

    <!-- ================= تواصل معنا ================= -->
    <section id="contact">
        <h2>تواصل معنا</h2>

        <form onsubmit="sendMessage(event)">
            <input type="text" id="name" placeholder="اسمك">
            <input type="email" id="email" placeholder="بريدك الإلكتروني">
            <textarea id="message" rows="5" placeholder="رسالتك"></textarea>
            <button type="submit">إرسال</button>
        </form>
    </section>

    <!-- ================= الفوتر ================= -->
    <footer>
        <p>© 2026 - جميع الحقوق محفوظة</p>
    </footer>

    <!-- ================= JavaScript ================= -->
    <script>
        // دالة إرسال الرسالة
        function sendMessage(event) {
            event.preventDefault(); // منع إعادة تحميل الصفحة

            // جلب القيم من الحقول
            let name = document.getElementById("name").value;
            let email = document.getElementById("email").value;
            let message = document.getElementById("message").value;

            // تحقق بسيط
            if (name === "" || email === "" || message === "") {
                alert("من فضلك املا كل الحقول");
                return;
            }

            // رسالة تأكيد
            alert(
                "تم إرسال رسالتك بنجاح\n\n" +
                "الاسم: " + name + "\n" +
                "الإيميل: " + email
            );

            // تفريغ الحقول
            document.getElementById("name").value = "";
            document.getElementById("email").value = "";
            document.getElementById("message").value = "";
        }
    </script>

</body>
</html>
