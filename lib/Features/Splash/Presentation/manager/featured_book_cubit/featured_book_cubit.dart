import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/Splash/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Splash/data/repos/home_repo.dart';

import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBookLoading());
    var result=await homeRepo.fetchFeaturedBooks();
    result.fold((failure){
      emit(FeaturedBookFailure(errMessage: failure.errMessage));
    }, (books){
      emit(FeaturedBookSuccess(books: books));
    });
  }

}
