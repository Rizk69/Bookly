import 'package:bookly/Features/Home/data/models/bookly_models.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/BookRatimg.dart';
import 'package:bookly/Features/Home/presentation/view/Widget/CustomListViewItem.dart';
import 'package:bookly/core/utilts/Styles.dart';
import 'package:bookly/core/utilts/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.booklyModels})
      : super(key: key);
  final BooklyModels booklyModels;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.KBookDetailsView, extra: booklyModels);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBookImage(
                imageUrl:
                    (booklyModels.volumeInfo?.imageLinks?.thumbnail) ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      booklyModels.volumeInfo?.title! ?? 'Not Found',
                      style: TextStyle(fontSize: 20),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(booklyModels.volumeInfo?.authors![0] ?? 'Not Found',
                      style: Styles.textStyles14
                          .copyWith(color: const Color(0XFF8F8989))),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: Styles.textStyles20,
                      ),
                      Spacer(),
                      BookRating(
                        mainAxisAlignment: MainAxisAlignment.center,
                        rating: booklyModels.volumeInfo?.averageRating ?? 0,
                        count: booklyModels.volumeInfo?.ratingsCount ?? 0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
