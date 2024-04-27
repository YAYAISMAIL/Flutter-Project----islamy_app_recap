import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/style.dart';

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
            title: Text("Islami"),
          ),
          body: Container(),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyTheme.navBarColorLightMode),
            child: BottomNavigationBar(items: [
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icon/radio_icon.png"),
                  label: "radio"),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icon/sebha.png"), label: "Sebha"),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icon/Hadith.png"), label: "Hadith"),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icon/quran.png"), label: "Quraan"),
            ]),
          ),
        )
      ],
    );
  }
}
