part of 'newset_book_cubit.dart';

abstract class NewsetBookCubitState extends Equatable {
  const NewsetBookCubitState();

  @override
  List<Object> get props => [];
}

final class NewestBookCubitInitial extends NewsetBookCubitState {}

final class NewsetBooksLoading extends NewsetBookCubitState {}

final class NewsetBooksSueccess extends NewsetBookCubitState {
  final List<BookModel> books;

  const NewsetBooksSueccess(this.books);
}

final class NewsetBooksFailure extends NewsetBookCubitState {
  final String errorMessage;

  const NewsetBooksFailure(this.errorMessage);
}
