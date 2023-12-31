import 'package:bookly/Features/Home/presentation/Mangers/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/CustomListViewItem.dart';
import 'package:bookly/core/Widget/CustomErrorWidget.dart';
import 'package:bookly/core/Widget/CustomLoading.dart';
import 'package:bookly/core/utilts/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.KBookDetailsView,
                            extra: state.books[index]);
                      },
                      child: CustomBookImage(
                          imageUrl: (state.books[index].volumeInfo?.imageLinks
                                  ?.thumbnail) ??
                              ''),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessege);
        } else {
          return CustomLoading();
        }
      },
    );
  }
}
