import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app_re_cap/Tabs/Index/index_tab.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraDetailsWindow extends StatefulWidget {
  static const String routeName = "SuraDetailsWindow_Screen";
  SuraDetailsWindow({super.key});

  @override
  State<SuraDetailsWindow> createState() => _SuraDetailsWindowState();
}

class _SuraDetailsWindowState extends State<SuraDetailsWindow> {
  //Global Variable:
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDitails;

    loadFile(args.suraNumber);
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
          body: Center(
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
                  Text("${AppLocalizations.of(context)!.sura} ${args.suraName}",
                      style: Theme.of(context).textTheme.titleMedium),
                  const Divider(
                    color: MyTheme.primaryColorLightMode,
                    thickness: 3,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => Center(
                          child: Text(
                        verses[index],
                        textAlign: TextAlign.center,
                      )),
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

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString("assets/file/Quran/$index.txt");
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}
