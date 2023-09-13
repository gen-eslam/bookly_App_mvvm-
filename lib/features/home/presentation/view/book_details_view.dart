import 'package:bookly_mvvm_bloc/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/view/widget/book_details_view/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel bookModel;

  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilerBooks(widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody(
        bookModel: widget.bookModel,
      )),
    );
  }
}
