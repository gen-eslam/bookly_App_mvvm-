import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  final double? rating;
  final int? count;
  final MainAxisAlignment mainAxisAlignment;

  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
          size: 14.r,
        ),
        SizedBox(
          width: 6.3.w,
        ),
        Text(
          rating == null ? "0" : rating.toString(),
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5.w,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            count == null ? "0" : count.toString(),
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          width: 17.w,
        ),
      ],
    );
  }
}
