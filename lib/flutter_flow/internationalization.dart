import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SplashPage
  {
    'lxdvenb1': {
      'en': 'Home',
      'ar': '',
    },
  },
  // LoginPage
  {
    'kz5fiqod': {
      'en': 'Question Bank',
      'ar': 'بنك الأسئلة',
    },
    'ewgnx2a2': {
      'en': 'JD',
      'ar': '',
    },
    'oo3b7kuz': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    'gk97f3v1': {
      'en': 'Paaword',
      'ar': 'كلمة',
    },
    'ei6ui2p8': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
    },
    'z9e115ot': {
      'en': 'LOGIN',
      'ar': 'تسجيل الدخول',
    },
    '1xojipgm': {
      'en': 'Don\'t have an accpunt yet?',
      'ar': 'كلمة المرور غير متطابقة',
    },
    'mg3afphe': {
      'en': 'Create an account',
      'ar': 'إنشاء حساب',
    },
    '3z5o1men': {
      'en': 'Home',
      'ar': '',
    },
  },
  // CreatAccountPage
  {
    'nas4qj4n': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
    },
    'arnq92rm': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'u6fx0k2p': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'rf353ukz': {
      'en': 'JD',
      'ar': '',
    },
    'kmgyx2ec': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    'c4b4alhy': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '1op5g7zc': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
    },
    '1skvunrf': {
      'en': 'Password Is Not Matched',
      'ar': 'كلمة المرور غير متطابقة',
    },
    'hfn39fqp': {
      'en': 'Register',
      'ar': 'يسجل',
    },
    'oripc5ip': {
      'en': 'Home',
      'ar': '',
    },
  },
  // HomePage
  {
    'j4803r1i': {
      'en': 'Purchased Packages',
      'ar': 'الحزم المشتراة',
    },
    'suath6pm': {
      'en': 'See All',
      'ar': 'يبدأ',
    },
    'uaz1fgnx': {
      'en':
          'sdjfnksdjnfksjdnfkjsndfkjsndkfjnsdkfjnskdjfnksjdnfkjsdnfkjsdnfksjdnfkjsdnfksjdnfkjsdnfkjsdnfkjsdnfkjnsdkfj',
      'ar': '',
    },
    'xj2d6oci': {
      'en': '15 Jun 2024',
      'ar': '',
    },
    'pb0qozdt': {
      'en': 'Exam Results',
      'ar': 'نتائج الامتحانات',
    },
    'ytkmpemp': {
      'en': 'See All',
      'ar': 'اظهار الكل',
    },
    'pe9x78jq': {
      'en': '15 Jun 2024',
      'ar': '',
    },
    'obnw88jz': {
      'en': 'Exam 1',
      'ar': '',
    },
    'l2iphx0j': {
      'en': '80 / 100',
      'ar': '',
    },
    'wqi6g2cf': {
      'en': 'Home',
      'ar': '',
    },
  },
  // SettingsPage
  {
    'gn9152al': {
      'en': 'Ahmad Salem',
      'ar': 'ليس لديك حساب حتى الآن؟',
    },
    '4gpqvlc5': {
      'en': 'Phone',
      'ar': 'هاتف',
    },
    '7w8dcheo': {
      'en': '0777 888 522',
      'ar': 'الحزم المشتراة',
    },
    '7v4qafn2': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '5lhqbrr0': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    'roktrzj5': {
      'en': 'Nationality',
      'ar': 'جنسية',
    },
    'dvo2c8pz': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    '119oy2sp': {
      'en': 'Speciality',
      'ar': 'تخصص',
    },
    '1fci2zli': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    '7qcxzrv7': {
      'en': 'University',
      'ar': 'جامعة',
    },
    '5yv5231f': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    '3u2twcxn': {
      'en': 'How did you hear about us',
      'ar': 'كيف سمعت عنا',
    },
    'kk4t906h': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    '7oleud44': {
      'en': 'Created at',
      'ar': 'أنشئت في',
    },
    'smj7bvnl': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    'gxfhi1hf': {
      'en': 'Morning , Ahmad Salem',
      'ar': '',
    },
    '0wfr9agm': {
      'en': 'Morning , Ahmad Salem',
      'ar': '',
    },
    'n9mgph3s': {
      'en': 'Home',
      'ar': '',
    },
  },
  // PackagePage
  {
    'ewxwjqpm': {
      'en': 'Packages',
      'ar': 'الحزم',
    },
    'pa5lx3ao': {
      'en': 'Package 1',
      'ar': 'الحزمة 1',
    },
    'yagv72w4': {
      'en': 'Speciality',
      'ar': 'تخصص',
    },
    'cljhfbew': {
      'en': 'Pediatric',
      'ar': '# من الامتحانات',
    },
    'oa1kk3dh': {
      'en': '# of questions',
      'ar': '# من الأسئلة',
    },
    '8cvd6c7n': {
      'en': 'Pediatric',
      'ar': '# من الامتحانات',
    },
    'ecjoi8g9': {
      'en': '# of exams',
      'ar': '# من الامتحانات',
    },
    'l2o95iau': {
      'en': 'Pediatric',
      'ar': '# من الامتحانات',
    },
    '2hkfzt35': {
      'en': 'Discription',
      'ar': 'وصف',
    },
    'h9klhwi3': {
      'en':
          'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      'ar': 'وصف',
    },
    'mom20it0': {
      'en': '100 JOD',
      'ar': '100 دينار',
    },
    'i0qp430j': {
      'en': 'Buy Now',
      'ar': 'اشتري الآن',
    },
    'ejnl14pq': {
      'en': 'Home',
      'ar': '',
    },
  },
  // SideMenuPage
  {
    'yav268fr': {
      'en': 'Ahmad Salem',
      'ar': 'ليس لديك حساب حتى الآن؟',
    },
    'uz5235rx': {
      'en': 'My Profile',
      'ar': 'ملفي',
    },
    'c57b3go5': {
      'en': 'My Purchased',
      'ar': 'بلدي شراؤها',
    },
    'akcjwet1': {
      'en': 'My Exam',
      'ar': 'امتحاني',
    },
    '668q6rer': {
      'en': 'About Apps',
      'ar': 'حول التطبيقات',
    },
    'bif2arug': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    '8udcku71': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'w8xylo6t': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    'lly55doe': {
      'en': 'Home',
      'ar': '',
    },
  },
  // EditSettingsPage
  {
    '3i22oso2': {
      'en': 'Ahmad Salem',
      'ar': 'ليس لديك حساب حتى الآن؟',
    },
    'suoxnb2b': {
      'en': 'Edit Personal Information',
      'ar': 'تحرير المعلومات الشخصية',
    },
    'evtiypqq': {
      'en': 'Phone',
      'ar': 'هاتف',
    },
    'cdp3qp2v': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'orvhcsi6': {
      'en': 'Nationality',
      'ar': 'جنسية',
    },
    'ga0dllno': {
      'en': 'Option 1',
      'ar': '',
    },
    'gm2bkpqf': {
      'en': 'Please select...',
      'ar': '',
    },
    'bmx40rry': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'c8ccoqnc': {
      'en': 'Speciality',
      'ar': 'تخصص',
    },
    '7sv634v3': {
      'en': 'Option 1',
      'ar': '',
    },
    'lqwsb8di': {
      'en': 'Please select...',
      'ar': '',
    },
    'cadw6gzc': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '0r00c108': {
      'en': 'University',
      'ar': 'جامعة',
    },
    '7ivetowv': {
      'en': 'How did you hear about us',
      'ar': 'كيف سمعت عنا',
    },
    'ke8gt1br': {
      'en': 'Option 1',
      'ar': '',
    },
    'ohq01fgs': {
      'en': 'Please select...',
      'ar': '',
    },
    'hjvjib3n': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'pf49za6d': {
      'en': 'Morning , Ahmad Salem',
      'ar': '',
    },
    'wqq67e66': {
      'en': 'Morning , Ahmad Salem',
      'ar': '',
    },
    'q8qtwfba': {
      'en': 'Home',
      'ar': '',
    },
  },
  // AboutAppPage
  {
    'kkg05k66': {
      'en': 'About Apps',
      'ar': 'حول التطبيقات',
    },
    'xcvv9avx': {
      'en':
          'This application was developed by complete chain tech to help doctors in testing their knowledge before advancing to the board exam, the app current version is 1.21.4. If you need any help or you faced any issue during your experience in the website feel free to contact us',
      'ar': '',
    },
    'q4qyhgz0': {
      'en': 'test@completechaintech.com',
      'ar': 'test@completechaintech.com',
    },
    '53u5cmjg': {
      'en': '+962799600892',
      'ar': '+962799600892',
    },
    '6m4w81w5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // PurchasedPackagesPage
  {
    'g17k4wy5': {
      'en': 'Packages',
      'ar': 'الحزم',
    },
    '4ypj64aj': {
      'en': 'Package 1',
      'ar': 'الحزمة 1',
    },
    'zv3iz7vo': {
      'en': 'Purchase Date',
      'ar': 'تاريخ الشراء',
    },
    '49la975m': {
      'en': 'Pediatric',
      'ar': '# من الامتحانات',
    },
    'pt71zysm': {
      'en': '# of questions',
      'ar': '# من الأسئلة',
    },
    'zg3jhwmx': {
      'en': 'Pediatric',
      'ar': '# من الامتحانات',
    },
    'g6qblax1': {
      'en': 'Buy Now',
      'ar': 'اشتري الآن',
    },
    'mzrfyiks': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ExamResultsPage
  {
    'oynyk6qs': {
      'en': 'Exam Results',
      'ar': 'نتائج الامتحانات',
    },
    '4lam142w': {
      'en': '15 Jun 2024',
      'ar': '',
    },
    '1lakc5at': {
      'en': 'Exam 1',
      'ar': '',
    },
    'sp44xzc8': {
      'en': '80 / 100',
      'ar': '',
    },
    '8es3pzv6': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ExamsPage
  {
    'bcyxvoa5': {
      'en': 'Packages',
      'ar': 'الحزم',
    },
    'wmdpnhqf': {
      'en': 'Package 1',
      'ar': 'الحزمة 1',
    },
    'k554vpg9': {
      'en':
          'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy',
      'ar': '# من الامتحانات',
    },
    '2e4ima8u': {
      'en': '# Of Questions',
      'ar': '# من الأسئلة',
    },
    'dn38keuv': {
      'en': '110',
      'ar': 'اشتري الآن',
    },
    '7gd9py2e': {
      'en': 'Start',
      'ar': 'اشتري الآن',
    },
    'wmlzvev6': {
      'en': 'Home',
      'ar': '',
    },
  },
  // StartExamPage
  {
    '4iw7ilql': {
      'en': 'About Apps',
      'ar': 'حول التطبيقات',
    },
    'y9gbukh8': {
      'en':
          'This application was developed by complete chain tech to help doctors in testing their knowledge before advancing to the board exam, the app current version is 1.21.4. If you need any help or you faced any issue during your experience in the website feel free to contact us',
      'ar': '',
    },
    'x50rseaf': {
      'en': 'is simply dummy text of the printing',
      'ar': 'هو مجرد نص وهمي للطباعة',
    },
    'jyjw027d': {
      'en': 'Start',
      'ar': 'يبدأ',
    },
    'yb3f92gc': {
      'en': 'Home',
      'ar': '',
    },
  },
  // StartExamPageCopy
  {
    'lli7etrg': {
      'en': 'Ahmad Salem',
      'ar': 'ليس لديك حساب حتى الآن؟',
    },
    'ohwgg4kx': {
      'en': 'Phone',
      'ar': 'هاتف',
    },
    '7wjhffxc': {
      'en': '0777 888 522',
      'ar': 'الحزم المشتراة',
    },
    'r3a9e3iw': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '12yveje6': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    '95pdqb8f': {
      'en': 'Nationality',
      'ar': 'جنسية',
    },
    'rwxs9ogv': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    'ch36c6yw': {
      'en': 'Speciality',
      'ar': 'تخصص',
    },
    'wjkpolxx': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    'yul25pdd': {
      'en': 'University',
      'ar': 'جامعة',
    },
    'stq95iaj': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    '1b09nbwf': {
      'en': 'How did you hear about us',
      'ar': 'كيف سمعت عنا',
    },
    'kxw22d9x': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    '3ucmcbjp': {
      'en': 'Created at',
      'ar': 'أنشئت في',
    },
    'd5uarok2': {
      'en': 'Hello World',
      'ar': 'الحزم المشتراة',
    },
    'sciglxy2': {
      'en': 'Morning , Ahmad Salem',
      'ar': '',
    },
    '0avv80w7': {
      'en': 'Morning , Ahmad Salem',
      'ar': '',
    },
    'yerwk9xd': {
      'en': 'Home',
      'ar': '',
    },
  },
  // CountryCodePage
  {
    'f42r3ok8': {
      'en': 'Select Country Code',
      'ar': 'حدد رمز البلد',
    },
    '33cfolsf': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    '9xx2mofo': {
      'en': '',
      'ar': '',
    },
    'r0u6rjm5': {
      'en': '',
      'ar': '',
    },
    'h7hfbth9': {
      'en': '',
      'ar': '',
    },
    'izaqvh05': {
      'en': '',
      'ar': '',
    },
    'mucmnuy5': {
      'en': '',
      'ar': '',
    },
    '4n8st74d': {
      'en': '',
      'ar': '',
    },
    'w5dqypxz': {
      'en': '',
      'ar': '',
    },
    'ws2zkzau': {
      'en': '',
      'ar': '',
    },
    'howsp8mk': {
      'en': '',
      'ar': '',
    },
    'mt3wymen': {
      'en': '',
      'ar': '',
    },
    'aip2vjaq': {
      'en': '',
      'ar': '',
    },
    'emqvxmow': {
      'en': '',
      'ar': '',
    },
    '120coz12': {
      'en': '',
      'ar': '',
    },
    '9qisnuzb': {
      'en': '',
      'ar': '',
    },
    'xqxffnfs': {
      'en': '',
      'ar': '',
    },
    'aaisvx0i': {
      'en': '',
      'ar': '',
    },
    'ipm40i4v': {
      'en': '',
      'ar': '',
    },
    'knlqezzx': {
      'en': '',
      'ar': '',
    },
    'tiyo150a': {
      'en': '',
      'ar': '',
    },
    '8kjred1y': {
      'en': '',
      'ar': '',
    },
    'p9i2u5r1': {
      'en': '',
      'ar': '',
    },
    'c0y9zwj1': {
      'en': '',
      'ar': '',
    },
    'kcmp3yr4': {
      'en': '',
      'ar': '',
    },
    'q718y0ww': {
      'en': '',
      'ar': '',
    },
    'j39rdzxa': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
