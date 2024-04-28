import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
      child: Column(
        children: [
          Container(
            color: Colors.blueAccent,
            height: 110,
            width: 110,
          ),
        ],
      ),
    );
  }
}
