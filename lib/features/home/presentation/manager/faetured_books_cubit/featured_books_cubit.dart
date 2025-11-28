import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;
  Future<void> getFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var result =await homeRepo.getFeaturedBooks();
    result.fold((failure){
      emit(FeaturedBooksFailure(errorMessage: failure.message));
    }, (success){
      emit(FeaturedBooksSuccess(books: success));
    });
  }
}
