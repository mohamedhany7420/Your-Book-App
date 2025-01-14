
import 'package:flutter/material.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:your_book_app/core/utils/functions/url_launcher.dart';
import '../../../../../core/book_model/book_model.dart';
import '../../../../../core/widgets/custom_button.dart';
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
             height: 40,
           ),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const CustomButton(
                 text: 'Free',
                 textColor: Colors.black,
                 buttonColor: Colors.white,
                 leftRadius: Radius.circular(14),
                 rightRadius: Radius.zero,
               ),
               CustomButton(
                 onPressed: () {
                   launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                 },
                 text: getText(bookModel),
                 textColor: Colors.white,
                 buttonColor: const Color(0xFFEF8262),
                 leftRadius: Radius.zero,
                 rightRadius: const Radius.circular(14),
               ),
             ],
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
String getText(BookModel bookModel){
  if(bookModel.volumeInfo.previewLink == null){
    return 'Not Available';
  }else{
    return 'Preview';
  }
}

