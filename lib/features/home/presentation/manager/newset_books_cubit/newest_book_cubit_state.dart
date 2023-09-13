part of 'newest_book_cubit.dart';

abstract class NewsetBookCubitState extends Equatable {
  const NewsetBookCubitState();

  @override
  List<Object> get props => [];
}

final class NewestBookCubitInitial extends NewsetBookCubitState {}

final class NewestBooksLoading extends NewsetBookCubitState {}

final class NewestBooksSueccess extends NewsetBookCubitState {
  final List<BookModel>? books;

  const NewestBooksSueccess(this.books);
}

final class NewestBooksFailure extends NewsetBookCubitState {
  final String errorMessage;

  const NewestBooksFailure(this.errorMessage);
}
