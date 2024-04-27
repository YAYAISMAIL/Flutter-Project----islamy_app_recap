import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/img/background_Light Mode.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title),
          ),
          body: Container(),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyTheme.navBarColorLightMode),
            child: BottomNavigationBar(items: [
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icon/radio_icon.png"),
                  label: AppLocalizations.of(context)!.but_0),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icon/sebha.png"),
                  label: AppLocalizations.of(context)!.but_1),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icon/Hadith.png"),
                  label: AppLocalizations.of(context)!.but_2),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icon/quran.png"),
                  label: AppLocalizations.of(context)!.but_3),
            ]),
          ),
        )
      ],
    );
  }
}
