part of 'movie_favorite_bloc.dart';

@freezed
abstract class MovieFavoriteEvent with _$MovieFavoriteEvent {
  const factory MovieFavoriteEvent.loadFavoriteMovie() = LoadFavoriteMovie;
}
