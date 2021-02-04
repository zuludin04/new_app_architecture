part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadDetailMovie extends MovieDetailEvent {
  final int movieId;

  LoadDetailMovie(this.movieId);

  @override
  List<Object> get props => [movieId];
}

class AddFavoriteMovie extends MovieDetailEvent {}

class RemoveFavoriteMovie extends MovieDetailEvent {
  final int movieId;

  RemoveFavoriteMovie(this.movieId);

  @override
  List<Object> get props => [movieId];
}

class CheckIfMovieFavorite extends MovieDetailEvent {
  final int movieId;

  CheckIfMovieFavorite(this.movieId);

  @override
  List<Object> get props => [movieId];
}
