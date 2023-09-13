import 'package:bookly_mvvm_bloc/core/utils/service_locator.dart';
import 'package:bookly_mvvm_bloc/core/widgets/custom_error_widget.dart';
import 'package:bookly_mvvm_bloc/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_mvvm_bloc/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../reuseable_componant/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSucess) {
            return ListView.separated(
              itemCount: state.books!.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                  imageUrl:
                      state.books![index].volumeInfo?.imageLinks?.thumbnail),
              separatorBuilder: (context, index) => SizedBox(
                width: 5.w,
              ),
            );
          } else if (state is SimilarBooksFailure) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return const CustomLoadingIndecator();
          }
        },
      ),
    );
  }
}
