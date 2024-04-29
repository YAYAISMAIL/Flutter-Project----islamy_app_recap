import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app_re_cap/MyWidgit/dropdown_button.dart';
import 'package:islamy_app_re_cap/MyWidgit/language_button_sheet.dart';
import 'package:islamy_app_re_cap/MyWidgit/mode_button_sheet.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.025,
        vertical: MediaQuery.of(context).size.height * 0.015,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: provider.isDark()
                      ? MyTheme.fontColorDarkMode
                      : MyTheme.fontColorLightMode,
                ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          InkWell(
            onTap: () {
              showLanguageButtomSheet(provider);
            },
            child: DropDownButton(
                title: provider.appLanguage == 'en'
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: provider.isDark()
                      ? MyTheme.fontColorDarkMode
                      : MyTheme.fontColorLightMode,
                ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          InkWell(
            onTap: () {
              showModeButtomSheet(provider);
            },
            child: DropDownButton(
                title: provider.isDark()
                    ? AppLocalizations.of(context)!.darkMode
                    : AppLocalizations.of(context)!.lightMode),
          ),
        ],
      ),
    );
  }

  void showLanguageButtomSheet(dynamic provider) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageButtonSheet(),
    );
  }

  void showModeButtomSheet(dynamic provider) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ModeButtonSheet(),
    );
  }
}
