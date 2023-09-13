import 'package:bookly_mvvm_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../newest_list_view/book_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30).w,
              child: const CustomAppBar(),
            ),
            const FeaturedBooksListView(),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30).w,
              child: Text(
                "Best Seller",
                style: Styles.textStyle18,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30).w,
          child: const NewsetListView(),
        ),
      )
    ]);
  }
}
