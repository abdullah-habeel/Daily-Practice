import 'package:flutter/material.dart';
import 'package:practice/sir%20project/appbar.dart';
import 'package:practice/sir%20project/button.dart';
import 'package:practice/sir%20project/info_container.dart';
import 'package:practice/sir%20project/otp_box.dart';
import 'package:practice/sir%20project/text_button.dart';
import 'package:practice/sir%20project/text_formfield.dart';
import 'package:practice/sir%20project/upgrade_pos.dart';

class TestWidgets extends StatelessWidget {
  const TestWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: 'settomg'),
          // DropdownButton(items: ['abdullah',], onChanged: (){})
          MyButton(text: 'nothign', onPressed: () {}),
          // OtpBoxWidget(),
          // MyTextButton(text: 'she', onPressed: () {}),
          MyCustomTextField(hintText: 'hidndd'),
          UpgradeTile(onPressed: () {}),
          Row(
            children: [
              InfoCard(title: 'this is cruel life', value: 'nothing is fair'),
              InfoCard(title: 'this is cruel life', value: 'nothing is fair'),
              InfoCard(title: 'this is cruel life', value: 'nothing is fair'),
            ],
          ),
        ],
      ),
    );
  }
}
