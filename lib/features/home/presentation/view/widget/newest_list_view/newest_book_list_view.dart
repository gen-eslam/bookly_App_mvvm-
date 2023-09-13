import 'package:bookly_mvvm_bloc/core/widgets/custom_error_widget.dart';
import 'package:bookly_mvvm_bloc/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/manager/newset_books_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_list_view_item.dart';

class NewsetListView extends StatelessWidget {
  const NewsetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookCubitState>(
      builder: (context, state) {
        if (state is NewestBooksSueccess) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: state.books!.length,
            itemBuilder: (context, index) => BookListViewItem(
              bookModel: state.books![index],
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 13.h,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
