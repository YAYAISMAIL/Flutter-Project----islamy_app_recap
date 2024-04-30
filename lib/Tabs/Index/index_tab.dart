import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/Tabs/Index/sura_details_window.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IndexTab extends StatelessWidget {
  IndexTab({super.key});

  //Global Varibales:
  List<String> suraList = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        Center(child: Image.asset('assets/icon/quran_image.png')),
        SizedBox(height: MediaQuery.of(context).size.height * 0.025),
        Divider(
          height: 0,
          color: provider.isDark()
              ? MyTheme.primaryColorDarkMode
              : MyTheme.primaryColorLightMode,
          thickness: 3,
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.0075),
          child: Text(
            AppLocalizations.of(context)!.index,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: provider.isDark()
                      ? MyTheme.fontColorDarkMode
                      : MyTheme.fontColorLightMode,
                ),
          ),
        ),
        Divider(
          height: 0,
          color: provider.isDark()
              ? MyTheme.primaryColorDarkMode
              : MyTheme.primaryColorLightMode,
          thickness: 3,
        ),
        Expanded(
            child: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.085),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(SuraDetailsWindow.routeName,
                      arguments: SuraDitails(
                          suraName: suraList[index], suraNumber: index + 1));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      suraList[index],
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: provider.isDark()
                                ? MyTheme.fontColorDarkMode
                                : MyTheme.fontColorLightMode,
                          ),
                    ),
                    Text(
                      "$index",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: provider.isDark()
                                ? MyTheme.fontColorDarkMode
                                : MyTheme.fontColorLightMode,
                          ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: suraList.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 0,
              color: provider.isDark()
                  ? MyTheme.primaryColorDarkMode
                  : MyTheme.primaryColorLightMode,
              thickness: 2,
            );
          },
        ))
      ],
    );
  }

  
}

class SuraDitails {
  String suraName;
  int suraNumber;

  SuraDitails({required this.suraName, required this.suraNumber});
}
