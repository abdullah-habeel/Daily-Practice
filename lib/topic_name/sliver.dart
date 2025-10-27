import 'package:flutter/material.dart';

class SliverPrac extends StatelessWidget {
  const SliverPrac({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true, // stays visible when scrolled up
            floating: true, // appears instantly when scrolling up
            expandedHeight: 200, // height when expanded
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver AppBar Example'),
              background: FlutterLogo(),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
