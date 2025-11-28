import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit({required this.homeRepo}) : super(NewestBooksInitial());

  HomeRepo homeRepo;

  Future<void> featchNewestBooks()async{
    emit(NewestBooksLoading());
    var result=await homeRepo.featchNewestBooks();
    result.fold((failure){
      emit(NewestBooksFailure(errorMessage: failure.message));
    }, (success){
      emit(NewestBooksSuccess(books: success));
    });
  }
}
