import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app_re_cap/MyWidgit/dropdown_button.dart';
import 'package:islamy_app_re_cap/MyWidgit/language_button_sheet.dart';
import 'package:islamy_app_re_cap/MyWidgit/mode_button_sheet.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
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
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          InkWell(
            onTap: () {
              showLanguageButtomSheet();
            },
            child: DropDownButton(title: AppLocalizations.of(context)!.english),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          InkWell(
            onTap: () {
              showModeButtomSheet();
            },
            child:
                DropDownButton(title: AppLocalizations.of(context)!.lightMode),
          ),
        ],
      ),
    );
  }

  void showLanguageButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageButtonSheet(),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
    );
  }

  void showModeButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ModeButtonSheet(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
    );
  }
}
