part of 'movie_detail_bloc.dart';

@freezed
abstract class MovieDetailEvent with _$MovieDetailEvent {
  const factory MovieDetailEvent.loadDetailMovie(int movieId) = LoadDetailMovie;
  const factory MovieDetailEvent.addFavoriteMovie() = AddFavoriteMovie;
  const factory MovieDetailEvent.removeFavoriteMovie(int movieId) = RemoveFavoriteMovie;
  const factory MovieDetailEvent.checkIfMovieFavorite(int movieId) = CheckIfMovieFavorite;
}
