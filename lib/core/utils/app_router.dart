import 'package:bookly_mvvm_bloc/features/home/presentation/view/book_details_view.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kSplashView = "/";
  static const String kHomeView = "/homeView";
  static const String kBookDetailsView = "/bookDetailsView";

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
        page: const BookDetailsView(),
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
