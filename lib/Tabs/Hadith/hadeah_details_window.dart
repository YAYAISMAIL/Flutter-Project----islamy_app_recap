import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadeathDetailsWindow extends StatelessWidget {
  static const String routeName = "HadeathDetailsWindow_Screen";
  const HadeathDetailsWindow({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Text("Name of Hadeah",
                      style: Theme.of(context).textTheme.titleMedium),
                  const Divider(
                    color: MyTheme.primaryColorLightMode,
                    thickness: 3,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.025,
                          vertical: MediaQuery.of(context).size.width * 0.025,
                        ),
                        child: Text("Deatails...."),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
