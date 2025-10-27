import 'package:flutter/material.dart';
import 'package:practice/sir%20project/appbar.dart';
import 'package:practice/sir%20project/button.dart';
import 'package:practice/sir%20project/icon_listtile.dart';
import 'package:practice/sir%20project/info_container.dart';
import 'package:practice/sir%20project/text_formfield.dart';
import 'package:practice/sir%20project/upgrade_pos.dart';
import 'package:practice/topic_name/otp_box.dart';

class Testof extends StatelessWidget {
  const Testof({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: 'hoee'),
          SizedBox(height: 10),
          MyOTP(onChanged: (value) {}, onCompleted: (value) {}),
          MyButton(text: 'hee', onPressed: () {}),
          SizedBox(height: 10),
          IconListTile(text: 'he', icon: Icons.favorite),
          SizedBox(height: 10),
          InfoCard(title: 'nothing', value: 'what i am doing'),
          SizedBox(height: 10),
          MyCustomTextField(hintText: 'enter here'),
          SizedBox(height: 10),
          UpgradeTile(onPressed: () {}),
        ],
      ),
    );
  }
}
