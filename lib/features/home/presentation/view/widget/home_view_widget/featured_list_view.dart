import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reuseable_componant/custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 30).r,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(),
        separatorBuilder: (context, index) => SizedBox(
          width: 8.w,
        ),
      ),
    );
  }
}
