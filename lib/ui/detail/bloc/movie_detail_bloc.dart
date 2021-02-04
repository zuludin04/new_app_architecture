import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_app_architecture/data/app_repository.dart';
import 'package:new_app_architecture/data/model/detail_movie_response.dart';
import 'package:new_app_architecture/data/model/movie_favorite.dart';

part 'movie_detail_event.dart';

part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final _repository = AppRepositoryImpl();
  DetailMovieResponse _detailMovie = DetailMovieResponse();

  MovieDetailBloc() : super(MovieDetailInitial());

  @override
  Stream<MovieDetailState> mapEventToState(
    MovieDetailEvent event,
  ) async* {
    if (event is LoadDetailMovie) {
      var result = await _repository.getDetailMovie(event.movieId);
      yield result.fold(
        (l) => ErrorMovieDetail(),
        (r) {
          _detailMovie = r;
          return ShowDetailMovie(r);
        },
      );
    } else if (event is AddFavoriteMovie) {
      var favorite = MovieFavorite(
          title: _detailMovie.title,
          thumbnail: _detailMovie.backdropPath,
          movieId: _detailMovie.id);
      var result = await _repository.insertFavoriteMovie(favorite);
      if (result > 0) {
        yield UpdateFavoriteStatus('Movie is Inserted to Favorite');
      } else {
        yield UpdateFavoriteStatus('Can\'t Insert Movie to Database');
      }
    } else if (event is RemoveFavoriteMovie) {
      var result = await _repository.deleteFavoriteMovie(event.movieId);
      if (result > 0) {
        yield UpdateFavoriteStatus('Movie is no Longer Favorite');
      } else {
        yield UpdateFavoriteStatus('Can\'t Delete Movie');
      }
    } else if (event is CheckIfMovieFavorite) {
      var result = await _repository.checkFavoriteMovie(event.movieId);
      yield IsMovieFavorite(result);
    }
  }
}
