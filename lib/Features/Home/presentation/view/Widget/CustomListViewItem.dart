import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.grey,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'lib/Assets/Book 1 High.png',
              ),
            )),
      ),
    );
  }
}
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){

      return const CustomListViewItem();

    });
  }
}
