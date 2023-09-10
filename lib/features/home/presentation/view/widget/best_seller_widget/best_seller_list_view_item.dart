import 'package:bookly_mvvm_bloc/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'item_body_view.dart';
import 'item_image_view.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125.h,
        child: Row(
          children: [
            const ItemImageView(),
            SizedBox(
              width: 30.w,
            ),
            const ItemBodyView(),
          ],
        ),
      ),
    );
  }
}
