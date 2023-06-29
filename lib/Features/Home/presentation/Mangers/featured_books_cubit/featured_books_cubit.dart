import 'package:bookly/Features/Home/data/repos/HomeRepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/bookly_models.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(FeaturedBooksFailure(failure.errorMessage)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
