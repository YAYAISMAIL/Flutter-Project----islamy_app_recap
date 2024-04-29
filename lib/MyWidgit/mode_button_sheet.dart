import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';
import 'package:islamy_app_re_cap/style.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ModeButtonSheet extends StatefulWidget {
  const ModeButtonSheet({super.key});

  @override
  State<ModeButtonSheet> createState() => _ModeButtonSheetState();
}

class _ModeButtonSheetState extends State<ModeButtonSheet> {
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
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.isDark()
                ? getSelectedItemWidget(
                    AppLocalizations.of(context)!.darkMode, provider.isDark())
                : getUnselectedItemWidget(
                    AppLocalizations.of(context)!.darkMode, provider.isDark()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          InkWell(
            onTap: () {
              //Change_App Language:-
              provider.changeTheme(ThemeMode.light);
            },
            child: !(provider.isDark())
                ? getSelectedItemWidget(
                    AppLocalizations.of(context)!.lightMode, provider.isDark())
                : getUnselectedItemWidget(
                    AppLocalizations.of(context)!.lightMode, provider.isDark()),
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
