import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reuseable_componant/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.separated(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(
            imageUrl:
                "https://popupsmart.com/encyclopedia/images/u/r/l/-/i/url-image-7a74f0de.png"),
        separatorBuilder: (context, index) => SizedBox(
          width: 5.w,
        ),
      ),
    );
  }
}
