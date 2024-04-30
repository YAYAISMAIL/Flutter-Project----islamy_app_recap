import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:provider/provider.dart';

class LanguageButtonSheet extends StatefulWidget {
  LanguageButtonSheet({super.key});

  @override
  State<LanguageButtonSheet> createState() => _LanguageButtonSheetState();
}

class _LanguageButtonSheetState extends State<LanguageButtonSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.045,
        vertical: MediaQuery.of(context).size.height * 0.025,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              //Change_App Language:-
              provider.changeLanguage('en');
            },
            child: provider.appLanguage == 'en'
                ? getSelectedItemWidget(
                    AppLocalizations.of(context)!.english, provider.isDark())
                : getUnselectedItemWidget(
                    AppLocalizations.of(context)!.english, provider.isDark()),
          ),
          InkWell(
            onTap: () {
              //Change_App Language:-
              provider.changeLanguage('ar');
            },
            child: provider.appLanguage == 'ar'
                ? getSelectedItemWidget(
                    AppLocalizations.of(context)!.arabic, provider.isDark())
                : getUnselectedItemWidget(
                    AppLocalizations.of(context)!.arabic, provider.isDark()),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text, bool isDark) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: isDark
                  ? MyTheme.primaryColorDarkMode
                  : MyTheme.primaryColorLightMode),
        ),
        Icon(
          Icons.check,
          size: 30,
          color: isDark
              ? MyTheme.primaryColorDarkMode
              : MyTheme.primaryColorLightMode,
        ),
      ],
    );
  }

  Widget getUnselectedItemWidget(String text, bool isDark) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: isDark
                  ? MyTheme.primaryColorDarkMode
                  : MyTheme.primaryColorLightMode),
        ),
      ],
    );
  }
}