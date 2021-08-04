import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_starter_schema/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChangeNotifier with ChangeNotifier {
  ThemeMode _currentTheme = ThemeMode.system;

  ThemeChangeNotifier() {
    getSavedThemeMode().then((savedTheme) { 
      changeCurrentTheme( savedTheme ?? getSystemThemeMode() );
    });
  }

  ThemeMode get currentTheme => _currentTheme;
  void changeCurrentTheme( ThemeMode newTheme ) async {
    _currentTheme = newTheme;
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setInt('tema', themeChangeNotifier.currentTheme.index);
    notifyListeners();
  }

  static ThemeData get lightThemeConfig => buildLightThemeData();
  static ThemeData get darkThemeConfig => buildDarkThemeData();

  Future<ThemeMode?> getSavedThemeMode() async {
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    int themeModeIndex = await sharedPrefs.getInt('tema') ?? -1;
    
    if( ThemeMode.system.index == themeModeIndex ) return ThemeMode.system;
    if( ThemeMode.light.index == themeModeIndex ) return ThemeMode.light;
    if( ThemeMode.dark.index == themeModeIndex ) return ThemeMode.dark;
    return null;
  }

  ThemeMode getSystemThemeMode() {
    return ThemeMode.system;
  }

}

ThemeChangeNotifier themeChangeNotifier = ThemeChangeNotifier();