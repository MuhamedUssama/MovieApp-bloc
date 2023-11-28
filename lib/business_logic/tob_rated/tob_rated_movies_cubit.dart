import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tob_rated_movies_state.dart';

class TobRatedMoviesCubit extends Cubit<TobRatedMoviesState> {
  TobRatedMoviesCubit() : super(TobRatedMoviesInitial());

  
}
