import 'package:bookly_mvvm_bloc/constants.dart';
import 'package:bookly_mvvm_bloc/core/utils/app_router.dart';
import 'package:bookly_mvvm_bloc/core/utils/service_locator.dart';
import 'package:bookly_mvvm_bloc/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/manager/Featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/manager/newset_books_cubit/newest_book_cubit.dart';
import 'package:bookly_mvvm_bloc/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setUpServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      ensureScreenSize: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(homeRepo: getIt.get<HomeRepoImpl>())
                  ..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) =>
                NewsetBookCubit(homeRepo: getIt.get<HomeRepoImpl>())
                  ..fetchNewestBooks(),
          ),
         
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        ),
      ),
    );
  }
}
