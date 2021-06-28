import 'package:flutter/material.dart';
import 'package:pop_movies_and_series/data/datasource/datasource.dart';
import 'package:pop_movies_and_series/data/models/models.dart';

class TMDBRepository {
  final TMDBDatasource tmbdDatasource;

  TMDBRepository({@required this.tmbdDatasource})
      : assert(tmbdDatasource != null);

  Future<MovieResponseModel> fetchAllMovies() async {
    return await tmbdDatasource.fetchAllMovies();
  }
}
