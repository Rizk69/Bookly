part of 'newset_books_cubit.dart';

@immutable
abstract class NewsetBooksState {}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoading extends NewsetBooksState {}

class NewsetBooksFailure extends NewsetBooksState {
  final String errMessege;

  NewsetBooksFailure(this.errMessege);
}

class NewsetBooksSuccess extends NewsetBooksState {
  final List<BooklyModels> books;

  NewsetBooksSuccess(this.books);
}
