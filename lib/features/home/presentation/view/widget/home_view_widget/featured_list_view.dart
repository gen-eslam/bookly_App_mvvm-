import 'package:bookly_mvvm_bloc/core/widgets/custom_error_widget.dart';
import 'package:bookly_mvvm_bloc/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/manager/Featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reuseable_componant/custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSueccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 30).r,
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks?.thumbnail,
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 8.w,
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
