import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.system;


  get currentThemeMode => themeMode;

  void setThemeMode(ThemeMode mode){
    themeMode = mode;
    notifyListeners();
  }

  bool get isDarkThemeMode => (themeMode == ThemeMode.dark);

}