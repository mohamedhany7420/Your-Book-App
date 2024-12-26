import 'package:flutter/material.dart';
import 'package:your_book_app/core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
