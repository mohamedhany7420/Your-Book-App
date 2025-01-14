import 'package:dartz/dartz.dart';
import 'package:your_book_app/core/errors/failure.dart';

import '../../../../core/book_model/book_model.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required category});
}