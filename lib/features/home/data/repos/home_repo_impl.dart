import 'package:bookly_mvvm_bloc/core/errors/failures.dart';
import 'package:bookly_mvvm_bloc/core/utils/api_service.dart';
import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/books_request.dart';
import 'package:bookly_mvvm_bloc/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>?>> fetchNewestBooks() async {
    try {
      Map<String, dynamic>? request = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming");
      return right(BooksRequest.fromJson(request).items!);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>?>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic>? request = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:programming");
      return right(BooksRequest.fromJson(request).items!);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
