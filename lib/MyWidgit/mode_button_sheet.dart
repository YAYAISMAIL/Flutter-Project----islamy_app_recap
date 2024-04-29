import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/Provider/app_config_provider.dart';

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
                ? getSelectedItemWidget(AppLocalizations.of(context)!.darkMode)
                : getUnselectedItemWidget(
                    AppLocalizations.of(context)!.darkMode),
          ),
          InkWell(
            onTap: () {
              //Change_App Language:-
              provider.changeTheme(ThemeMode.light);
            },
            child: !(provider.isDark())
                ? getSelectedItemWidget(AppLocalizations.of(context)!.lightMode)
                : getUnselectedItemWidget(
                    AppLocalizations.of(context)!.lightMode),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Icon(
          Icons.check,
          size: 30,
        ),
      ],
    );
  }

  Widget getUnselectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
