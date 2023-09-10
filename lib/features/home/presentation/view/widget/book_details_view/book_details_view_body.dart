import 'package:bookly_mvvm_bloc/core/utils/styles.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/view/widget/book_details_view/custom_book_detailes_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reuseable_componant/book_rating.dart';
import '../reuseable_componant/custom_book_image.dart';
import 'custom_book_button_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 10.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.25)
                .w,
            child: const CustomBookImage(),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text("The Jungle Book",
              textAlign: TextAlign.center,
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600)),
          SizedBox(
            height: 6.h,
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
          SizedBox(
            height: 16.h,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 25.h,
          ),
          const CustomBooksButtonAction(),
          SizedBox(
            height: 25.h,
          ),
          Text("You can also like", style: Styles.textStyle14),
          SizedBox(
            height: 16.h,
          ),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(),
        separatorBuilder: (context, index) => SizedBox(
          width: 5.w,
        ),
      ),
    );
  }
}
