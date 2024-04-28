import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/Tabs/Hadith/hadeah_details_window.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTab extends StatelessWidget {
  HadithTab({super.key});
  //Spacer:-
  int sp1 = 2;
  int sp2 = 3;
  int sp3 = 2;
  int sp4 = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
      child: Column(
        children: [
          //Spacer(flex: sp1),
          Image.asset("assets/icon/ahadeth_image.png"),
          //Spacer(flex: sp2),
          const Divider(
            color: MyTheme.primaryColorLightMode,
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.ahadith,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const Divider(
            color: MyTheme.primaryColorLightMode,
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        HadeathDetailsWindow.routeName,
                        arguments: HadeathDitails(
                            hadithName: AppLocalizations.of(context)!.ahadith,
                            hadithNumber: index));
                  },
                  child: Text(
                    "data $index",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ));
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: MyTheme.primaryColorLightMode,
                  thickness: 3,
                );
              },
              itemCount: 50,
            ),
          )
        ],
      ),
    );
  }
}

class HadeathDitails {
  String hadithName;
  int hadithNumber;

  HadeathDitails({required this.hadithName, required this.hadithNumber});
}
