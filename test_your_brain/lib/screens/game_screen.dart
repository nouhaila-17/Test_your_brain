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
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: const Center(
                child: Text(
                  '1 + 1 = ?',
                  style: SmallTextStyle.smallTextStyle,
                ),
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
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
