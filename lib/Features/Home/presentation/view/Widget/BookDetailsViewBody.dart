import 'package:bookly/Features/Home/presentation/view/Widget/BookRatimg.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/BooksAction.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/CustomListViewItem.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/SimilarBooksListView.dart';
import 'package:bookly/core/utilts/Styles.dart';
import 'package:flutter/material.dart';
import '../../../data/models/bookly_models.dart';
import 'CustomBookDetailsAppBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.booklyModels})
      : super(key: key);
  final BooklyModels booklyModels;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: CustomBookImage(
                  imageUrl:
                      (booklyModels.volumeInfo?.imageLinks?.thumbnail) ?? ''),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              booklyModels.volumeInfo?.title ?? '',
              style: TextStyle(fontSize: 30),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(booklyModels.volumeInfo?.authors![0] ?? 'Not Found',
                style: Styles.textStyles14
                    .copyWith(fontSize: 21, color: const Color(0XFF8F8989))),
            const SizedBox(
              height: 14,
            ),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
              rating: booklyModels.volumeInfo?.averageRating ?? 0,
              count: booklyModels.volumeInfo?.ratingsCount ?? 0,
            ),
            const SizedBox(
              height: 37,
            ),
            BooksAction(booklyModels: booklyModels),
            const SizedBox(
              height: 40,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('You can also like',
                    style: Styles.textStyles14
                        .copyWith(fontWeight: FontWeight.w600))),
            const SizedBox(
              height: 16,
            ),
            SimilarBooksListView()
          ],
        ),
      ),
    );
  }
}
