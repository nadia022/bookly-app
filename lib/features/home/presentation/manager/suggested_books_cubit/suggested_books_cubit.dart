import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'suggested_books_state.dart';

class SuggestedBooksCubit extends Cubit<SuggestedBooksState> {
  SuggestedBooksCubit({required this.homeRepo}) : super(SuggestedBooksInitial());

  HomeRepo homeRepo;
  Future<void> featchSuggestedBooks({required String category}) async {
    emit(SuggestedBooksLoading());
    var result = await homeRepo.featchSuggestedBooks(category);
    result.fold((failure) {
      emit(SuggestedBooksFailure(errorMessage: failure.message));
    }, (success) {
      emit(SuggestedBooksSuccess(books: success));
    });
  }
}
