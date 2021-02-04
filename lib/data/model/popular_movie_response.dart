class PopularMovieResponse {
  int page;
  List<MovieResults> results;
  int totalPages;
  int totalResults;

  PopularMovieResponse({
      this.page, 
      this.results, 
      this.totalPages, 
      this.totalResults});

  PopularMovieResponse.fromJson(dynamic json) {
    page = json["page"];
    if (json["results"] != null) {
      results = [];
      json["results"].forEach((v) {
        results.add(MovieResults.fromJson(v));
      });
    }
    totalPages = json["total_pages"];
    totalResults = json["total_results"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["page"] = page;
    if (results != null) {
      map["results"] = results.map((v) => v.toJson()).toList();
    }
    map["total_pages"] = totalPages;
    map["total_results"] = totalResults;
    return map;
  }

}

class MovieResults {
  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  int voteCount;

  MovieResults({
      this.adult, 
      this.backdropPath, 
      this.genreIds, 
      this.id,
      this.originalLanguage, 
      this.originalTitle, 
      this.overview,
      this.posterPath, 
      this.releaseDate, 
      this.title, 
      this.video,
      this.voteCount});

  MovieResults.fromJson(dynamic json) {
    adult = json["adult"];
    backdropPath = json["backdrop_path"];
    genreIds = json["genre_ids"] != null ? json["genre_ids"].cast<int>() : [];
    id = json["id"];
    originalLanguage = json["original_language"];
    originalTitle = json["original_title"];
    overview = json["overview"];
    posterPath = json["poster_path"];
    releaseDate = json["release_date"];
    title = json["title"];
    video = json["video"];
    voteCount = json["vote_count"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["adult"] = adult;
    map["backdrop_path"] = backdropPath;
    map["genre_ids"] = genreIds;
    map["id"] = id;
    map["original_language"] = originalLanguage;
    map["original_title"] = originalTitle;
    map["overview"] = overview;
    map["poster_path"] = posterPath;
    map["release_date"] = releaseDate;
    map["title"] = title;
    map["video"] = video;
    map["vote_count"] = voteCount;
    return map;
  }

}