import 'package:bookly_mvvm_bloc/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'item_body_view.dart';
import 'item_image_view.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: const SizedBox(
        height: 125,
        child: Row(
          children: [
            ItemImageView(),
            SizedBox(
              width: 30,
            ),
            ItemBodyView(),
          ],
        ),
      ),
    );
  }
}
