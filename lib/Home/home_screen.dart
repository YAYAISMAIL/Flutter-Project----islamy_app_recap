import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/Tabs/Hadith/hadith_tab.dart';
import 'package:islamy_app_re_cap/Tabs/Index/index_tab.dart';
import 'package:islamy_app_re_cap/Tabs/Radio/radio_tab.dart';
import 'package:islamy_app_re_cap/Tabs/Sebha/sebha_tab.dart';
import 'package:islamy_app_re_cap/Tabs/Setting/setting_tab.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Golabal Variable
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDark()
            ? Image.asset(
                "assets/img/background_image_DarkMode.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              )
            : Image.asset(
                "assets/img/background_Light Mode.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title),
          ),
          body: tabList[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: provider.isDark()
                    ? MyTheme.navBarColorDarkMode
                    : MyTheme.navBarColorLightMode),
            child: BottomNavigationBar(
                onTap: (value) {
                  index = value;
                  setState(() {});
                },
                currentIndex: index,
                items: [
                  BottomNavigationBarItem(
                      icon: const ImageIcon(
                          AssetImage("assets/icon/radio_icon.png")),
                      label: AppLocalizations.of(context)!.but_0),
                  BottomNavigationBarItem(
                      icon: const ImageIcon(
                        AssetImage("assets/icon/sebha.png"),
                      ),
                      label: AppLocalizations.of(context)!.but_1),
                  BottomNavigationBarItem(
                      icon:
                          const ImageIcon(AssetImage("assets/icon/Hadith.png")),
                      label: AppLocalizations.of(context)!.but_2),
                  BottomNavigationBarItem(
                      icon:
                          const ImageIcon(AssetImage("assets/icon/quran.png")),
                      label: AppLocalizations.of(context)!.but_3),
                  BottomNavigationBarItem(
                      icon: const Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.but_4),
                ]),
          ),
        )
      ],
    );
  }

  List<Widget> tabList = [
    RadioTab(),
    SebhaTab(),
    HadithTab(),
    IndexTab(),
    SettingTab()
  ];
}
