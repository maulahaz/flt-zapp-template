import 'package:shared_preferences/shared_preferences.dart';

class MySession {
  static Future<bool> setLoggedIn(bool status) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool("logged_in", status);
  }

  static Future<bool> getLogedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("logged_in") ?? false;
  }

  static Future<bool> setUserId(String userId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("user_id", userId);
  }

  static Future<String> getUserId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("user_id") ?? '';
  }
}