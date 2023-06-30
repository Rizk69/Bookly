import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/bookly_models.dart';
import '../../../data/repos/HomeRepo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchNewsBooks();
    result.fold((failure) => emit(SimilarBooksFailure(failure.errorMessage)),
        (books) => emit(SimilarBooksSuccess(books)));
  }
}
