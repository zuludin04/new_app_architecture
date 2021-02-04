import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_architecture/domain/movie.dart';
import 'package:new_app_architecture/ui/detail/bloc/movie_detail_bloc.dart';
import 'package:new_app_architecture/ui/detail/movie_detail_screen.dart';
import 'package:new_app_architecture/ui/favorite/bloc/movie_favorite_bloc.dart'
    as fav;
import 'package:new_app_architecture/ui/favorite/movie_favorite_screen.dart';
import 'package:new_app_architecture/ui/popular/bloc/popular_movies_bloc.dart';

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
                return BlocProvider<fav.MovieFavoriteBloc>(
                  create: (context) =>
                      fav.MovieFavoriteBloc()..add(fav.LoadFavoriteMovie()),
                  child: MovieFavoriteScreen(),
                );
              }));
            },
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
          builder: (context, state) {
            if (state is ShowErrorMessage) return Text(state.message);
            if (state is ShowPopularMovies)
              return ListView.builder(
                itemBuilder: (context, index) =>
                    _buildMovieItem(context, state.movies[index]),
                itemCount: state.movies.length,
              );
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Widget _buildMovieItem(BuildContext context, Movie movie) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return BlocProvider<MovieDetailBloc>(
            create: (context) =>
                MovieDetailBloc()..add(LoadDetailMovie(movie.id)),
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
                imageUrl:
                    'https://image.tmdb.org/t/p/original${movie.background}',
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
