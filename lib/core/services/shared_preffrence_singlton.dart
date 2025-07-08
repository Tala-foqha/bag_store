// core/services/shared_preffrence_singlton.dart
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreffrenceSinglton{
  static late SharedPreferences _instance;

  

  static Future<void>init()async{
    _instance =await SharedPreferences.getInstance();
  }
}