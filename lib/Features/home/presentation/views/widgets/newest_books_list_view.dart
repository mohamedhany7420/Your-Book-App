import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_book_app/Features/home/presentation/view_models/newest_books_cupit/newest_books_cubit.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:your_book_app/core/widgets/custom_loading_indicator.dart';
import 'package:your_book_app/core/widgets/custom_error_widget.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Expanded(
            child: SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: NewestBookItem(
                      bookModel: state.books[index],
                    ),
                  );
                },
              ),
            ),
          );
        } else if(state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
