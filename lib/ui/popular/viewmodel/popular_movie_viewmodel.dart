import 'package:new_app_architecture/core/base/base_viewmodel.dart';
import 'package:new_app_architecture/domain/movie.dart';
import 'package:new_app_architecture/service/movie_service.dart';

class PopularMovieVieWModel extends BaseViewModel {
  MovieService _movieService = MovieService();

  List<Movie> _movies = [];

  List<Movie> get movies => _movies;

  void loadMoviePopular() async {
    showLoading(true);

    var movies = await _movieService.getPopularMovie();
    movies.fold(
      (l) => print(l.message),
      (r) => _movies.addAll(r),
    );

    showLoading(false);
  }
}
