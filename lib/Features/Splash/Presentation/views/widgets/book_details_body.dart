import 'package:booklyapp/Features/Splash/Presentation/views/Styles.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/also_like_listview.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/books_buttons_rows.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/horizontal_widget.dart';

import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 300, child: HorizontalContainer()),
          const SizedBox(
            height: 15,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle20.copyWith(fontSize: 30),
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Description',
              style: Styles.textStyle18.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic),
            ),
          ),
          const BookRating(
            mainAxis: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const BooksButtonRow(),
          const SizedBox(
            height: 15,
          ),
          const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'You may also like ',
                style: Styles.textStyle18,
              )),
          const MayLikeList(),
        ],
      ),
    );
  }
}
