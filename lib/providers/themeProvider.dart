import '../themes/darkThemePref.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  DarkThemePref darkThemePref = DarkThemePref();
  bool _darkTheme = false;

  bool get getDarkTheme => _darkTheme;

  set darkTheme(bool val) {
    _darkTheme = val;
    darkThemePref.setDarkTheme(val);
    print(val);
    notifyListeners();
  }
}
