
import 'package:flutter/material.dart';

class BookNames extends StatelessWidget {
   const BookNames({
    super.key,
    required this.style1,
    required this.style2,
     required this.crossAxisAlignment
  });
  final TextStyle style1;
  final TextStyle style2;
  final dynamic crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          'The Jungle Book',
          style: style1,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
         Text(
          'Rudyard Kipling',
          style: style2,
        ),
      ],
    );
  }
}