import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:your_book_app/Features/home/data/models/book_model.dart';
import 'package:your_book_app/Features/home/data/repos/home_repo.dart';
import 'package:your_book_app/core/errors/failure.dart';
import 'package:your_book_app/core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo{
  HomeRepoImpl(this.apiService);
  ApiService apiService;
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endpoint: "volumes?Filtering=free-ebooks&q=all&Sorting=newest");
      List<BookModel> books = data['items'];
      return right(books);
    } catch (e) {
      if(e is DioException){
      return left(ServerFailure.fromDioException(e));
      }
        return left(ServerFailure(e.toString()));
      
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(endpoint: "volumes?Filtering=free-ebooks&q=programming");
      List<BookModel> books = data['items'];
      return right(books);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}