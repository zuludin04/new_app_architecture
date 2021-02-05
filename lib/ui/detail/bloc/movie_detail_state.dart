part of 'movie_detail_bloc.dart';

@freezed
abstract class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState.initial() = Initial;
  const factory MovieDetailState.showDetailMovie(DetailMovieResponse detailMovie) = ShowDetailMovie;
  const factory MovieDetailState.updateStatus(String message) = UpdateStatus;
  const factory MovieDetailState.errorMovieDetail() = ErrorMovieDetail;
  const factory MovieDetailState.isMovieFavorite(bool favorite) = IsMovieFavorite;
}
