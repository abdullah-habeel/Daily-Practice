import 'package:flutter/material.dart';

class CardPrac extends StatelessWidget {
  const CardPrac({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade50,
      padding: const EdgeInsets.all(12),
      child: ListView(
        children: List.generate(
          6,
          (index) => Card(
            elevation: 4,
            shadowColor: Colors.amber,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: const Icon(Icons.face),
              title: Text('This is card #$index'),
              subtitle: const Text('Practicing with Card and Page Flip!'),
            ),
          ),
        ),
      ),
    );
  }
}
