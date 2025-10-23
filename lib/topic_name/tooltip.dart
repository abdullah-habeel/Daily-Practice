import 'package:flutter/material.dart';

class TooltipPrac extends StatelessWidget {
  const TooltipPrac({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tooltip(
            message: 'Click to search something',
            showDuration: const Duration(seconds: 2),
            // waitDuration: const Duration(milliseconds: 999),
            preferBelow: true,
            triggerMode: TooltipTriggerMode.longPress,
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(color: Colors.black),
            child: Icon(Icons.search, size: 40),
          ),
        ],
      ),
    );
  }
}
