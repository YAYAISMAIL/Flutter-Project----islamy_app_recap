import 'package:flutter/material.dart';

class MyTheme {
  //Light Mode Color:
  static const Color primaryColorLightMode = Color(0xffB7935F);
  static const Color borderBtnColorLightMode = Color.fromARGB(255, 91, 72, 46);
  static const Color selectedItemColorLightMode = Color(0xff242424);
  static const Color unSelectedItemColorLightMode = Color(0xffffffff);

  static const Color fontColorLightMode = Color(0xff242424);
  static const Color btnFontColorLightMode = Color(0xffFFFFFF);
  static const Color frameBgColorLightMode = Color(0x7EB7935F);

  static const Color iconColorLightMode = Color(0xffB7935F);
  static const Color navBarColorLightMode = Color(0xffB7935F);

  //Dark Mode Color:
  static const Color primaryColorDarkMode = Color(0xff141A2E);
  static const Color borderBtnColorDarkMode = Color.fromARGB(154, 240, 199, 14);
  static const Color selectedItemColorDarkMode = Color(0xfff0c808);
  static const Color unSelectedItemColorDarkMode = Color(0xffffffff);

  static const Color fontColorDarkMode = Color(0xffffffff);
  static const Color fontOfQuranColorDarkMode = Color(0xffFACC1D);
  static const Color btnFontColorDarkMode = Color(0xff000000);

  static const Color frameBgColorDarkMode = Color.fromRGBO(20, 26, 46, 0.8);
  static const Color iconColorDarkMode = Color(0xffFACC1D);
  static const Color navBarColorDarkMode = Color(0xff141A2E);

  //App LightMode :-
  static ThemeData myTheme = ThemeData(
      //Scaffold
      scaffoldBackgroundColor: Colors.transparent,
      //AppBar Style
      appBarTheme: const AppBarTheme(
        iconTheme:
            IconThemeData(color: MyTheme.primaryColorLightMode, size: 40),
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
        selectedItemColor: selectedItemColorLightMode,
        unselectedItemColor: unSelectedItemColorDarkMode,
        selectedIconTheme: IconThemeData(size: 60),
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

  //App DarkMode :-
  static ThemeData myThemeDark = ThemeData(
      //Scaffold
      scaffoldBackgroundColor: Colors.transparent,
      //AppBar Style
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: MyTheme.primaryColorDarkMode, size: 40),
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
        selectedItemColor: selectedItemColorDarkMode,
        unselectedItemColor: unSelectedItemColorDarkMode,
        selectedIconTheme: IconThemeData(size: 60),
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
