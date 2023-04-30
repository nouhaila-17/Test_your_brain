import 'package:flutter/material.dart';
import 'game_screen.dart';

class FinalScreen extends StatelessWidget {
  static const routeName = '/final-screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final score = args['score'] as int;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your score is:',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              score.toString(),
              style: TextStyle(fontSize: 48.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Play again?'),
            ),
          ],
        ),
      ),
    );
  }
}