import 'package:bloc/bloc.dart';
import 'package:bookly_mvvm_bloc/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newset_book_cubit_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookCubitState> {
  NewsetBookCubit({required this.homeRepo}) : super(NewestBookCubitInitial());

  HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errorMessage));
    }, (books) => emit(NewsetBooksSueccess(books)));
  }
}
