import 'package:pop_movies_and_series/data/datasource/datasource.dart';
import 'package:pop_movies_and_series/data/models/models.dart';

class TMDBRepository {
  static Future<MovieResponseModel> fetchAllMovies() async {
    return await TMDBDatasource.fetchAllMovies();
  }

  static Future<MovieDetail> showDetail(int id) async {
    return await TMDBDatasource.showDetail(id);
  }
}
