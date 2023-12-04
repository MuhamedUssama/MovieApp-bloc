import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/business_logic/popular/popular_movies_cubit.dart';
import 'package:movie_app/data/api/home_screen_apis.dart';
import 'package:movie_app/data/repository/popular_repo.dart';
import 'package:movie_app/presntation/screens/home/home.dart';
import 'package:movie_app/presntation/screens/splash/splash.dart';

class AppRouter {
  late PopualarRepository popualarRepository;
  late PopularMoviesCubit popularMoviesCubit;

  AppRouter() {
    popualarRepository = PopualarRepository(HomeScreenAPIs());
    popularMoviesCubit = PopularMoviesCubit(popualarRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case 'home':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => popularMoviesCubit,
            child: HomeScreen(),
          ),
        );
    }
  }
}
