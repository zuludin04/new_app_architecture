class MovieEntity {
  int id;
  String title;
  String thumbnail;
  int movieId;

  MovieEntity({this.id, this.title, this.thumbnail, this.movieId});

  MovieEntity.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    movieId = map['movieId'];
    thumbnail = map['thumbnail'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['thumbnail'] = thumbnail;
    map['movieId'] = movieId;
    return map;
  }
}