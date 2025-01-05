import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:your_book_app/Features/home/data/repos/home_repo.dart';

import '../../../data/models/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.errMessage)),
      (books) => emit(
        NewestBooksSuccess(books),
      ),
    );
  }
}