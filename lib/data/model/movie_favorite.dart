class MovieFavorite {
  int id;
  String title;
  String thumbnail;
  int movieId;
  
  MovieFavorite({this.id, this.title, this.thumbnail, this.movieId});
  
  MovieFavorite.fromMap(Map<String, dynamic> map) {
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