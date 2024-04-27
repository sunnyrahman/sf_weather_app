import 'package:connectivity_plus/connectivity_plus.dart';
class InternetCheck{

  static Future<bool> checkUserConnection() async {
    print("Satart");
    bool isConncet=false;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile||connectivityResult == ConnectivityResult.wifi) {
      print("Satart if mobile or wifi");
      isConncet=true;
    }
    else {
      print("Satart if no conncet mobile or wifi");
      isConncet=false;
    }
    print("end");
    return isConncet;

  }
}