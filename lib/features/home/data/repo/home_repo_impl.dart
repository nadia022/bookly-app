import 'package:bookly_app/api/api_endpoints.dart';
import 'package:bookly_app/api/api_services.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  ApiServices apiServices;
  HomeRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<Item>>> featchNewestBooks() async {
    try {
      var data =
          await apiServices.get(endPoint: ApiEndpoints.newestBooksEndPoint);
      var response = BookModel.fromJson(data);
      return Right(response.items!);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> featchFeaturedBooks() async {
    try {
      var data =
          await apiServices.get(endPoint: ApiEndpoints.featuredBooksEndPoint);
      var response = BookModel.fromJson(data);
      return Right(response.items!);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> featchSuggestedBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=subject:$category&Sorting=relevance");
      var response = BookModel.fromJson(data);
      return Right(response.items!);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
