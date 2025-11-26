import 'package:dio/dio.dart';

abstract class Failure {
  String message;
  Failure(this.message);
}

class ServerFailure extends Failure{
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException  dioException){
    switch (dioException.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
       return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Connection failed due to a security certificate issue');
      case DioExceptionType.badResponse:
        return ServerFailure.fromresponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error, Please try again!');
    }
  }
  factory ServerFailure.fromresponse(int statusCode,dynamic response){
    if(statusCode==400 || statusCode==401 || statusCode==403){
      return ServerFailure(response['error']['message']);
    }
    else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }

  }


}




