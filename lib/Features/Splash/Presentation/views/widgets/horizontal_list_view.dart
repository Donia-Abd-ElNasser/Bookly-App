import 'package:booklyapp/Features/Splash/Presentation/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:booklyapp/core/errors/failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 16),
          child: HorizontalContainer(),
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
