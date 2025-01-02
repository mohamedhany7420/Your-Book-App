
import 'package:flutter/material.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/Custom_books_list_view.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_names.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:your_book_app/core/widgets/custom_button.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });
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
           CustomBookItem(height: height * 0.33),
           const SizedBox(
             height: 30,
           ),
            BookNames(
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
           const BookRating(),
           const SizedBox(
             height: 40,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomButton(
                   text: '19.99€',
                   textColor: Colors.black,
                   buttonColor: Colors.white,
                   leftRadius: const Radius.circular(14),
                   rightRadius: Radius.zero,
               ),
               CustomButton(
                 text: 'Free preview',
                 textColor: Colors.white,
                 buttonColor: const Color(0xFFEF8262),
                 leftRadius: Radius.zero,
                 rightRadius: const Radius.circular(14),
               ),
             ],
           ),
           const Spacer(
             flex: 2,
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text(
                 'You can also like',
                 style: Styles.textStyle20,
               ),
               const SizedBox(
                 height: 10,
               ),
               CustomBooksListView(listHeight: height * 0.15),
             ],
           ),
           const Spacer(
             flex: 1,
           )
         ],
       ),
     ),
    );
  }
}
