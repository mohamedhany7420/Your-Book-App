import 'package:flutter/material.dart';
import 'package:your_book_app/core/utils/assets.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          AssetsData.testerImage,
        ),
      ),
    );
  }
}
