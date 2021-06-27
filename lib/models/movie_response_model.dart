import 'package:pop_movies_and_series/models/movie_model.dart';

class MovieResponseModel {
  int page;
  final int totalResults;
  final int totalPages;
  final List<MovieModel> movies;

  MovieResponseModel({
    this.page,
    this.totalResults,
    this.totalPages,
    this.movies,
  });

  factory MovieResponseModel.fromJson(Map<String, dynamic> json) {
    return MovieResponseModel(
      page: json['page'],
      totalResults: json['totalResults'],
      totalPages: json['totalPages'],
      movies: List<MovieModel>.from(
          json['movies']?.map((x) => MovieModel.fromJson(x))),
    );
  }
}
