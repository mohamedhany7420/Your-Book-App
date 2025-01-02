import 'package:flutter/material.dart';
import 'package:your_book_app/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20,
          bottom: 40
      ),
      child: Row(
        children: [
          Image.asset(
              AssetsData.logo,
          height: 20,
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
    );
  }
}
