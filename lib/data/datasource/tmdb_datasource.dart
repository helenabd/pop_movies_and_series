import 'dart:convert';
import 'package:http/http.dart';

import 'package:pop_movies_and_series/data/models/models.dart';

class TMDBDatasource {
  final _apiKey = '8aec79a258a24baa0037dfa3e863a28c';
  Client client = Client();
  Future<MovieResponseModel> fetchAllMovies() async {
    print('entered');
    try {
      final response = await client
          .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
      print(response.body.toString());
      if (response.statusCode == 200) {
        return MovieResponseModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to get API content');
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
