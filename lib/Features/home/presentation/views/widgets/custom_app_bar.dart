import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:your_book_app/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        children: [
          Image.asset(
              AssetsData.logo,
          height: 20,
          ),
          const Spacer(),
          IconButton(onPressed: () {
            GoRouter.of(context).push('/searchView');
          }, icon: const Icon(Icons.search_outlined))
        ],
      ),
    );
  }
}
