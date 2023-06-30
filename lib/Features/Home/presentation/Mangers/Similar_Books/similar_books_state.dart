part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksFailure extends SimilarBooksState {
  final String errMessege;

  SimilarBooksFailure(this.errMessege);
}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BooklyModels> books;

  SimilarBooksSuccess(this.books);
}
