import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:your_book_app/core/utils/app_router.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 40
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_sharp,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
