import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/Home/home_screen.dart';
import 'package:islamy_app_re_cap/Tabs/Hadith/hadeah_details_window.dart';
import 'package:islamy_app_re_cap/Tabs/Index/sura_details_window.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Islamy App",
      theme: MyTheme.myTheme,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        HadeathDetailsWindow.routeName: (context) => HadeathDetailsWindow(),
        SuraDetailsWindow.routeName: (context) => SuraDetailsWindow()
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("ar"),
    );
  }
}
