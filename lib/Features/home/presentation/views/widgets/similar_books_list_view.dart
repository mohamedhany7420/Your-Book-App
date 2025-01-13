import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_book_app/Features/home/presentation/view_models/similar_books_cupit/similar_books_cubit.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:your_book_app/core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
    required this.listHeight
  });

  final double listHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: listHeight,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
              clipBehavior: Clip.none,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: CustomBookItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                    height: listHeight,
                  ),
                );
              },
            );
          } else if(state is SimilarBooksFailure){
            return CustomErrorWidget(errMessage: state.errMessage);
          } else
          {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
