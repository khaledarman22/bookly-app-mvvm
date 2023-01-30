// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booklyapp/features/home_featuer/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:booklyapp/core/error/failures.dart';
import 'package:booklyapp/core/utils/api/api_serves.dart';
import 'package:booklyapp/features/home_featuer/data/reposetory/home_repostory.dart';
import 'package:flutter/widgets.dart';

class HomeRepoImpl implements HomeReposetory {
  final ApiServes apiServes;
  HomeRepoImpl({
    required this.apiServes,
  });
  @override
  Future<Either<Failure, List<BookModel>>> fetchBeseSellerBook() async {
    try {
      var data = await apiServes.get(endpoint: 'volumes?q=quilting');
      List<BookModel> books = [];
      data['items'].forEach((element) {
        try {
          books.add(BookModel.fromJson(element));
        } catch (e) {
          books.add(BookModel.fromJson(element));
        }
      });
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatuerBooks() {
    // TODO: implement fetchFeatuerBooks
    throw UnimplementedError();
  }
}
