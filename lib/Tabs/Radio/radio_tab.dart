import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatefulWidget {
  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  //Spacer:-
  int sp1 = 3;

  int sp2 = 2;

  int sp3 = 2;

  int sp4 = 4;

  //Global Variable:-
  int touchCountter = 1;

  bool isPlay = true;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
      child: Column(
        children: [
          Spacer(flex: sp1),
          Image.asset("assets/icon/radio_image.png"),
          Spacer(flex: sp2),
          Text(
            AppLocalizations.of(context)!.radio_of_holy_quraan,
            style: TextStyle(
              color: provider.isDark()
                  ? MyTheme.fontColorDarkMode
                  : MyTheme.fontColorLightMode,
            ),
          ),
          Spacer(flex: sp3),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: provider.appLanguage == 'en'
                      ? const FaIcon(FontAwesomeIcons.backward)
                      : const FaIcon(FontAwesomeIcons.forward),
                  color: provider.isDark()
                      ? MyTheme.iconColorDarkMode
                      : MyTheme.iconColorLightMode,
                ),
                IconButton(
                  onPressed: () {
                    touchCountter++;
                    if (touchCountter % 2 == 0) {
                      isPlay = false;
                    } else {
                      isPlay = true;
                    }

                    setState(() {});
                  },
                  icon: isPlay
                      ? const FaIcon(FontAwesomeIcons.play)
                      : const FaIcon(FontAwesomeIcons.pause),
                  color: provider.isDark()
                      ? MyTheme.iconColorDarkMode
                      : MyTheme.iconColorLightMode,
                ),
                IconButton(
                  onPressed: () {},
                  icon: provider.appLanguage == 'en'
                      ? const FaIcon(FontAwesomeIcons.forward)
                      : const FaIcon(FontAwesomeIcons.backward),
                  color: provider.isDark()
                      ? MyTheme.iconColorDarkMode
                      : MyTheme.iconColorLightMode,
                ),
              ],
            ),
          ),
          Spacer(flex: sp4),
        ],
      ),
    );
  }
}
