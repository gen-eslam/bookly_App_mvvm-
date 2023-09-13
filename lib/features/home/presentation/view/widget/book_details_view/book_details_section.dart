import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../reuseable_componant/book_rating.dart';
import '../reuseable_componant/custom_book_image.dart';
import 'custom_book_button_action.dart';
import 'custom_book_detailes_app_bar.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel? bookModel;
  const BookDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.25),
          child: CustomBookImage(
              imageUrl: bookModel?.volumeInfo?.imageLinks?.thumbnail),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text("${bookModel?.volumeInfo?.title}",
            textAlign: TextAlign.center,
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600)),
        SizedBox(
          height: 6.h,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            textAlign: TextAlign.center,
            "${bookModel?.volumeInfo?.authors?[0]}",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModel?.volumeInfo?.ratingsCount,
          rating: bookModel?.volumeInfo?.averageRating ,
        ),
        SizedBox(
          height: 25.h,
        ),
         CustomBooksButtonAction(
          bookModel: bookModel,
         ),
      ],
    );
  }
}
