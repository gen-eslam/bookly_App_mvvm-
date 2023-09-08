import 'package:bookly_mvvm_bloc/core/utils/styles.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/view/widget/book_details_view/custom_book_detailes_app_bar.dart';
import 'package:flutter/material.dart';

import '../book_rating.dart';
import '../custom_book_image.dart';
import 'custom_book_button_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.25),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 30,
          ),
          Text("The Jungle Book",
              textAlign: TextAlign.center,
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              textAlign: TextAlign.center,
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 25,
          ),
          const CustomBooksButtonAction(),
          const SizedBox(
            height: 25,
          ),
          const Text("You can also like", style: Styles.textStyle14),
        ],
      ),
    );
  }
}
