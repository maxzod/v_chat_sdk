import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class LanguageController extends ChangeNotifier {
  Locale _locale = ui.window.locale;
  Locale get locale => _locale;

  ThemeData _theme = ThemeData.light();
  ThemeData get theme => _theme;

  void changeTheme(bool isLight) {
    // TODO :: support the app theme not just only dark and light
    if (isLight) {
      _theme = ThemeData.dark();
    } else {
      _theme = ThemeData.light();
    }
    notifyListeners();
  }

  void setLocale(Locale value) {
    _locale = value;
    notifyListeners();
  }
}
