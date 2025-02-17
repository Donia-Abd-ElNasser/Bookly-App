import 'package:booklyapp/Features/Splash/Presentation/views/Styles.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/also_like_listview.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/books_buttons_rows.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/horizontal_widget.dart';
import 'package:booklyapp/Features/Splash/data/models/book_model/book_model.dart';

import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
           SizedBox(height: 300, child: HorizontalContainer(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??'https://dummyimage.com/600x400/ffffff/000000&text=No+Image',)),
          const SizedBox(
            height: 15,
          ),
          Text(
           bookModel.volumeInfo.title!,
            style: Styles.textStyle20.copyWith(fontSize: 23),
            textAlign: TextAlign.center,
          ),
          Opacity(
            opacity: .7,
            child: Text(
               bookModel.volumeInfo.authors?[0]??' ',
              style: Styles.textStyle18.copyWith(
                  fontSize: 16,
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
           BooksButtonRow(bookModel: bookModel,),
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
