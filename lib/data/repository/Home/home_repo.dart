import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../api/api_client.dart';

class HomeRepo {
  final ApiClient apiClient;
  // final ChaShebaDatabase db;
  final SharedPreferences sharedPreferences;
  HomeRepo( {required this.apiClient,
    // required this.db,
    required this.sharedPreferences});



}
