import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePref {
  static const THEME_STATUS = 'THEMESTATUS';

  setDarkTheme(bool val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, val);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return !prefs.containsKey(THEME_STATUS) ?? false;
  }
}
