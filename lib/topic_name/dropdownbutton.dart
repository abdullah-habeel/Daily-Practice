import 'package:flutter/material.dart';

class DropdownButo extends StatefulWidget {
  const DropdownButo({super.key});

  @override
  State<DropdownButo> createState() => _DropdownButoState();
}

class _DropdownButoState extends State<DropdownButo> {
  final List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes'];

  String? selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DropdownButton Example")),
      body: Center(
        child: DropdownButton<String>(
          hint: const Text("Select a fruit"),
          value: selectedFruit,
          items: fruits.map((fruit) {
            return DropdownMenuItem<String>(value: fruit, child: Text(fruit));
          }).toList(),

          onChanged: (value) {
            setState(() {
              selectedFruit = value;
            });
          },
        ),
      ),
    );
  }
}
