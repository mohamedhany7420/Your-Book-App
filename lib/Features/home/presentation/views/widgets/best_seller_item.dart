import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:your_book_app/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import 'book_names.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Image.asset(
      AssetsData.testerImage,
        height: MediaQuery.of(context).size.height * 0.13,
      ),
      ),
    ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric
              (
              horizontal:20.0,
              vertical: 18.0
            ),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/bookDetailsView');
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   BookNames(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     style1: Styles.textStyle20.copyWith(
                         fontFamily: kGtSectraFine,
                         fontSize: 24
                     ),
                     style2: Styles.textStyle14,
                   ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    ),
                  )
                ],
              )
            ),
          ),
        )
      ],
    );
  }
}
