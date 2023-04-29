import 'package:flutter/material.dart';
import '../styles/color.dart';
import 'package:test_your_brain/screens/start_screen.dart'; //OK

class FinalScreen extends StatelessWidget {
  static String routeName = '/final-screen';
  //quand on a le score
  //quand on a le score
  const FinalScreen({
    Key? key,
    //required this.score,
    //required this.level,
  }) : super(key: key);

  void startGame(BuildContext context) {
    Navigator.pushNamed(context, StartScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo_image.jpg',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Game Over',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Your Score is x', //to complete later
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                  'olay again ?',
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
