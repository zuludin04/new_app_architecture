import 'package:new_app_architecture/core/base/base_viewmodel.dart';
import 'package:new_app_architecture/model/popular_movie_response.dart';
import 'package:new_app_architecture/service/movie_service.dart';

class PopularMovieVieWModel extends BaseViewModel {
  MovieService _movieService = MovieService();

  List<MovieResults> _movies = [];

  List<MovieResults> get movies => _movies;

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
