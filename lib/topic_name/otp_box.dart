import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MyOTP extends StatelessWidget {
  final Function(String) onChanged;
  final Function(String) onCompleted;

  const MyOTP({super.key, required this.onChanged, required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        onChanged: onChanged,
        onCompleted: onCompleted,
        keyboardType: TextInputType.number,
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8),
          fieldHeight: 60,
          fieldWidth: 50,
          activeFillColor: Colors.white,
          inactiveFillColor: Colors.grey.shade200,
          selectedFillColor: Colors.lightBlue.shade50,
          activeColor: Colors.blue,
          selectedColor: Colors.blueAccent,
          inactiveColor: Colors.grey,
        ),
        enableActiveFill: true,
      ),
    );
  }
}
