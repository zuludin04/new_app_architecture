import 'package:new_app_architecture/model/movie_favorite.dart';
import 'package:new_app_architecture/provider/movie_database_provider.dart';

class FavoriteService {
  MovieDatabaseProvider _databaseProvider = MovieDatabaseProvider();

  // todo use either to determine the result from database
  Future<List<MovieFavorite>> loadFavoriteMovie() async {
    var result = await _databaseProvider.loadFavoriteMovies();
    return result;
  }

  Future<int> insertFavoriteMovie(MovieFavorite movie) =>
      _databaseProvider.insertFavoriteMovie(movie);

  Future<int> deleteFavoriteMovie(int movie) =>
      _databaseProvider.deleteFavoriteMovie(movie);

  Future<bool> checkFavoriteMovie(int movieId) =>
      _databaseProvider.checkIfMovieFavorite(movieId);
}
