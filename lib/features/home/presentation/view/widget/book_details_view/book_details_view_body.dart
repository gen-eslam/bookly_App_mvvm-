import 'package:bookly_mvvm_bloc/features/home/presentation/view/widget/book_details_view/custom_book_detailes_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}