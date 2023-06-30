import 'package:bookly/Features/Home/data/models/bookly_models.dart';
import 'package:bookly/core/Errors/Failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooklyModels>>> fetchNewsBooks();

  Future<Either<Failure, List<BooklyModels>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BooklyModels>>> fetchSimilarBooks(
      {required String category});
}
