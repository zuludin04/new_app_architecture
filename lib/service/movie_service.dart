import 'package:dartz/dartz.dart';
import 'package:new_app_architecture/model/detail_movie_response.dart';
import 'package:new_app_architecture/model/error/error_response.dart';
import 'package:new_app_architecture/model/error/no_internet_model.dart';
import 'package:new_app_architecture/model/popular_movie_response.dart';
import 'package:new_app_architecture/provider/movie_api_provider.dart';

class MovieService {
  final _apiProvider = MovieApiProvider();

  // todo wrapper to get result from provider into either / service
  Future<Either<ErrorResponse, List<MovieResults>>> getPopularMovie() async {
    try {
      var result = await _apiProvider.loadPopularMovie();
      return Right(result.results);
    } catch (e) {
      return Left(NoInternetModel());
    }
  }

  Future<Either<ErrorResponse, DetailMovieResponse>> getDetailMovie(int movieId) async {
    try {
      var result = await _apiProvider.loadDetailMovie(movieId);
      return Right(result);
    } catch (e) {
      return Left(NoInternetModel());
    }
  }
}
