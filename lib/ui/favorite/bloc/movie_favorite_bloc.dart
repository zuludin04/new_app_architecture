import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_app_architecture/data/app_repository.dart';
import 'package:new_app_architecture/data/model/movie_favorite.dart';

part 'movie_favorite_bloc.freezed.dart';

part 'movie_favorite_event.dart';

part 'movie_favorite_state.dart';

class MovieFavoriteBloc extends Bloc<MovieFavoriteEvent, MovieFavoriteState> {
  final _repository = AppRepositoryImpl();

  MovieFavoriteBloc() : super(MovieFavoriteState.initial());

  @override
  Stream<MovieFavoriteState> mapEventToState(
    MovieFavoriteEvent event,
  ) async* {
    if (event is LoadFavoriteMovie) {
      var result = await _repository.loadFavoriteMovie();
      if (result.isEmpty) {
        yield MovieFavoriteState.emptyFavorite(
            'Favorite Movie is not Available');
      } else {
        yield MovieFavoriteState.showFavoriteMovie(result);
      }
    }
  }
}
