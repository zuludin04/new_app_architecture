part of 'movie_detail_bloc.dart';

abstract class MovieDetailState extends Equatable {
  @override
  List<Object> get props => [];
}

class MovieDetailInitial extends MovieDetailState {}

class ShowDetailMovie extends MovieDetailState {
  final DetailMovieResponse detailMovie;

  ShowDetailMovie(this.detailMovie);

  @override
  List<Object> get props => [detailMovie];
}

class UpdateFavoriteStatus extends MovieDetailState {
  final String message;

  UpdateFavoriteStatus(this.message);

  @override
  List<Object> get props => [message];
}

class ErrorMovieDetail extends MovieDetailState {}

class IsMovieFavorite extends MovieDetailState {
  final bool favorite;

  IsMovieFavorite(this.favorite);

  @override
  List<Object> get props => [favorite];
}
