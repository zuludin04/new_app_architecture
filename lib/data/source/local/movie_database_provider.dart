import 'dart:io';

import 'package:new_app_architecture/data/model/movie_entity.dart';
import 'package:new_app_architecture/data/model/movie_favorite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MovieDatabaseProvider {
  static MovieDatabaseProvider _movieDatabase;
  static Database _database;

  static final _movieTable = 'movie_table';
  static final _cacheTable = 'cache_table';

  MovieDatabaseProvider._createDatabase();

  factory MovieDatabaseProvider() {
    if (_movieDatabase == null) {
      _movieDatabase = MovieDatabaseProvider._createDatabase();
    }
    return _movieDatabase;
  }

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'movie_cataloge.db';

    var movieDatabase = openDatabase(path, version: 1, onCreate: _onCreateDb);

    return movieDatabase;
  }

  void _onCreateDb(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $_movieTable (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'title TEXT, '
        'thumbnail TEXT, '
        'movieId INTEGER)');
    await db.execute(
        'CREATE TABLE $_cacheTable (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'title TEXT, '
        'thumbnail TEXT, '
        'movieId INTEGER)');
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }

  Future<List<MovieFavorite>> loadFavoriteMovies() async {
    final db = await database;
    List<Map<String, dynamic>> result = await db.query(_movieTable);
    List<MovieFavorite> favorites =
        result.map((e) => MovieFavorite.fromMap(e)).toList();
    return favorites;
  }

  Future<int> insertFavoriteMovie(MovieFavorite movie) async {
    Database db = await database;
    int count = await db.insert(_movieTable, movie.toMap());
    return count;
  }

  Future<int> deleteFavoriteMovie(int movieId) async {
    Database db = await database;
    int count = await db
        .delete(_movieTable, where: 'movieId = ?', whereArgs: [movieId]);
    return count;
  }

  Future<bool> checkIfMovieFavorite(int movieId) async {
    Database db = await database;
    List<Map<String, dynamic>> result = await db
        .rawQuery('SELECT * FROM $_movieTable WHERE movieId = $movieId');
    List<MovieFavorite> favorites =
        result.map((e) => MovieFavorite.fromMap(e)).toList();
    if (favorites.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  Future<List<MovieEntity>> loadMovieCache() async {
    Database db = await database;
    List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT * FROM $_cacheTable');
    List<MovieEntity> movies =
        result.map((e) => MovieEntity.fromMap(e)).toList();
    return movies;
  }

  Future addSavedMovies(List<MovieEntity> movies) async {
    Database db = await database;
    Batch batch = db.batch();

    movies.forEach((movie) {
      batch.insert(_cacheTable, movie.toMap());
    });

    batch.commit();
  }
}
