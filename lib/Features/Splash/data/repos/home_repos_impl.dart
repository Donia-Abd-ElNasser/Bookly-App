import 'package:booklyapp/Features/Splash/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Splash/data/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/core/services/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HomeReposImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeReposImpl( this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>>fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      //if (data['items'] != null && data['items'] is List) {
        for (var item in data['items']) {
          try {
  books.add(BookModel.fromJson(item));
}  catch (e) {
  books.add(BookModel.fromJson(item));
}
        }
        return right(books); // Ensure return statement is outside the loop
     
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>>  fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming');
      List<BookModel> books = [];
     // if (data['items'] != null && data['items'] is List) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books); // Ensure return statement is outside the loop
      // } else {
      //   return left(ServerFailure(
      //       'error')); // Handle case where 'items' is null or not a list
      // }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
     // if (data['items'] != null && data['items'] is List) {
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books); // Ensure return statement is outside the loop
      // } else {
      //   return left(ServerFailure(
      //       'error')); // Handle case where 'items' is null or not a list
      // }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }


   
}
