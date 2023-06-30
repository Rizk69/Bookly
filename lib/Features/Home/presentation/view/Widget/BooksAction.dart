import 'package:bookly/Features/Home/data/models/bookly_models.dart';
import 'package:bookly/core/Widget/CustomBottom.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.booklyModels}) : super(key: key);
  final BooklyModels booklyModels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomBottom(
            onPressed: () {},
            backgroundColor: Colors.white,
            text: 'Free',
            bottomRight: 0,
            topLeft: 16,
            bottomLeft: 16,
            topRight: 0,
            colorText: Colors.black,
          )),
          Expanded(
              child: CustomBottom(
                  onPressed: () async {
                    Uri uri = Uri.parse(booklyModels.volumeInfo!.previewLink!);
                    if (!await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    }
                  },
                  backgroundColor: Color(0XFFEF8262),
                  text: 'preview',
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
