import '../constants/countries.dart';
import '../constants/langs.dart';
import '../constants/prefs.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguage with ChangeNotifier {
  Locale _appLocale = Locale(Langs.englishLang);

  Locale get appLocale => _appLocale ?? Locale(Langs.englishLang);

  fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString(Prefs.langKey) == null) {
      _appLocale = Locale(Langs.englishLang);
      return Null;
    }
    _appLocale = Locale(prefs.getString(Prefs.langKey));
    return Null;
  }

  void changeLanguage(Locale type) async {
    var prefs = await SharedPreferences.getInstance();
    if (_appLocale == type) {
      return;
    }

    if (type == Locale(Langs.arabicLang)) {
      _appLocale = Locale(Langs.arabicLang);
      await prefs.setString(Prefs.langKey, Langs.arabicLang);
      await prefs.setString(Prefs.countryKey, Countries.UAECode);
    } else {
      _appLocale = Locale(Langs.englishLang);
      await prefs.setString(Prefs.langKey, Langs.englishLang);
      await prefs.setString(Prefs.countryKey, Countries.USCode);
    }
    notifyListeners();
  }
}
