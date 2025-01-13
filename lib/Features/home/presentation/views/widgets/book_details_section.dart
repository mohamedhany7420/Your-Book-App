import 'package:flutter/material.dart';
import 'package:your_book_app/Features/home/data/models/book_model.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'book_names.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomBookItem(
              height:   MediaQuery.of(context).size.height* 0.3,
              imageUrl: book.volumeInfo.imageLinks?.thumbnail?? '',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          BookNames(
            author: book.volumeInfo.authors?[0]??' Unknown',
            bookTitle: book.volumeInfo.title!,
            crossAxisAlignment: CrossAxisAlignment.center,
            style1: Styles.textStyle30.copyWith(
                fontSize: 36,
                wordSpacing: 2,
                fontFamily: kGtSectraFine
            ), style2: Styles.textStyle14.copyWith(
              fontSize: 22
          ),
          ),
          const SizedBox(
              height: 5
          ),
           BookRating(
            rating: book.volumeInfo.averageRating ?? 0 ,
            counts: book.volumeInfo.pageCount ?? 0,
           ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: '19.99€',
                textColor: Colors.black,
                buttonColor: Colors.white,
                leftRadius: Radius.circular(14),
                rightRadius: Radius.zero,
              ),
              CustomButton(
                text: 'Free preview',
                textColor: Colors.white,
                buttonColor: Color(0xFFEF8262),
                leftRadius: Radius.zero,
                rightRadius: Radius.circular(14),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
