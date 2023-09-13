import 'package:bloc/bloc.dart';
import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm_bloc/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homeRepo}) : super(SimilarBooksInitial());

  HomeRepo homeRepo;

  Future<void> fetchSimilerBooks(String category) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
        (failure) =>
            emit(SimilarBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(SimilarBooksSucess(books: books)));
  }
}
