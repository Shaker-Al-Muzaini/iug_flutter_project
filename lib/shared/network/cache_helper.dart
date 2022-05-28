// ignore_for_file: camel_case_types

import 'package:shared_preferences/shared_preferences.dart';

class Cache_Helper {
  static late final SharedPreferences  sharedPreferences ;
  static init() async{
    sharedPreferences =await SharedPreferences.getInstance();
  }
  static Future<bool> putData ({
  required String key,
  required bool value,
})async{
    return await sharedPreferences.setBool(key,value);
  }

  static  bool? getData ({
    required String key,
  }){
    return  sharedPreferences.getBool(key);
  }
}