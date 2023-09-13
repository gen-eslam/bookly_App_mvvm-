import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../reuseable_componant/custom_book_image.dart';
import 'custom_book_button_action.dart';
import 'custom_book_detailes_app_bar.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.25),
          child: const CustomBookImage(
              imageUrl:
                  "https://popupsmart.com/encyclopedia/images/u/r/l/-/i/url-image-7a74f0de.png"),
        ),
        SizedBox(
          height: 15.h,
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
        // const BookRating(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        SizedBox(
          height: 25.h,
        ),
        const CustomBooksButtonAction(),
      ],
    );
  }
}
