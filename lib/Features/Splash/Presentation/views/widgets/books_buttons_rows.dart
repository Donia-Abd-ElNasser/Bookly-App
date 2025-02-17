import 'package:booklyapp/Features/Splash/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';


import '../../../../../core/custom_button.dart';

class BooksButtonRow extends StatelessWidget {
  const BooksButtonRow({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
              text: 'Free',
              color: Colors.black,
              backGround: Colors.white,
              borderRadius: BorderRadius.circular(16)),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: CustomButton(
              onPressed: () async {
                // Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                // if (await canLaunchUrl(uri)) {
                //   await launchUrl(uri);
                // }
              },
              text: 'Preview',
              color: Colors.white,
              backGround: const Color.fromARGB(255, 45, 131, 114),
              borderRadius: BorderRadius.circular(16)),
        )
      ],
    );
  }
}
