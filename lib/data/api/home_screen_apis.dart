import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/data/model/popular.dart';
import 'package:movie_app/presntation/utils/strings.dart';

class HomeScreenAPIs {
  static const String baseUrl = CommonStrings.baseApiUrl;
  static const String token = CommonStrings.token;

  Future<List<Results>> getPopularMovies() async {
    const String endPoint = "popular";

    try {
      Uri url = Uri.parse("$baseUrl$endPoint");
      http.Response response = await http.get(url, headers: {
        'Authorization': 'Bearer $token',
      });
      Map<String, dynamic> json = jsonDecode(response.body);

      PopularMovies popularMovies = PopularMovies.fromJson(json);

      if (response.statusCode >= 200 &&
          response.statusCode < 300 &&
          popularMovies.results?.isNotEmpty == true) {
        return popularMovies.results!;
      }
      throw Exception(popularMovies.statusMessage ??
          "There is an error, please try again later");
    } catch (e) {
      rethrow;
    }
  }
}
