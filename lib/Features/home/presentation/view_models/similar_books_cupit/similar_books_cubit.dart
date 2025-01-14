import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async{
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
        (failure) {
          emit(SimilarBooksFailure(failure.errMessage));
        },
    (books) {
      emit(SimilarBooksSuccess(books));
    },
    );
  }
}
