part of 'movie_favorite_bloc.dart';

@freezed
abstract class MovieFavoriteState with _$MovieFavoriteState {
  const factory MovieFavoriteState.initial() = Initial;
  const factory MovieFavoriteState.showFavoriteMovie(List<MovieFavorite> movies) = ShowFavoriteMovie;
  const factory MovieFavoriteState.emptyFavorite(String message) = EmptyFavorite;
}
