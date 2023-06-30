import 'package:bookly/Features/Home/data/models/bookly_models.dart';
import 'package:bookly/Features/Home/data/repos/HomeRepo.dart';
import 'package:bookly/core/Errors/Failures.dart';
import 'package:bookly/core/utilts/ApiService.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BooklyModels>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Computer');
      List<BooklyModels> book = [];
      for (var item in data["items"]) {
        book.add(BooklyModels.fromJson(item));
      }
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooklyModels>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BooklyModels> book = [];
      for (var item in data["items"]) {
        book.add(BooklyModels.fromJson(item));
      }
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooklyModels>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks& Sorting=relevanc &q=subject:Programming');
      List<BooklyModels> book = [];
      for (var item in data["items"]) {
        book.add(BooklyModels.fromJson(item));
      }
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
