import 'package:booklyapp/Features/Splash/Presentation/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:booklyapp/Features/Splash/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/errors/failure_widget.dart';
import 'package:booklyapp/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'horizontal_widget.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.3,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: state.books.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: (){
              GoRouter.of(context).push(AppRoutes.kBookDetailsView,extra: state.books[index]);
            },
            child: HorizontalContainer(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,)),
        );
      },
    ),
  );}
  else if (state is FeaturedBookFailure){
    return FailureWidget(errMessage: state.errMessage);
  }
 
    return const Center(child: CircularProgressIndicator());
  

      }
    );
  }
}
