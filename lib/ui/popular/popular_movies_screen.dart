import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_app_architecture/domain/movie.dart';
import 'package:new_app_architecture/ui/detail/movie_detail_screen.dart';
import 'package:new_app_architecture/ui/detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:new_app_architecture/ui/favorite/movie_favorite_screen.dart';
import 'package:new_app_architecture/ui/favorite/viewmodel/movie_favorite_viewmodel.dart';
import 'package:new_app_architecture/ui/popular/viewmodel/popular_movie_viewmodel.dart';
import 'package:provider/provider.dart';

class PopularMoviesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Movie'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ChangeNotifierProvider<MovieFavoriteViewModel>(
                  create: (context) =>
                      MovieFavoriteViewModel()..loadFavorites(),
                  child: MovieFavoriteScreen(),
                );
              }));
            },
          ),
        ],
      ),
      body: Center(
        child: Consumer<PopularMovieVieWModel>(
          builder: (context, model, child) {
            if (model.isLoading) return CircularProgressIndicator();
            if (model.movies.isEmpty) return Text('Movie is Empty');
            return ListView.builder(
              itemBuilder: (context, index) =>
                  _buildMovieItem(context, model.movies[index]),
              itemCount: model.movies.length,
            );
          },
        ),
      ),
    );
  }

  Widget _buildMovieItem(BuildContext context, Movie movie) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ChangeNotifierProvider<MovieDetailViewModel>(
            create: (context) =>
                MovieDetailViewModel()..loadDetailMovie(movie.id),
            child: MovieDetailScreen(movieId: movie.id),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: 'https://image.tmdb.org/t/p/original${movie.background}',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
              Text(movie.title)
            ],
          ),
        ),
      ),
    );
  }
}
