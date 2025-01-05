part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState extends Equatable {
  const NewestBooksState();
  @override
  List<Object?> get props => [];

}

 class NewestBooksInitial extends NewestBooksState {}
 class NewestBooksLoading extends NewestBooksState {}
 class NewestBooksFailure extends NewestBooksState {
 final String errMessage;
  const NewestBooksFailure(this.errMessage);
 }
 class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  const NewestBooksSuccess(this.books);

 }