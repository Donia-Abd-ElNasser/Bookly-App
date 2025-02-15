import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
   final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()async{
    emit(NewestBookLoading());
    var result=await homeRepo.fetchNewestBooks();
    result.fold((failure){
      emit(NewestBookFailure(errMessage: failure.errMessage));
    }, (books){
      emit(NewestBookSuccess(books: books));
    });
  }
}
