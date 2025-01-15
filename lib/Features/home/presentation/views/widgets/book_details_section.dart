import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/book_model/book_model.dart';
import '../../../../../core/utils/styles.dart';
import 'book_names.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.15 ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBookItem(
            height:   MediaQuery.of(context).size.height* 0.3,
            imageUrl: book.volumeInfo.imageLinks?.thumbnail?? '',
          ),
          const SizedBox(
            height: 20,
          ),
          BookNames(
            author: book.volumeInfo.authors?[0]??' Unknown',
            bookTitle: book.volumeInfo.title!,
            crossAxisAlignment: CrossAxisAlignment.center,
            style1: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: kGtSectraFine
            ), style2: Styles.textStyle14.copyWith(
              fontSize: 14
          ),
          ),
          const SizedBox(
              height: 5
          ),
           BookRating(
            rating: book.volumeInfo.averageRating ?? 0 ,
            counts: book.volumeInfo.pageCount ?? 0,
           ),
        ],
      ),
    );
  }
}
