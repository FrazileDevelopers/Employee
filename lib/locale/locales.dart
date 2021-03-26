import 'countryLocalizations.dart';
import '../constants/countries.dart';
import '../constants/langs.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'appLocalizations.dart';
import 'package:flutter/material.dart';

class Locales {
  static Iterable<Locale> locales = [
    Locale(Langs.arabicLang, Countries.UAECode),
    Locale(Langs.englishLang, Countries.USCode),
  ];

  static Iterable<LocalizationsDelegate<dynamic>> delegates = [
    AppLocalizations.delegate,
    CountryLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
}
