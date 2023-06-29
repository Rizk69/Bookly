import 'package:bookly/Features/Home/presentation/view/Widget/BookListViewItem.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
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
