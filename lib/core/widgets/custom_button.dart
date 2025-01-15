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
    required this.textColor, this.onPressed
  }
);
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Radius leftRadius;
  final Radius rightRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
   double height = MediaQuery.of(context).size.height;
   double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .06,
      width: width * 0.35,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.horizontal(
          left: leftRadius,
          right: rightRadius
        ),
      ),
      child: TextButton(
        style: const ButtonStyle(
          alignment: Alignment.topCenter
        ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
                fontFamily: kGtSectraFine
            ),
          )
      ),
    );
  }
}
