import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with apiServer");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with apiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with apiServer");

      case DioExceptionType.cancel:
        return ServerFailure("Request to apiServer was canseld");

      case DioExceptionType.unknown:
        return ServerFailure("No Internet Connection");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.connectionError:
        return ServerFailure("ConnectionError");

      default:
        return ServerFailure("Opps There was an Error ,please try again");
    }
  }

  factory ServerFailure.fromResponse(
      int statusCode, Map<String, dynamic> response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, please try again later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error ,Please try later");
    } else {
      return ServerFailure("Opps There was an Error ,please try again");
    }
  }
}
