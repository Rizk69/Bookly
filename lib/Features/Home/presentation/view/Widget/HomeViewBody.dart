import 'package:bookly/Features/Home/presentation/view/Widget/BestSellerListViewItem.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/CustomAppBar.dart';
import 'package:bookly/core/utilts/Styles.dart';
import 'package:flutter/material.dart';

import 'FeaturedBooksListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 15,
                ),
                FeaturedBooksListView(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'News Books',
                  textAlign: TextAlign.left,
                  style: Styles.textStyles18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: BestSellerListViewItem(),
          ),
        )
      ],
    );
  }
}
