import 'package:flutter/material.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/custom_books_list_view.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            CustomBooksListView(
              listHeight: MediaQuery.of(context).size.height * 0.27,
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
                'Best Seller',
                style : Styles.textStyle18
            ),
            const SizedBox(
              height: 5,
            ),
            const BestSellerListView(),
          ],
        ),
      ),
    );
  }
}