import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newset_book_cubit_state.dart';

class NewsetBookCubitCubit extends Cubit<NewsetBookCubitState> {
  NewsetBookCubitCubit() : super(NewsetBookCubitInitial());
}
