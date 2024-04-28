import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
      child: Column(
        children: [
          Spacer(flex: sp1),
          Image.asset("assets/icon/radio_image.png"),
          Spacer(flex: sp2),
          Text(AppLocalizations.of(context)!.radio_of_holy_quraan),
          Spacer(flex: sp3),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.backward),
                  color: MyTheme.iconColorLightMode,
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
                  color: MyTheme.iconColorLightMode,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.forward),
                  color: MyTheme.iconColorLightMode,
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
