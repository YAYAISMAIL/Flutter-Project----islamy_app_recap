import 'package:flutter/material.dart';

class MyTheme {
  //Light Mode Color:
  static const Color primaryColorLightMode = Color(0xffB7935F);
  static const Color selectedItemColorLightMode = Color(0xff242424);
  static const Color unSelectedItemColorLightMode = Color(0xffffffff);
  static const Color fontColorLightMode = Color(0xff242424);
  static const Color btnFontColorLightMode = Color(0xffFFFFFF);
  static const Color iconColorLightMode = Color(0xffB7935F);
  static const Color navBarColorLightMode = Color(0xffB7935F);

  //Dark Mode Color:
  static const Color primaryColorDarkMode = Color(0xffB7935F);
  static const Color selectedItemColorDarkMode = Color(0xff242424);
  static const Color unSelectedItemColorDarkMode = Color(0xffffffff);
  static const Color fontColorDarkMode = Color(0xff242424);
  static const Color btnFontColorDarkMode = Color(0xffFFFFFF);
  static const Color iconColorDarkMode = Color(0xffB7935F);
  static const Color navBarColorDarkMode = Color(0xffB7935F);

  static ThemeData myTheme = ThemeData(
      //Scaffold
      scaffoldBackgroundColor: Colors.transparent,
      //AppBar Style
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),

      //NavBar Style
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: selectedItemColorLightMode,
        unselectedItemColor: unSelectedItemColorDarkMode,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 25),
      ),

      //Text Style:-
      // 1- title (Large- Medium -Small)
      // 2- body (Medium -Small)
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(fontSize: 25),
        bodyMedium: TextStyle(fontSize: 20),
        bodySmall: TextStyle(fontSize: 12),
      ));
}
