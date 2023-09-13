part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;
  const SimilarBooksFailure({required this.errorMessage});
}

final class SimilarBooksSucess extends SimilarBooksState {
  final List<BookModel>? books;
  const SimilarBooksSucess({required this.books});
}
