import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_architecture/core/constant.dart';
import 'package:new_app_architecture/ui/detail/bloc/movie_detail_bloc.dart';
import 'package:new_app_architecture/ui/detail/movie_detail_screen.dart';
import 'package:new_app_architecture/ui/favorite/bloc/movie_favorite_bloc.dart';
import 'package:new_app_architecture/ui/favorite/movie_favorite_screen.dart';
import 'package:new_app_architecture/ui/popular/bloc/popular_movies_bloc.dart';
import 'package:new_app_architecture/ui/popular/popular_movies_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case MoviePopular:
      return _getPageRoute(
          name: settings.name,
          page: BlocProvider<PopularMoviesBloc>(
            create: (context) => PopularMoviesBloc()
              ..add(PopularMoviesEvent.loadPopularMovies()),
            child: PopularMoviesScreen(),
          ));
    case DetailMovie:
      return _getPageRoute(
          name: settings.name,
          page: BlocProvider<MovieDetailBloc>(
            create: (context) => MovieDetailBloc()
              ..add(MovieDetailEvent.loadDetailMovie(settings.arguments)),
            child: MovieDetailScreen(movieId: settings.arguments),
          ));
    case FavoriteMovie:
      return _getPageRoute(
          name: settings.name,
          page: BlocProvider<MovieFavoriteBloc>(
            create: (context) => MovieFavoriteBloc()
              ..add(MovieFavoriteEvent.loadFavoriteMovie()),
            child: MovieFavoriteScreen(),
          ));
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({String name, Widget page}) {
  return MaterialPageRoute(
      builder: (_) => page, settings: RouteSettings(name: name));
}
