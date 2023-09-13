import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/presentation/view/widget/newest_list_view/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) => const BookListViewItem(),
      separatorBuilder: (context, index) => SizedBox(
        height: 13.h,
      ),
    );
  }
}
