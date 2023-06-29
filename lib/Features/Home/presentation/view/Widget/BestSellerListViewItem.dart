import 'package:bookly/core/utilts/Styles.dart';
import 'package:bookly/core/utilts/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
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
                      style:
                          Styles.textStyles14.copyWith(color: const Color(0XFF8F8989))),
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
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.solidStar,
                            color: Color(0XFFFFDD4F),
                            size: 14,
                          ),
                          const SizedBox(
                            width: 6.5,
                          ),
                          Text(
                            '4.8',
                            style: Styles.textStyles14.copyWith(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('(2390)',
                              style: Styles.textStyles14
                                  .copyWith(color: Color(0XFF8F8989))),
                        ],
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

class FeaturedBestSellerListView extends StatelessWidget {
  const FeaturedBestSellerListView({Key? key}) : super(key: key);

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
            child: BestSellerListViewItem(),
          );
        });
  }
}
