import 'package:flutter/material.dart';
import 'package:test_your_brain/utils/text_styles.dart';

import 'color.dart';

class NumberButton extends StatelessWidget {
  final String child;
  const NumberButton({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: MyColors.boxColor,
        child: Center(
          child: Text(
            child,
            style: SmallTextStyle.smallTextStyle,
          ),
        ),
      ),
    );
  }
}
