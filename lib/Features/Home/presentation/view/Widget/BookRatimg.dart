import 'package:bookly/core/utilts/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {Key? key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
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
          '$rating',
          style: Styles.textStyles14.copyWith(fontSize: 16),
        ),
        const SizedBox(
          width: 10,
        ),
        Text('($count)',
            style: Styles.textStyles14.copyWith(color: Color(0XFF8F8989))),
      ],
    );
  }
}
