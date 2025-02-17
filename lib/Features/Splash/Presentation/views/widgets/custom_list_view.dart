import 'package:booklyapp/Features/Splash/Presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:booklyapp/core/errors/failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_view_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
        builder: (context, state) {
      if (state is NewestBookSuccess) {
        return ListView.builder(
         // shrinkWrap: true,
          itemCount: state.books.length,
       //   physics: const AlScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListViewContainer(
                bookModel: state.books[index],
              ),
            );
          },
        );
      } else if (state is NewestBookFailure) {
        return FailureWidget(errMessage: state.errMessage);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
