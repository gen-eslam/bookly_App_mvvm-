import 'package:bookly_mvvm_bloc/features/home/presentation/view/widget/book_details_view/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You can also like", style: Styles.textStyle14),
        SizedBox(
          height: 16.h,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
