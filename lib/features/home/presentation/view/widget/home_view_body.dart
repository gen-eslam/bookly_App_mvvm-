import 'package:bookly_mvvm_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_widget/best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
            textAlign: TextAlign.start,
          ),
          Divider(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
