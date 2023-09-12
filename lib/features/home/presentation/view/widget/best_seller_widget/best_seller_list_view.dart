import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_list_view_item.dart';

class NewsetListView extends StatelessWidget {
  const NewsetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) => const BookListViewItem(),
      separatorBuilder: (context, index) => SizedBox(
        height: 13.h,
      ),
    );
  }
}
