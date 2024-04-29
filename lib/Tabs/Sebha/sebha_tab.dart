import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'dart:math' as math;
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  //Spacer:-
  int sp1 = 2;

  int sp2 = 1;

  int sp3 = 2;

  int sp4 = 2;

  int sp5 = 3;

  //Global Variables:-
  double roationAngle = -math.pi / 4;
  int counter = 0;
  int listIndex = 0;
  List<String> tasbehList = ["سبحان الله", "الحمدلله", "الله أكبر"];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
      child: Column(
        children: [
          Spacer(flex: sp1),
          InkWell(
            onTap: () {
              counter++;
              roationAngle = roationAngle + 20;
              if (counter == 34) {
                listIndex++;
                counter = 1;
                if (listIndex == 3) {
                  listIndex = 0;
                }
              }
              setState(() {});
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.095,
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: provider.isDark()
                        ? Image.asset("assets/icon/dark_head_of_seb7a.png")
                        : Image.asset("assets/img/head_of_seb7a.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.075,
                    ),
                    child: Transform.rotate(
                      angle: roationAngle,
                      child: provider.isDark()
                          ? Image.asset("assets/icon/dark_body_of_seb7a.png")
                          : Image.asset("assets/img/body_of_seb7a.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(flex: sp2),
          Text(AppLocalizations.of(context)!.tasbeh_count,
              style: TextStyle(
                  color: provider.isDark()
                      ? MyTheme.fontColorDarkMode
                      : MyTheme.fontColorLightMode)),
          Spacer(flex: sp3),
          Container(
            decoration: BoxDecoration(
                color: provider.isDark()
                    ? MyTheme.frameBgColorDarkMode
                    : MyTheme.frameBgColorLightMode,
                borderRadius: BorderRadius.circular(25)),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.height * 0.1,
            child: Center(
              child: Text(
                "$counter",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: provider.isDark()
                        ? MyTheme.fontColorDarkMode
                        : MyTheme.fontColorLightMode),
              ),
            ),
          ),
          Spacer(flex: sp4),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.005,
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            decoration: BoxDecoration(
              color: provider.isDark()
                  ? MyTheme.primaryColorDarkMode
                  : MyTheme.primaryColorLightMode,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                  color: provider.isDark()
                      ? MyTheme.borderBtnColorDarkMode
                      : MyTheme.borderBtnColorLightMode),
            ),
            child: Text(
              tasbehList[listIndex],
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: provider.isDark()
                      ? MyTheme.btnFontColorDarkMode
                      : MyTheme.btnFontColorLightMode),
            ),
          ),
          Spacer(flex: sp5),
        ],
      ),
    );
  }
}
