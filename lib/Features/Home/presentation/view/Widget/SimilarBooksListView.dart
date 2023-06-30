import 'package:bookly/Features/Home/presentation/Mangers/Similar_Books/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/CustomListViewItem.dart';
import 'package:bookly/core/Widget/CustomErrorWidget.dart';
import 'package:bookly/core/Widget/CustomLoading.dart';
import 'package:bookly/core/utilts/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .23,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).pushReplacement(
                              AppRouter.KBookDetailsView,
                              extra: state.books[index]);
                        },
                        child: CustomBookImage(
                            imageUrl: state.books[index].volumeInfo?.imageLinks
                                    ?.thumbnail ??
                                '')),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessege);
        } else {
          return CustomLoading();
        }
      },
    );
  }
}
