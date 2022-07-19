import 'package:flutter/cupertino.dart';

class Language with ChangeNotifier {
  // language dir
  String languageDirection = 'rtl';

  // language code
  String languageCode = 'kr';

  void setLanguage(code, direction) async {
    languageCode = code;
    languageDirection = direction;
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // sharedPreferences.setString('languageCode', languageCode);
    // sharedPreferences.setString('languageDirection', direction);
    notifyListeners();
  }

  Future<void> getLanguageDataInLocal() async {
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // languageCode = sharedPreferences.getString('languageCode') ?? 'en';
    // languageDirection =
    //     sharedPreferences.getString('languageDirection') ?? 'ltr';
    notifyListeners();
  }

  Map<String, dynamic> get words => _words[languageCode];

  // language words
  Map _words = {
    'kr': {
      //log in tab
      'login': "چوونەژورەوە",
      'phone-number': "ژمارەی مۆبایل*",
      'fail-number': 'ژمارەکەت هەڵەیە',
      'input-phone': 'تکایە ژمارەکەت داخیل بکە',
      'password': 'ووشەی نهێنی*',
      'password-is-short': 'وشەی نهێنی زۆر کورتە',
      'forget-password': 'وشەی نهێنیت لەبیرکردووە؟',
      'otp': 'بە کۆدی OTP بجۆ ژورەوە',
      'remind-me': 'بەبیرم بهێنەوە',
      'create-account': "دروست کردنی هەژماری نوێ",
      'signup': 'خۆتۆمارکردن',
      'or': 'یاخود',

      //sign up Tab
      'first-name': 'ناوی یەکەم*',
      'last-name': 'ناوی دووەم*',
      'email': 'ئیمەیل*',
      'empty': 'بە تاڵە',
      'occupation': 'پیشە*',
      'not-selected': 'دیارینەکراوە',
      'buyer': 'کڕیار',
      'designer': 'دیزاینەر',
      'sale-person': 'مەندووب',
      'select-option': 'بەشەک دیاری بکە',
      'already-have-account':  "هەژماری تایبەتیم هەیە",
      'forgot':  '@ لەبیر کردووە',

      //Profile Tab
      'requests': 'داواکاریەکان',
      'downloads': 'داگرتنەکان',
      'point': 'خاڵ',
      'points': 'خاڵەکان',
      'wallet': 'جزدان',
      'my-wallet': 'جزدانەکەم',
      'activity': 'چالاکی',
      'complaint': 'سکاڵا',
      'delivery': 'گەیاندن',
      'printing-page': 'چاپکردنی لاپەڕە',
      'design': 'دیزاین',
      'exhibition': 'پێشانگا',


      //Gift Tab
      "exchange":"سەودا",
      "gift-card":"گیفت کارد",
      "receives":"وەرگرتنەکان",
      'my-points': 'خاڵەکانم',
      'discounts': "داشکاندن",
      'cobons': "کۆبۆنەکان",
      'partners': "هاوبەشەکان",
      'favorites':"دڵخوازەکان",
      'gifts':"خەڵاتەکان",
      'bahawala':"بە حەواڵەکردن",
      'be-sponsor':"بەبریکارکردن",
      'be-shopper':"بەفرۆشیارکردن",
      'user':"بەکارهێنەر",


      //Wallet Tab
      'add':"زیادکردن",
      'smart-card': "کارتی زیرەک",
      'send-money':"ناردنی پارە",
      'pulling': "ڕاکێشان",
      'cash-card':"کارتی کاش",
      'app-hawala': "ئەپی حەواڵە",
      'bank-card':"کارتی بانک",
      'transactions':"مامەڵەکان",
      'sponsors':"بریکارەکان",
      'exchange-currency':"گۆڕینی دراوو",
      'orders':"داواکاری",
      'shops':"فرۆشیارەکان",


      //Main Drawer
      'home': 'سەرەتا',
      'shopping': 'پەڕەکانی کڕین',
      'printing': 'چاپخانە',
      'graphic-design': 'گرافیک دیزان',
      'sponsor': 'سپۆنسەر',
      'settings': 'ڕێکخستنەکان',
      'privates': 'تایبەتیەکان',
      'locations': 'ناونیشانەکان',
      'edit-profile': 'گۆرانکاری هەژمار',
      'language': 'زمان',
      'contact': 'پەیوەندی',
      'exit': 'چونەدەرەوە',
      'signin/signup': 'چونەژوورەوە | خۆتۆمارکردن',

      //Cart Drawer
      'shopping-cart': 'سەبەتەی کڕین',
      'close': 'داخستن',
      'cart-empty': 'هیچ شتێکت هەڵنەگرتوە بۆ کرین',
      'order-to-buy': 'داواکردنی بابەت بۆ کڕین',

      //Other
      "sponsor-title":'بە‌هێزکردنی تۆڕەکان',
      "sponsor-desc":'پەڕەپێدان تەنها بۆ ئەو بەرێزانە دەبێت کە پەیجەکانیان لەلای زەمەن گرووپە',
      "sponsor-youtube":'سپۆنسەری یوتوب',
      "sponsor-twitter":'سپۆنسەری تویتەر',
      "sponsor-facebook":'سپۆنسەری فەیسبوک',
      "sponsor-instagram":'سپۆنسەری ئینستاگرام',
      "search-for":"گەڕان بۆ بابەتەکان",
      "notifications":'ئاگانامەکان',
      "notifications-warning":'شتێک بپرسە بۆ کڕین',


    },
    'ar': {
      //log in tab
      'login': "دخل",
      'phone-number': "الرقم موبایل*",
      'fail-number': 'الرقم غير صحيح',
      'input-phone': 'يرجى إدخال رقم هاتفك',
      'password': 'كلمة المرور*',
      'password-is-short': 'كلمة المرور قصيرة جداً',
      'forget-password': 'نسيان كلمة المرور ؟',
      'otp': 'تسجيل الدخول باستخدام رمز OTP',
      'remind-me': 'تذكرني',
      'create-account': "إنشاء حساب جديد",
      'signup': 'التسجيل',
      'or': 'او',

      //sign up Tab
      'first-name': 'الاسم الأول*',
      'last-name': 'اسم العائلة*',
      'email': 'البريد الإلكتروني*',
      'empty':"فارغه",
      'occupation': 'الاحتلال*',
      'not-selected': 'لم يتم تحديدها بعد',
      'buyer': 'المشتري',
      'designer': 'مصمم',
      'sale-person': 'مندوب',
      'select-option': 'تحديد خيار',
      'already-have-account':  "لدي حساب بالفعل",
      'forgot':  "نسيت @",

      //Profile Tab
      'requests': 'طلبات',
      'downloads': 'لتنزيلات',
      'point': 'نقطه',
      'points': 'نقاط',
      'wallet': 'المحفظه',
      'my-wallet': 'محفظتي',
      'activity': 'النشاط',
      'complaint': 'الشكوي',
      'delivery': 'التسليم',
      'printing-page': 'طباعة الصفحة',
      'design': 'تصميم',
      'exhibition': 'معرض',


      //Gift Tab
      "exchange":"تبادل",
      "gift-card":"بطاقة الهدايا",
      "receives":"يتلقي",
      'my-points': 'نقاط بلدي',
      'discounts': "خصومات",
      'cobons': "كوبونز",
      'partners': "الشركاء",
      'favorites':"المفضله",
      'gifts':"الهدايا",
      'bahawala':"حوالة",
      'be-sponsor':"سبونسر",
      'be-shopper':"بيع",
      'user':"المستخدم",

      //Wallet Tab
      'add':"اضافه",
      'smart-card': "البطاقة الذكية",
      'send-money':"إرسال الأموال",
      'pulling': "اسحب",
      'cash-card':"بطاقة نقدية",
      'app-hawala': "ئەپی حەوالە",
      'bank-card':"البطاقة المصرفية",
      'transactions':"المعاملات",
      'sponsors':"وكلاء",
      'exchange-currency':"تغيير العملة",
      'orders':"طلب",
      'shops':"البائعين",


      //Main Drawer
      'home': 'المنزل',
      'shopping': 'التسوق',
      'printing': 'الطباعه',
      'graphic-design': 'تصميم جرافيك',
      'sponsor': 'الراعي',
      'settings': 'اعدادات',
      'privates': 'حافظون',
      'locations': 'مواقع',
      'edit-profile': 'تحرير ملف التعريف',
      'language': 'اللغة',
      'contact': 'الاتصال',
      'exit': 'انهاء',
      'signin/signup': 'تسجيل الدخول | التسجيل',

      //Cart Drawer
      'shopping-cart': 'عربة التسوق',
      'close': 'اغلاق',
      'cart-empty': 'لم تحمل شيئاً لتشتريه',
      'order-to-buy': 'طلب مشاركة للشراء',


      //Other
      "sponsor-title":'تقوية الشبكات',
      "sponsor-desc":'سوف يكون الورق فقط لأولئك السادة الذين يتم تجميع صفحاتهم حسب الزمن',
      "sponsor-youtube":'الراعية یوتوب',
      "sponsor-twitter":'الراعية تویتەر',
      "sponsor-facebook":'الراعية فەیسبوک',
      "sponsor-instagram":'الراعية إينستاجرام',
      "search-for":"البحث عن المشاركات",
      "notifications":'الاخطارات',
      "notifications-warning":'لا شيء يحمل لشراء',
      "ask-for-buy":'اطلب شيئًا للشراء',



    },
    'en': {
      //log in tab
      'login': "Log in",
      'phone-number': " Phone Number*",
      'fail-number': 'Number is Not Correct',
      'input-phone': 'Please input your phone number',
      'password': 'Password*',
      'password-is-short': 'password is too short',
      'forget-password': 'Forget Password ?',
      'otp': 'Log in Using OTP Code',
      'remind-me': 'Remember me',
      'create-account': "Create New Account",
      'signup': 'Sign Up',
      'or': 'Or',

      //sign up Tab
      'first-name': 'First Name*',
      'last-name': 'Last Name*',
      'email': 'Email*',
      'empty':"Empty",
      'occupation': 'Occupation*',
      'not-selected': 'Not Selected yet',
      'buyer': 'Buyer',
      'designer': 'Designer',
      'sale-person': 'Representative',
      'select-option': 'Select an Option',
      'already-have-account':  "I have already an Account",
      'forgot':  "Forgot@",

      //Profile Tab
      'requests': 'Requests',
      'downloads': 'Downloads',
      'point': 'Point',
      'points': 'Points',
      'wallet': 'Wallet',
      'my-wallet': 'My Wallet',
      'activity': 'Activity',
      'complaint': 'Complaint',
      'delivery': 'Delivery',
      'printing-page': 'Printing Page',
      'design': 'Design',
      'exhibition': 'Exhibition',

      //Gift Tab
      "exchange":"Exchange",
      "gift-card":"Gift Card",
      "receives":"Receives",
      'my-points': 'My Points',
      'discounts': "Discounts",
      'cobons': "Cobons",
      'partners': "Partners",
      'favorites':"Favorites",
      'gifts':"Gifts",
      'bahawala':"Ba7awalakrdn",
      'be-sponsor':"BaBrekarkrdn",
      'be-shopper':"selling",
      'user':"User",

      //Wallet Tab
      'add':"Add",
      'smart-card': " Smart Card",
      'send-money':"Send Fund ",
      'pulling': "Pulling",
      'cash-card':" Cash Card",
      'app-hawala': " App Hawala",
      'bank-card':"Bank Card ",
      'transactions':"Transactions",
      'sponsors':"Sponsers",
      'exchange-currency':"Exchange Currency",
      'orders':"Orders",
      'shops':"Shops",


      //Main Drawer
      'home': 'Home',
      'shopping': 'Shopping',
      'printing': 'Printing',
      'graphic-design': 'Graphic Design',
      'sponsor': 'Sponsor',
      'settings': 'Settings',
      'privates': 'Privates',
      'locations': 'Locations',
      'edit-profile': 'Edit Profile',
      'language': 'Language',
      'contact': 'Contact',
      'exit': 'Exit',
      'signin/signup': 'Sign in | Sign up',

      //Cart Drawer
      'shopping-cart': 'Shopping Cart',
      'close': 'Close',
      'cart-empty': 'You didn\'t carry anything to buy.',
      'order-to-buy': 'Request a post to buy',


      //Other
      "sponsor-title":'Strengthen grids',
      "sponsor-desc":'Papering will be only for those gentlemen whose pages are grouped by time',
      "sponsor-youtube":'YouTube sponsor',
      "sponsor-twitter":'Twitter sponsor',
      "sponsor-facebook":'Facebook sponsor',
      "sponsor-instagram":'Instagram Sponsor',
      "search-for":"Search for Posts",
      "notifications":"Notifications",
      "notifications-warning":'Nothing Holds To Buy',
      "ask-for-buy":'Ask Something For Buy',

    }
  };
}
