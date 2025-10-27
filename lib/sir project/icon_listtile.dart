import 'package:flutter/material.dart';

class IconListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool showSwitch;
  final bool switchValue;
  final ValueChanged<bool>? onSwitchChanged;
  final VoidCallback? onTrailingTap;

  const IconListTile({
    super.key,
    required this.text,
    required this.icon,
    this.showSwitch = false,
    this.switchValue = false,
    this.onSwitchChanged,
    this.onTrailingTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.blue, size: 28),
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          trailing: showSwitch
              ? Switch(value: switchValue, onChanged: onSwitchChanged)
              : IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  ),
                  onPressed: onTrailingTap,
                ),
        ),
        const Divider(height: 1, thickness: 0.5, color: Colors.grey),
      ],
    );
  }
}
