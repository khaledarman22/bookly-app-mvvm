import 'package:booklyapp/core/error/failures.dart';
import 'package:booklyapp/features/home_featuer/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeReposetory {
  Future<Either<Failure, List<BookModel>>> fetchBeseSellerBook();
  //get best seller from api
  Future<Either<Failure, List<BookModel>>> fetchFeatuerBooks();
}
