import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_architecture/core/constant.dart';
import 'package:new_app_architecture/data/model/movie_favorite.dart';
import 'package:new_app_architecture/ui/favorite/bloc/movie_favorite_bloc.dart';

class MovieFavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorite Movie')),
      body: Center(
        child: BlocBuilder<MovieFavoriteBloc, MovieFavoriteState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => CircularProgressIndicator(),
              showFavoriteMovie: (favorite) => ListView.builder(
                itemBuilder: (context, index) =>
                    _favoriteItem(context, favorite.movies[index]),
                itemCount: favorite.movies.length,
              ),
              emptyFavorite: (message) => Text('Favorite Movie is Empty'),
            );
          },
        ),
      ),
    );
  }

  Widget _favoriteItem(BuildContext context, MovieFavorite favorite) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailMovie, arguments: favorite.movieId);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Image.network(
                'https://image.tmdb.org/t/p/original${favorite.thumbnail}',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
              Text(favorite.title)
            ],
          ),
        ),
      ),
    );
  }
}
