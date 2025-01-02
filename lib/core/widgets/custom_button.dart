import 'package:flutter/material.dart';
import 'package:your_book_app/core/utils/styles.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.leftRadius,
    required this.rightRadius,
    required this.textColor
  }
);
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Radius leftRadius;
  final Radius rightRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 220,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.horizontal(
          left: leftRadius,
          right: rightRadius
        ),
      ),
      child: TextButton(
        style: const ButtonStyle(
          alignment: Alignment.center
        ),
          onPressed: () {

          },
          child: Text(
            text,
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
                fontFamily: kGtSectraFine
            ),
          )
      ),
    );
  }
}
