
import 'package:flutter/material.dart';
import 'package:your_book_app/Features/home/data/models/book_model.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 30.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           const BookDetailsAppBar(),
            BookDetailsSection(
             book: bookModel,
                       ),
           const SizedBox(
             height: 60,
           ),
           SimilarBooksSection(height: height),
           const SizedBox(
             height: 30,
           ),
         ],
       ),
     ),
    );
  }
}
