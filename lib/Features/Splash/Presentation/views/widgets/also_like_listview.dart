import 'package:booklyapp/Features/Splash/Presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/errors/failure_widget.dart';
import 'horizontal_widget.dart';

class MayLikeList extends StatelessWidget {
  const MayLikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.only(right: 16, top: 10),
                  child: HorizontalContainer(
                    imageUrl:state.books[index].volumeInfo.imageLinks?.thumbnail??'https://dummyimage.com/600x400/ffffff/000000&text=No+Image',
                  ),
                );
              }),
        );
      } else if (state is SimilarBooksFailure) {
        return FailureWidget(errMessage: state.errMessage);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
