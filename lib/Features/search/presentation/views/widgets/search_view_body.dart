import 'package:flutter/material.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:your_book_app/Features/search/presentation/views/widgets/search_results_section.dart';
import 'package:your_book_app/core/utils/styles.dart';

import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             SearchTextField(),
              SearchResultsSection()
            ],
          ),
        ),
      ),
    );
  }
}
