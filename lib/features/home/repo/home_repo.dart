import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,BookModel>> getFeaturedBooks();
  Future<Either<Failure,BookModel>> getBestSellerBooks();
}