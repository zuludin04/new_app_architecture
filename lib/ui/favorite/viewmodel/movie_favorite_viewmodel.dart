import 'package:new_app_architecture/core/base/base_viewmodel.dart';
import 'package:new_app_architecture/data/app_repository.dart';
import 'package:new_app_architecture/data/model/movie_favorite.dart';

class MovieFavoriteViewModel extends BaseViewModel {
  final _repository = AppRepositoryImpl();

  List<MovieFavorite> _favorites = List();

  List<MovieFavorite> get favorites => _favorites;

  void loadFavorites() async {
    showLoading(true);

    var result = await _repository.loadFavoriteMovie();
    _favorites.addAll(result);

    showLoading(false);
  }
}
