part of 'popular_movies_bloc.dart';

abstract class PopularMoviesState extends Equatable {
  @override
  List<Object> get props => [];
}

class PopularMoviesInitial extends PopularMoviesState {}

class ShowPopularMovies extends PopularMoviesState {
  final List<Movie> movies;

  ShowPopularMovies(this.movies);

  @override
  List<Object> get props => [movies];
}

class ShowErrorMessage extends PopularMoviesState {
  final String message;

  ShowErrorMessage(this.message);

  @override
  List<Object> get props => [message];
}
