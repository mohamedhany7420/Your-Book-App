import 'package:flutter/material.dart';
import 'package:your_book_app/core/utils/styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'You can also like',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          height: 10,
        ),
        SimilarBooksListView(listHeight: height * 0.15),
      ],
    );
  }
}
