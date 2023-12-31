import 'package:bookly_mvvm_bloc/features/search/presentation/views/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Text(
              "Search Result",
              style: Styles.textStyle18,
              textAlign: TextAlign.start,
            ),
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
