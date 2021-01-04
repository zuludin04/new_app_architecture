import 'package:dartz/dartz.dart';
import 'package:new_app_architecture/domain/movie.dart';
import 'package:new_app_architecture/model/detail_movie_response.dart';
import 'package:new_app_architecture/model/error/error_response.dart';
import 'package:new_app_architecture/model/error/no_internet_model.dart';
import 'package:new_app_architecture/model/movie_entity.dart';
import 'package:new_app_architecture/model/popular_movie_response.dart';
import 'package:new_app_architecture/provider/movie_api_provider.dart';
import 'package:new_app_architecture/provider/movie_database_provider.dart';

class MovieService {
  final _apiProvider = MovieApiProvider();
  MovieDatabaseProvider _databaseProvider = MovieDatabaseProvider();

  // todo wrapper to get result from provider into either / service
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

  Future<Either<ErrorResponse, DetailMovieResponse>> getDetailMovie(
      int movieId) async {
    try {
      var result = await _apiProvider.loadDetailMovie(movieId);
      return Right(result);
    } catch (e) {
      return Left(NoInternetModel());
    }
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
