import 'package:bookly/Features/Home/presentation/view/Widget/CustomListViewItem.dart';
import 'package:flutter/material.dart';

import 'CustomBookDetailsAppBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          SizedBox(height: 30,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width * .17),
            child: CustomListViewItem(),
          )

        ],
      ),
    );
  }
}
