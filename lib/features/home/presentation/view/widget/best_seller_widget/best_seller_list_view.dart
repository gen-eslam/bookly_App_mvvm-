import 'package:bookly_mvvm_bloc/features/home/presentation/view/widget/best_seller_widget/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) => const BestSellerListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 13,
        ),
      ),
    );
  }
}
