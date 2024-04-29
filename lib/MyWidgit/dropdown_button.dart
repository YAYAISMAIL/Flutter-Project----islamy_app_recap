import 'package:flutter/material.dart';
import 'package:islamy_app_re_cap/style.dart';

class DropDownButton extends StatelessWidget {
  String title;
  DropDownButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
        vertical: MediaQuery.of(context).size.height * 0.0075,
      ),
      decoration: BoxDecoration(
          color: MyTheme.primaryColorLightMode,
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: MyTheme.btnFontColorLightMode),
          ),
          const Icon(
            Icons.arrow_drop_down,
            color: MyTheme.btnFontColorLightMode,
            size: 25,
          ),
        ],
      ),
    );
  }
}
