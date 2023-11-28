import 'package:movie_app/data/api/home_screen_apis.dart';
import 'package:movie_app/data/model/popular.dart';

class PopualarRepository {
  final HomeScreenAPIs homeScreenAPIs;

  PopualarRepository(this.homeScreenAPIs);

  Future<List<Results>> getPopularMovies() async {
    return await homeScreenAPIs.getPopularMovies();
  }
}
