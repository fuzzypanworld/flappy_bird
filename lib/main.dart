import 'package:flame/game.dart';
import 'package:flappy_bird/flappy_bird_game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final game = FlappyBirdGame(); // Create an instance of your game
    return MaterialApp(
      title: 'Flappy Bird Game',
      home: Scaffold(
        body: GameWidget(game: game), // Pass the game instance to your GameWidget
      ),
    );
  }
}