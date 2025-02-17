import 'package:booklyapp/Features/Splash/Presentation/views/Styles.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/horizontal_widget.dart';
import 'package:booklyapp/Features/Splash/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/routes.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({super.key,  required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView,extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // AspectRatio(
            //   aspectRatio: 2.5 / 4,
            //   child: Container(
            //     // width: 200,height: 100,
            //     decoration: BoxDecoration(
            //       color: const Color.fromARGB(31, 227, 224, 224),
            //       image: const DecorationImage(
            //           image: AssetImage('assets/test_image.png'),
            //           fit: BoxFit.fill),
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //   ),
            // ),
            HorizontalContainer(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(bookModel.volumeInfo.authors![0],maxLines: 1, style: Styles.textStyle14),
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                      'Free',
                        style: Styles.textStyle18,
                      ),
                      BookRating(
                       
                        mainAxis: MainAxisAlignment.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
