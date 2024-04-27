import 'package:url_launcher/url_launcher.dart';
import 'images.dart';

class AppConstants {
  static const String APP_NAME = "Cha Sheba - চা সেবা";
  static const int APP_VERSION = 1;

  //Api End Point
  static const String BASE_URL = 'https://chaseba.chasebabtri.com/';
  static const String BLOGS_IMAGE_URL = BASE_URL+'blogs/';
  static const String CATEGORY_IMAGE_URL = BASE_URL+'categories/';
  static const String SERVICE_CAT_IMAGE_URL = BASE_URL+'service-categories/';
  static const String CALL_PERSON_IMAGE_URL = BASE_URL+'service-people/';
  static const String ABOUT_IMAGE_URL = BASE_URL+'content-pages/';
  static const String DEVELOPER_IMAGE_URL = BASE_URL+'developer-pages/';

  static const String RECENT_POST_URL = 'api/blog/list';
  static const String CATEGORY_URL = 'api/category/list';
  static const String CATEGORY_BLOG_URL = 'api/category/blog/list';
  static const String ALL_CATEGORY_LIST_URL = 'api/all/category/list';
  static const String ALL_BLOG_LIST_URL = 'api/blog/list';
  static const String CALL_SERVICE_CAT_URL = 'api/service-category/list';
  static const String CALL_PERSION_URL = 'api/service-category/service-person/list';
  static const String ABOUT_US_URL = 'api/content/about-us/list';
  static const String BTRI_URL = 'api/content/btri/list';
  static const String INNOVATOR_URL = 'api/content/innovator/list';
  static const String DEDICATE_URL = 'api/content/dedicated-to/list';
  static const String TRADERS_URL = 'api/content/tea-traders-association/list';
  static const String IMPORTANT_LINKS_URL = 'api/content/important-link/list';
  static const String SEARCH_URL = 'api/blog/search';
  static const String DEVELOPER_URL = 'api/developer/list';
  static const String ALLDATALIST = 'api/all/data';


///Page Value
  static const int ABOUT = 1;
  static const int BTRI = 2;
  static const int INNOVATOR = 3;
  static const int DEDICATE = 4;
  // static const int DEVELOPER = 5;

  static const String LOGIN_URI = 'api/user/login';

  static const String USER_TYPE = 'user_type';

  // Shared Key
  static const String THEME = 'theme';
  static const String TOKEN = 'token';
  static const String USERID = 'user_id';
  static const String REGIONID = 'region_id';
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';
  static const String CART_LIST = 'cart_list';
  static const String USER_PASSWORD = 'user_password';
  static const String USER_EMAIL = 'user_email';
  static const String IS_STUDENT = 'is_student';
  static const String USER_PHONE = 'user_phone';
  static const String USER_IMAGE = 'user_image';
  static const String STUDENT_ID = 'student_id';
  static const String STUDENT_MOBILE = 'student_mobile';

  static const String USER_ADDRESS = 'user_address';
  static const String USER_NAME = 'user_name';
  static const String USER_NAMEP = 'user_namep';
  static const String USER_COUNTRY_CODE = 'user_country_code';
  static const String NOTIFICATION = 'notification';
  static const String SEARCH_HISTORY = 'search_history';
  static const String INTRO = 'intro';
  static const String NOTIFICATION_COUNT = 'notification_count';
  static const String TOPIC = 'all_zone_customer';
  static const String ZONE_ID = 'zoneId';
  static const String SAVEISDB = 'saveDb';


  static const int en = 1;
  static const int bn = 0;


  static const List<String> LANGUAGECODEBYINDEX=["en","bn"];




  // static List<LanguageModel> languages = [
  //   LanguageModel(imageUrl: Images.bd, languageName: 'বাংলা',countryCode: "BD",languageCode: "bn"),
  //   LanguageModel(imageUrl: Images.en, languageName: 'English', countryCode: "UK",languageCode: "en"),
  // ];


//internet status code =========
  static const int BADGETWAY = 502;
  static const int SUCCESS = 200;



  static const String measurements = 'metric';
  static const String degrees = 'celsius';
  static const String timeformat = '12';



  static void launchUrls(
      {
        required String urls,
      }) async {
    await launchUrl(Uri.parse(urls.toString()),mode: LaunchMode.externalApplication);
      // if (await canLaunchUrl(Uri.parse(urls))) {
      //   await launchUrl(Uri.parse(urls.toString()),mode: LaunchMode.externalApplication);
      // } else {
      //   throw 'Could not launch ${urls.toString()}';
      // }

    //   await launchUrl(Uri.parse(url()));
  }


}
