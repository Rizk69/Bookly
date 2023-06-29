part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessege;

  FeaturedBooksFailure(this.errMessege);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BooklyModels> books;

  FeaturedBooksSuccess(this.books);
}
