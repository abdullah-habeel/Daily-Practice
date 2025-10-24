import 'package:flutter/material.dart';

class UpgradeTile extends StatelessWidget {
  final VoidCallback onPressed;

  const UpgradeTile({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      focusColor: Colors.lightBlueAccent,
      tileColor: const Color.fromARGB(255, 158, 220, 248),

      leading: const Text(
        'My Store',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.blue,
        ),
      ),
      trailing: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
          backgroundColor: Colors.blue,
        ),
        child: const Text(
          'Upgrade POS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
