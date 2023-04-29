import 'package:flutter/material.dart';
import 'package:test_your_brain/styles/text_styles.dart';

import '../styles/color.dart';

class NumberButton extends StatelessWidget {
  final String child;

  final VoidCallback onTap;

  var buttonColor = MyColors.boxColor;

  NumberButton({
    super.key,
    required this.child,

    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    //condition so the = is green
    if (child == '=') {
      buttonColor = Colors.green;

    } else if (child == '') {
      buttonColor = MyColors.myColor;

    } else if (child == 'DEL') {
      buttonColor = Colors.red;
    } else if (child == 'AC') {
      buttonColor = Colors.blueGrey;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),

      //button in a way
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              child,
              style: SmallTextStyle.smallTextStyle,
            ),

          ),
        ),
      ),
    );
  }
}
