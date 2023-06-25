import 'package:bookly/Features/Home/presentation/view/Widget/CustomListViewItem.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomListViewItem(),
            );
          }),
    );
  }
}
