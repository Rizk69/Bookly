import 'package:bookly/Features/Home/presentation/Mangers/NewsetBooks/newset_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/BookListViewItem.dart';
import 'package:bookly/core/Widget/CustomErrorWidget.dart';
import 'package:bookly/core/Widget/CustomLoading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    right: 8,
                    bottom: 10,
                  ),
                  child: BookListViewItem(booklyModels: state.books[index]),
                );
              });
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessege);
        } else {
          return CustomLoading();
        }
      },
    );
  }
}
