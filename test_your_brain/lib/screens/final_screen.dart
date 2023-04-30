import 'package:flutter/material.dart';
import 'package:test_your_brain/styles/color.dart';
import 'package:test_your_brain/styles/text_styles.dart';
import 'package:test_your_brain/screens/start_screen.dart';

class FinalScreen extends StatelessWidget {
  //route
  static String routeName = '/final-screen';
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //result
            Text(
              'Your Score',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            //score
            Text(
              '${ModalRoute.of(context)!.settings.arguments}',
              style: NumberTextStyle.numberTextStyle,
            ),
            SizedBox(height: 40),
            //restart game button
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, StartScreen.routeName);
              },
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Restart Game',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyColors.myColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}