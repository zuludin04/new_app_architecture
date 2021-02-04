import 'package:new_app_architecture/data/model/movie_entity.dart';
import 'package:new_app_architecture/data/model/popular_movie_response.dart';

class Movie {
  int id;
  String title;
  String background;
  bool fromApi;

  Movie({this.id, this.title, this.background, this.fromApi});

  Movie.fromEntity(MovieEntity entities) {
    id = entities.movieId;
    title = entities.title;
    background = entities.thumbnail;
    fromApi = false;
  }

  Movie.fromResponse(MovieResults results) {
    id = results.id;
    title = results.title;
    background = results.backdropPath;
    fromApi = true;
  }
}
