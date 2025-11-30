import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Item>>> featchFeaturedBooks();
  Future<Either<Failure, List<Item>>> featchNewestBooks();
  Future<Either<Failure, List<Item>>> featchSuggestedBooks({required String category});
}
