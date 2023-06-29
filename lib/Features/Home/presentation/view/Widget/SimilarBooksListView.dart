import 'package:bookly/Features/Home/presentation/view/Widget/CustomListViewItem.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomBookImage(imageUrl: 'lib/Assets/Book 1 High.png'),
            );
          }),
    );
  }
}
