import 'package:dio/dio.dart';
import 'package:new_app_architecture/model/detail_movie_response.dart';
import 'package:new_app_architecture/model/error/no_internet_model.dart';
import 'package:new_app_architecture/model/popular_movie_response.dart';
import 'package:new_app_architecture/core/logging_interceptor.dart';

class MovieApiProvider {
  Dio get dio => _dio();

  Dio _dio() {
    final options = BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/movie/',
      connectTimeout: 5000,
      receiveTimeout: 5000,
      sendTimeout: 5000,
      contentType: "application/json;charset=utf-8",
    );

    var dio = Dio(options);

    dio.interceptors.add(LoggingInterceptors());

    return dio;
  }

  // todo create wrapper to dio request
  Future<PopularMovieResponse> loadPopularMovie() async {
    try {
      Response response = await dio.get('popular', queryParameters: {
        'api_key': '325705eafaaf6af0062a23113f72a058',
        'language': 'en-US',
        'page': 1,
      });
      var result = PopularMovieResponse.fromJson(response.data);
      return result;
    } catch (error, _) {
      throw NoInternetModel();
    }
  }

  Future<DetailMovieResponse> loadDetailMovie(int detailId) async {
    try {
      Response response = await dio.get('$detailId', queryParameters: {
        'api_key': '325705eafaaf6af0062a23113f72a058',
        'language': 'en-US',
      });
      return DetailMovieResponse.fromJson(response.data);
    } catch (error, _) {
      throw NoInternetModel();
    }
  }
}
