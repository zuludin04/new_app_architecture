import 'package:dartz/dartz.dart';
import 'package:new_app_architecture/data/model/detail_movie_response.dart';
import 'package:new_app_architecture/data/model/error/error_response.dart';
import 'package:new_app_architecture/data/model/error/no_internet_model.dart';
import 'package:new_app_architecture/data/model/movie_entity.dart';
import 'package:new_app_architecture/data/model/movie_favorite.dart';
import 'package:new_app_architecture/data/model/popular_movie_response.dart';
import 'package:new_app_architecture/data/source/local/movie_database_provider.dart';
import 'package:new_app_architecture/data/source/remote/movie_api_provider.dart';
import 'package:new_app_architecture/domain/movie.dart';

abstract class AppRepository {
  Future<Either<ErrorResponse, List<Movie>>> getPopularMovie();

  Future<Either<ErrorResponse, DetailMovieResponse>> getDetailMovie(
      int movieId);

  Future<List<MovieFavorite>> loadFavoriteMovie();

  Future<int> insertFavoriteMovie(MovieFavorite movie);

  Future<int> deleteFavoriteMovie(int movie);

  Future<bool> checkFavoriteMovie(int movieId);
}

class AppRepositoryImpl extends AppRepository {
  MovieDatabaseProvider _databaseProvider = MovieDatabaseProvider();
  MovieApiProvider _apiProvider = MovieApiProvider();

  @override
  Future<bool> checkFavoriteMovie(int movieId) =>
      _databaseProvider.checkIfMovieFavorite(movieId);

  @override
  Future<int> deleteFavoriteMovie(int movie) =>
      _databaseProvider.deleteFavoriteMovie(movie);

  @override
  Future<Either<ErrorResponse, DetailMovieResponse>> getDetailMovie(
      int movieId) async {
    try {
      var result = await _apiProvider.loadDetailMovie(movieId);
      return Right(result);
    } catch (e) {
      return Left(NoInternetModel());
    }
  }

  @override
  Future<Either<ErrorResponse, List<Movie>>> getPopularMovie() async {
    try {
      var result = await _apiProvider.loadPopularMovie();
      _addMovieToDatabase(result.results);
      var movies = result.results.map((e) => Movie.fromResponse(e)).toList();
      return Right(movies);
    } catch (e) {
      var cache = await _databaseProvider.loadMovieCache();
      if (cache != null || cache.isNotEmpty) {
        var movies = cache.map((e) => Movie.fromEntity(e)).toList();
        return Right(movies);
      }
      return Left(NoInternetModel());
    }
  }

  @override
  Future<int> insertFavoriteMovie(MovieFavorite movie) =>
      _databaseProvider.insertFavoriteMovie(movie);

  @override
  Future<List<MovieFavorite>> loadFavoriteMovie() async {
    var result = await _databaseProvider.loadFavoriteMovies();
    return result;
  }

  void _addMovieToDatabase(List<MovieResults> movies) {
    List<MovieEntity> entities = List();
    for (int i = 0; i < movies.length; i++) {
      MovieEntity e = MovieEntity(
          id: i + 1,
          title: movies[i].title,
          thumbnail: movies[i].backdropPath,
          movieId: movies[i].id);
      entities.add(e);
    }
    _databaseProvider.addSavedMovies(entities);
  }
}
