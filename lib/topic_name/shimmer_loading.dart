import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmerloading extends StatelessWidget {
  const Shimmerloading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: ListTile(
              leading: const Icon(Icons.favorite),
              title: Container(height: 15, color: Colors.white),
              subtitle: Container(
                height: 10,
                margin: const EdgeInsets.only(top: 5),
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
