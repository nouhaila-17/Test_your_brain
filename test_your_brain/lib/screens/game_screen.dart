import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_your_brain/styles/color.dart';
import 'package:test_your_brain/utils/pad_buttons.dart';
import 'package:test_your_brain/styles/text_styles.dart';

class GameScreen extends StatefulWidget {
  //route
  static String routeName = '/game-screen';
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  //numbers of the pad
  List<String> numberPad = [
    '7',
    '8',
    '9',
    'AC',
    '4',
    '5',
    '6',
    'DEL',
    '1',
    '2',
    '3',
    '=',
    '0',
  ];
  //user's answer
  String userAnswer = '';
  //tapped button
  void tappedButton(String clicked) {
    setState(() {
      if (clicked == '=') {
        //seing if the user is correct
        checkResult();
      } else if (clicked == 'DEL') {
        if (userAnswer == '') {
          userAnswer = '';
        } else {
          userAnswer = userAnswer.substring(0, userAnswer.length - 1);
        }
        //deliting the last number only
      } else if (clicked == 'AC') {
        //deleting everything
        userAnswer = '';
      } else {
        //max numbers ton enter
        if (userAnswer.length < 3) {
          userAnswer += clicked;
        }
      }
    });
  }

//checking the results
  void checkResult() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myColor,
      body: Column(
        children: [
          //logo and Timer
          Container(
            height: 120,
            color: Colors.amber,
          ),
          //operation
          Expanded(
            flex: 1,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //operation
                  const Text(
                    '1 + 1 = ',
                    style: SmallTextStyle.smallTextStyle,
                  ),
                  //answer
                  Container(
                    height: 60,
                    width: 90,
                    //color: Colors.amber,
                    child: Text(
                      userAnswer,
                      style: SmallTextStyle.smallTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //buttons of numbers +delete + submit answer
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: GridView.builder(
                  itemCount: numberPad
                      .length, //number of the boxes also is indexed from 0 to 11
                  physics:
                      const NeverScrollableScrollPhysics(), //because it scrolls
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, //3colomns
                  ),
                  itemBuilder: (context, index) {
                    return NumberButton(
                      child: numberPad[index],
                      onTap: () => tappedButton(numberPad[index]),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
