import 'dart:convert';
import 'package:http/http.dart';

import 'package:pop_movies_and_series/data/models/models.dart';

class TMDBDatasource {
  static Future<MovieResponseModel> fetchAllMovies() async {
    final _apiKey = '8aec79a258a24baa0037dfa3e863a28c';
    Client client = Client();
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

  static Future<MovieDetail> showDetail(int id) async {
    final _apiKey = '8aec79a258a24baa0037dfa3e863a28c';
    Client client = Client();
    print('entered');
    try {
      final response = await client.get(
          "https://api.themoviedb.org/3/movie/$id?api_key=$_apiKey&language=en-US");
      print(response.body.toString());
      if (response.statusCode == 200) {
        return MovieDetail.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to get API content');
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
