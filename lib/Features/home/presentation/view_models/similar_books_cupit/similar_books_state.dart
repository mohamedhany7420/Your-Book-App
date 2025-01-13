part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();
  @override
  List<Object?> get props => throw UnimplementedError();
}

 class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoading extends SimilarBooksState {}
class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;
  const SimilarBooksFailure(this.errMessage);
}
class SimilarBooksSuccess extends SimilarBooksState{
  final List<BookModel> books;
  const SimilarBooksSuccess(this.books);

}
