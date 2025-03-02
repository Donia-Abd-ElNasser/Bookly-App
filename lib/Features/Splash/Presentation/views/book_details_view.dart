import 'package:booklyapp/Features/Splash/Presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/views/widgets/book_details_body.dart';
import 'package:booklyapp/Features/Splash/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
            child: BookDetailsBody(
      bookModel: widget.bookModel,
    )));
  }
}
