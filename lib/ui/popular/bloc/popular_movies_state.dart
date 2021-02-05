part of 'popular_movies_bloc.dart';

@freezed
abstract class PopularMoviesState with _$PopularMoviesState {
  const factory PopularMoviesState.initial() = Initial;
  const factory PopularMoviesState.showPopularMovies(List<Movie> movies) = ShowPopularMovies;
  const factory PopularMoviesState.showErrorMessage(String message) = ShowErrorMessage;
}
