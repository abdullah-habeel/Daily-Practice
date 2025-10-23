import 'package:flutter/material.dart';
import 'package:practice/widgets/list_tile.dart';

class ListviewPrac extends StatelessWidget {
  const ListviewPrac({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          return ListtileWidget(
            text: 'here is',
            icon: Icons.dangerous,
            title: 'here is nothig',
          );
        },
      ),
    );
  }
}
