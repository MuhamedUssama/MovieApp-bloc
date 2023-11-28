import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/data/model/popular.dart';
import 'package:movie_app/data/repository/popular_repo.dart';

part 'popular_movies_state.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  final PopualarRepository popualarRepository;
  late List<Results> results;

  PopularMoviesCubit(this.popualarRepository) : super(PopularMoviesInitial());

  List<Results> getPopularMovies() {
    popualarRepository.getPopularMovies().then((result) {
      emit(PopularMoviesLoaded(result));
      results = result;
    });
    return results;
  }
}
