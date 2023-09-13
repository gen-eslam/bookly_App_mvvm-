import 'package:bookly_mvvm_bloc/core/utils/service_locator.dart';
import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/view/book_details_view.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/view/home_view.dart';
import 'package:bookly_mvvm_bloc/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kSplashView = "/";
  static const String kHomeView = "/homeView";
  static const String kBookDetailsView = "/bookDetailsView";
  static const String kSearchView = "/searchView";

  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      pageBuilder: (context, state) => transitionFunction(
        page: const HomeView(),
      ),
    ),
    GoRoute(
      path: kBookDetailsView,
      pageBuilder: (context, state) => transitionFunction(
        page: BlocProvider(
          create: (context) =>
              SimilarBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
          child:  BookDetailsView(bookModel: state.extra as BookModel,),
        ),
      ),
    ),
    GoRoute(
      path: kSearchView,
      pageBuilder: (context, state) => transitionFunction(
        page: const SearchView(),
      ),
    ),
  ]);
}

Page<dynamic> transitionFunction({
  required Widget page,
}) {
  return CustomTransitionPage<void>(
    child: page,
    transitionDuration: const Duration(milliseconds: 750),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        ScaleTransition(
      scale: CurvedAnimation(
        parent: animation,
        curve: Curves.decelerate,
      ),
      child: child,
    ),
  );
}
