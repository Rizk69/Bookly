import 'package:bookly/Features/Home/data/models/bookly_models.dart';
import 'package:bookly/Features/Home/presentation/Mangers/Similar_Books/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.booklyModels})
      : super(key: key);
  final BooklyModels booklyModels;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.booklyModels.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody(
        booklyModels: widget.booklyModels,
      )),
    );
  }
}
