import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/bookly_models.dart';
import 'package:bookly/Features/Home/data/repos/HomeRepo.dart';
import 'package:flutter/cupertino.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(NewsetBooksFailure(failure.errorMessage)),
        (books) => emit(NewsetBooksSuccess(books)));
  }
}
