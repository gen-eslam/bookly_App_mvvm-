import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/view/widget/book_details_view/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel? bookModel;
  const BookDetailsViewBody({
    super.key, this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(
                left: 30.w, right: 30.w, top: 10.h, bottom: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Spacer(),
                SizedBox(
                  height: 25.h,
                ),
                const SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
