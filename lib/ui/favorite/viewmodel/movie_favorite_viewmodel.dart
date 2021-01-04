import 'package:new_app_architecture/core/base/base_viewmodel.dart';
import 'package:new_app_architecture/model/movie_favorite.dart';
import 'package:new_app_architecture/service/favorite_service.dart';

class MovieFavoriteViewModel extends BaseViewModel {
  FavoriteService _favoriteService = FavoriteService();

  List<MovieFavorite> _favorites = List();

  List<MovieFavorite> get favorites => _favorites;

  void loadFavorites() async {
    showLoading(true);

    var result = await _favoriteService.loadFavoriteMovie();
    _favorites.addAll(result);

    showLoading(false);
  }
}
