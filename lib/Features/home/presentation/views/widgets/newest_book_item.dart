import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:your_book_app/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../../../../../core/book_model/book_model.dart';
import 'book_names.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
      GoRouter.of(context).push(
          '/bookDetailsView',
        extra: bookModel
      );
    },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child:  CachedNetworkImage(
          height: MediaQuery.of(context).size.height * 0.15,
          width: (MediaQuery.of(context).size.height * 0.15) / 1.5 ,
          imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail.toString(),
          fit: BoxFit.fill,
          errorWidget:  (context, url, error) {
            return Text(error.toString(),
          style: const TextStyle(
            fontSize: 4
          ),);

          }
        )
        ),
      ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   BookNames(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     style1: Styles.textStyle20.copyWith(
                         fontFamily: kGtSectraFine,
                         fontSize: 20
                     ),
                     style2: Styles.textStyle14,
                     bookTitle: bookModel.volumeInfo.title.toString(),
                     author: bookModel.volumeInfo.authors?[0].toString()?? 'Unknown',
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
                         BookRating(
                          rating: bookModel.volumeInfo.averageRating ?? 0 ,
                          counts: bookModel.volumeInfo.pageCount ?? 0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
