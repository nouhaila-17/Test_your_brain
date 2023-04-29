import 'package:flutter/material.dart';
import 'package:test_your_brain/screens/game_over_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameOverScreen(
        level: 1,
        score: 5,
      ),
    );
  }
}