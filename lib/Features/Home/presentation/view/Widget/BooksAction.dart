import 'package:bookly/core/Widget/CustomBottom.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomBottom(
            backgroundColor: Colors.white,
            text: '19.99€',
            bottomRight: 0,
            topLeft: 16,
            bottomLeft: 16,
            topRight: 0,
            colorText: Colors.black,
          )),
          Expanded(
              child: CustomBottom(
                  backgroundColor: Color(0XFFEF8262),
                  text: 'Free preview',
                  bottomRight: 16,
                  topLeft: 0,
                  bottomLeft: 0,
                  topRight: 16,
                  colorText: Colors.white))
        ],
      ),
    );
  }
}
