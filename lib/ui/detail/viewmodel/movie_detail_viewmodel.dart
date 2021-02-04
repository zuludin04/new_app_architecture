import 'package:new_app_architecture/core/base/base_viewmodel.dart';
import 'package:new_app_architecture/data/app_repository.dart';
import 'package:new_app_architecture/data/model/detail_movie_response.dart';
import 'package:new_app_architecture/data/model/movie_favorite.dart';

class MovieDetailViewModel extends BaseViewModel {
  final _repository = AppRepositoryImpl();

  DetailMovieResponse _detailMovie = DetailMovieResponse();
  bool _movieFavorite = false;
  String _updateMessage = '';

  DetailMovieResponse get detailMovie => _detailMovie;

  bool get movieFavorite => _movieFavorite;

  String get updateMessage => _updateMessage;

  void loadDetailMovie(int id) async {
    showLoading(true);

    _checkMovieIfFavorite(id);
    var result = await _repository.getDetailMovie(id);
    result.fold(
      (l) => print(l.message),
      (r) => _detailMovie = r,
    );

    showLoading(false);
  }

  void addDeleteMovie(int movieId) async {
    if (_movieFavorite) {
      var result = await _repository.deleteFavoriteMovie(movieId);
      if (result > 0) {
        _updateMessage = 'Movie no Longer Favorite';
        _movieFavorite = !_movieFavorite;
        notifyListeners();
      } else {
        _updateMessage = 'Can\'t Delete Movie';
        notifyListeners();
      }
    } else {
      var result = await _repository.insertFavoriteMovie(MovieFavorite(
          title: _detailMovie.title,
          thumbnail: _detailMovie.backdropPath,
          movieId: _detailMovie.id));
      if (result > 0) {
        _updateMessage = 'Movie is Inserted to Favorite';
        _movieFavorite = !_movieFavorite;
        notifyListeners();
      } else {
        _updateMessage = 'Can\'t Insert Movie to Database';
        notifyListeners();
      }
    }
  }

  void _checkMovieIfFavorite(int movieId) async {
    var result = await _repository.checkFavoriteMovie(movieId);
    _movieFavorite = result;
    notifyListeners();
  }
}
