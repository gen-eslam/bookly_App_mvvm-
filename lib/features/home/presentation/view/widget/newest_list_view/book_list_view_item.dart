import 'package:bookly_mvvm_bloc/core/utils/app_router.dart';
import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../reuseable_componant/book_rating.dart';
import '../reuseable_componant/custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel? bookModel;
  const BookListViewItem({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125.h,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel?.volumeInfo?.imageLinks?.thumbnail),
            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      bookModel!.volumeInfo!.title!,
                      style:
                          Styles.textStyle20.copyWith(fontFamily: kGtSetraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    clipBehavior: Clip.hardEdge,
                    children: List.generate(
                      bookModel!.volumeInfo!.authors!.length > 2
                          ? 2
                          : bookModel!.volumeInfo!.authors!.length,
                      (index) => FittedBox(
                        child: Text(bookModel!.volumeInfo!.authors![index],
                            style: Styles.textStyle14),
                      ),
                    ),
                  ),

                  // const SizedBox(
                  //   height: 3,
                  // ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "free",
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating(
                            rating:
                                bookModel?.volumeInfo?.averageRating ,
                            count: bookModel?.volumeInfo?.ratingsCount),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
