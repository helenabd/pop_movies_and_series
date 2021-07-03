import 'package:pop_movies_and_series/data/models/models.dart';
import 'package:pop_movies_and_series/data/repositories/repositories.dart';

class TMDBUseCase {
  static Future<MovieResponseModel> fetchMovies() async {
    return await TMDBRepository.fetchAllMovies();
  }

  static Future<MovieDetail> showDetail(int id) async {
    return await TMDBRepository.showDetail(id);
  }
}
