import 'package:movie_app/data/api/home_screen_apis.dart';
import 'package:movie_app/data/model/popular.dart';

class HomeScreenRepository {
  final HomeScreenAPIs homeScreenAPIs;

  HomeScreenRepository(this.homeScreenAPIs);

  Future<List<Results>> getPopularMovies() async {
    return await homeScreenAPIs.getPopularMovies();
  }
}
