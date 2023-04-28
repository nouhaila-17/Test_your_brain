import 'package:flutter/material.dart';

import '../utils/color.dart';

class StartScreen extends StatelessWidget {
  static String routeName = '/start-game-screen';
  const StartScreen({super.key});

  //function
  void startGame(BuildContext context) {
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.myColor,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          //space
          children: [
            Container(
              height: 200,
            ),
            SizedBox(
              height: 100,
              width: 350,
              child: Image.asset('images/logo_image.jpg'),
            ),
            //space
            const SizedBox(height: 100),
            //text
            const Center(
              child: SizedBox(
                width: 300,
                child: Text(
                  'In this game you will solve 20 mathematic operations the maximum time to solve each operation is 10s in the end you will know your score on 20',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            //space
            const SizedBox(height: 50),
            //button
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
                  'Get Started',
                  style: TextStyle(
                    color: MyColors.myColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ));
  }
}
