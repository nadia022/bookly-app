part of 'suggested_books_cubit.dart';

sealed class SuggestedBooksState extends Equatable {
  const SuggestedBooksState();

  @override
  List<Object> get props => [];
}

final class SuggestedBooksInitial extends SuggestedBooksState {}
final class SuggestedBooksSuccess extends SuggestedBooksState {
  final List<Item> books;

  const SuggestedBooksSuccess({required this.books});

}
final class SuggestedBooksFailure extends SuggestedBooksState {
  final String errorMessage;

  const SuggestedBooksFailure({required this.errorMessage});

}
final class SuggestedBooksLoading extends SuggestedBooksState {}

