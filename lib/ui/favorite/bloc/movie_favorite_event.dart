part of 'movie_favorite_bloc.dart';

abstract class MovieFavoriteEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadFavoriteMovie extends MovieFavoriteEvent {}
