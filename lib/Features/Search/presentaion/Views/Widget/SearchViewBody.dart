import 'package:bookly/Features/Home/presentation/view/Widget/BookListViewItem.dart';
import 'package:bookly/Features/Search/presentaion/Views/Widget/CustomSearchTextField.dart';
import 'package:bookly/core/utilts/Styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CustomSearchTextField()),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Search Result',
            textAlign: TextAlign.left,
            style: Styles.textStyles18,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(child: SearchResultListView())
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              left: 8.0,
              right: 8,
              bottom: 10,
            ),
            child: BookListViewItem(),
          );
        });
  }
}
