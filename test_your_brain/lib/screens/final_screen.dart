import 'package:flutter/material.dart';
import '../styles/color.dart';
import 'package:test_your_brain/screens/start_screen.dart'; //OK

class FinalScreen extends StatelessWidget {
  static String routeName = '/final-screen';

  const FinalScreen({super.key});

  void startGame(BuildContext context) {
    Navigator.pushNamed(context, StartScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo_image.jpg',
              width: 500,
              height: 100,
            ),
            const SizedBox(height: 40),
            const Text(
              'Game Over',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 500,
              height: 80,
              decoration: BoxDecoration(
                color: MyColors.boxColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Your Score is score ', //to complete later
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 500,
              height: 80,
              decoration: BoxDecoration(
                color: MyColors.boxColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Level y', //to complete later
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () => startGame(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  textStyle: const TextStyle(
                      // fontSize: 18,
                      // fontWeight: FontWeight.bold,
                      ),
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  'play again ?',
                  style: TextStyle(
                    color: MyColors.myColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
