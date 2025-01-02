
import 'package:flutter/material.dart';

class BookNames extends StatelessWidget {
   BookNames({
    super.key,
    required this.style1,
    required this.style2,
     required this.crossAxisAlignment
  });
  TextStyle style1;
  TextStyle style2;
  dynamic crossAxisAlignment;
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