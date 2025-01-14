import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_book_app/Features/home/presentation/view_models/similar_books_cupit/similar_books_cubit.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/book_details_view_body.dart';

import '../../../../core/book_model/book_model.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: widget.bookModel.volumeInfo.categories?[0]??'all' );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BookDetailsViewBody(
      bookModel: widget.bookModel,
    );
  }
}
