import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_architecture/core/constant.dart';
import 'package:new_app_architecture/domain/movie.dart';
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
              Navigator.pushNamed(context, FavoriteMovie);
            },
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => CircularProgressIndicator(),
              showPopularMovies: (movies) => ListView.builder(
                itemBuilder: (context, index) =>
                    _buildMovieItem(context, movies.movies[index]),
                itemCount: movies.movies.length,
              ),
              showErrorMessage: (message) => Text(message.message),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMovieItem(BuildContext context, Movie movie) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailMovie, arguments: movie.id);
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
