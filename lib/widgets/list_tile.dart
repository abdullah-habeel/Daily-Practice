import 'package:flutter/material.dart';

class ListtileWidget extends StatelessWidget {
  final String text;
  final String title;
  final IconData icon;
  const ListtileWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(text),
      title: Text(title),
      trailing: Icon(icon),
    );
  }
}
