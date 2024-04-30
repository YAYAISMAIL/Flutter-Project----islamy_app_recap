import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/Tabs/Hadith/hadith_tab.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HadeathDetailsWindow extends StatefulWidget {
  static const String routeName = "HadeathDetailsWindow_Screen";
  const HadeathDetailsWindow({super.key});

  @override
  State<HadeathDetailsWindow> createState() => _HadeathDetailsWindowState();
}

class _HadeathDetailsWindowState extends State<HadeathDetailsWindow> {
  //Global Variable:-
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadeathDitails;
    if (verses.isEmpty) {
      fileLoad(args.hadithNumber);
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/img/background_Light Mode.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: provider.isDark()
                      ? MyTheme.primaryColorDarkMode
                      : MyTheme.primaryColorLightMode,
                ))
              : Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.025,
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                    ),
                    height: MediaQuery.of(context).size.height * 0.75,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 0.65),
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Text("Name of Hadeah",
                            style: Theme.of(context).textTheme.titleMedium),
                        const Divider(
                          color: MyTheme.primaryColorLightMode,
                          thickness: 3,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) => Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.025,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.025,
                                  ),
                                  child: Center(
                                      child: Flexible(
                                    child: Text(
                                      verses[index],
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                            itemCount: verses.length,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        )
      ],
    );
  }

  void fileLoad(int Index) async {
    String content =
        await rootBundle.loadString("assets/file/Ahadith/h${Index + 1}.txt");
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}
