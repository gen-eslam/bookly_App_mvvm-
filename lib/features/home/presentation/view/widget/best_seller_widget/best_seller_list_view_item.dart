import 'package:flutter/material.dart';

import 'item_body_view.dart';
import 'item_image_view.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
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
    );
  }
}
