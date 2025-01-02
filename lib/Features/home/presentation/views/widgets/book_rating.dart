import 'package:flutter/material.dart';
import 'package:your_book_app/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 16,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle18,
        ),

        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(2870)',
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
