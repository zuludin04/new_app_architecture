part of 'movie_favorite_bloc.dart';

abstract class MovieFavoriteState extends Equatable {
  @override
  List<Object> get props => [];
}

class MovieFavoriteInitial extends MovieFavoriteState {}

class ShowFavoriteMovie extends MovieFavoriteState {
  final List<MovieFavorite> movies;

  ShowFavoriteMovie(this.movies);

  @override
  List<Object> get props => [movies];
}

class EmptyFavorite extends MovieFavoriteState {
  final String message;

  EmptyFavorite(this.message);

  @override
  List<Object> get props => [message];
}
