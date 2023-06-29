import 'package:bookly/Features/Home/presentation/view/Widget/BookRatimg.dart';
import 'package:bookly/core/utilts/Styles.dart';
import 'package:bookly/core/utilts/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 2.4 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'lib/Assets/book.png',
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire',
                      style: TextStyle(fontSize: 20),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text("J.K. Rowling",
                      style: Styles.textStyles14
                          .copyWith(color: const Color(0XFF8F8989))),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const Text(
                        '19.99 €',
                        style: Styles.textStyles20,
                      ),
                      Spacer(),
                      BookRating(
                        mainAxisAlignment: MainAxisAlignment.center,
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