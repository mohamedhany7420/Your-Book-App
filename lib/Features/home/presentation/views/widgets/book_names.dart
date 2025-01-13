
import 'package:flutter/material.dart';

class BookNames extends StatelessWidget {
   const BookNames({
    super.key,
    required this.style1,
    required this.style2,
     required this.crossAxisAlignment, required this.bookTitle, required this.author
  });
  final String bookTitle;
final String author;
  final TextStyle style1;
  final TextStyle style2;
  final dynamic crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          bookTitle,
          style: style1,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
         Text(
          author,
          style: style2,
        ),
      ],
    );
  }
}