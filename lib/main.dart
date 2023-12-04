import 'package:flutter/material.dart';
import 'package:movie_app/presntation/utils/app_router.dart';

void main() {
  runApp(MovieApp(appRouter: AppRouter()));
}

class MovieApp extends StatelessWidget {
  final AppRouter appRouter;

  const MovieApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
