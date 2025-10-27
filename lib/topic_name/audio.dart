import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Audio extends StatefulWidget {
  const Audio({super.key});

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await player.play(AssetSource('photos/senorita.mp3'));
            },
            child: const Text('Play Audio'),
          ),
          ElevatedButton(
            onPressed: () {
              player.stop();
            },
            child: Text('stop'),
          ),
          ElevatedButton(
            onPressed: () {
              player.pause();
            },
            child: Text('pause'),
          ),
        ],
      ),
    );
  }
}
