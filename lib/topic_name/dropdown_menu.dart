import 'package:flutter/material.dart';

class DropdownMenuExamp extends StatefulWidget {
  const DropdownMenuExamp({super.key});

  @override
  State<DropdownMenuExamp> createState() => _DropdownMenuExampState();
}

class _DropdownMenuExampState extends State<DropdownMenuExamp> {
  String selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DropdownMenu Example")),
      body: Center(
        child: DropdownMenu<String>(
          initialSelection: selectedValue,
          label: const Text("Select Option"),
          dropdownMenuEntries: const [
            DropdownMenuEntry(value: '1', label: 'Option 1'),
            DropdownMenuEntry(value: '2', label: 'Option 2'),
            DropdownMenuEntry(value: '3', label: 'Option 3'),
          ],
          onSelected: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
        ),
      ),
    );
  }
}
