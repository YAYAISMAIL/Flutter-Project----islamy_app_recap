import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/Home/home_screen.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/Tabs/Hadith/hadeah_details_window.dart';
import 'package:islamy_app_re_cap/Tabs/Index/sura_details_window.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Islamy App",
      theme: MyTheme.myTheme,
      themeMode: provider.appTheme,
      darkTheme: MyTheme.myThemeDark,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        HadeathDetailsWindow.routeName: (context) => HadeathDetailsWindow(),
        SuraDetailsWindow.routeName: (context) => SuraDetailsWindow()
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
    );
  }
}
