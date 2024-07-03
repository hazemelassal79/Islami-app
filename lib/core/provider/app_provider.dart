import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String currentLocal = "en";
  ThemeMode currentTheme = ThemeMode.light;
  changeTheme(ThemeMode newtheme) {
    if (currentTheme == newtheme) return;
    currentTheme == newtheme;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String backgroundImage() {
    return isDark() ? "assets/images/bg_dark.png" : "assets/images/bg3.jpg";
  }

  changeLanguage(String newlanguage) {
    if (currentLocal == newlanguage) return;
    currentLocal == newlanguage;
    notifyListeners();
  }
}
