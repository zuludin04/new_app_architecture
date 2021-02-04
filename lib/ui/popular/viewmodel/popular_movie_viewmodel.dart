import 'package:new_app_architecture/core/base/base_viewmodel.dart';
import 'package:new_app_architecture/data/app_repository.dart';
import 'package:new_app_architecture/domain/movie.dart';

class PopularMovieVieWModel extends BaseViewModel {
  final _repository = AppRepositoryImpl();

  List<Movie> _movies = [];

  List<Movie> get movies => _movies;

  void loadMoviePopular() async {
    showLoading(true);

    var movies = await _repository.getPopularMovie();
    movies.fold(
      (l) => print(l.message),
      (r) => _movies.addAll(r),
    );

    showLoading(false);
  }
}
