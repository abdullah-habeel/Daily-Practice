import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';
import 'package:practice/topic_name/card.dart';
import 'shimmer_loading.dart';

class BookPageFlipDemo extends StatefulWidget {
  const BookPageFlipDemo({super.key});

  @override
  State<BookPageFlipDemo> createState() => _BookPageFlipDemoState();
}

class _BookPageFlipDemoState extends State<BookPageFlipDemo> {
  final _controller = GlobalKey<PageFlipWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageFlipWidget(
        key: _controller,
        backgroundColor: Colors.grey.shade300,
        lastPage: const Center(
          child: Text(
            "The End ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),

        children: [const CardPrac(), const Shimmerloading()],
      ),
    );
  }
}
