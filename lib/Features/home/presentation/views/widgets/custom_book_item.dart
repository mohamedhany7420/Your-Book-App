
import 'package:flutter/material.dart';
import 'package:your_book_app/core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  CustomBookItem({super.key , required this.height});
  double height;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        AssetsData.testerImage,
        height: height ,
      ),
    );
  }
}
