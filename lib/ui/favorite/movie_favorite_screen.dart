import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_architecture/data/model/movie_favorite.dart';
import 'package:new_app_architecture/ui/detail/bloc/movie_detail_bloc.dart';
import 'package:new_app_architecture/ui/detail/movie_detail_screen.dart';
import 'package:new_app_architecture/ui/favorite/bloc/movie_favorite_bloc.dart';

class MovieFavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorite Movie')),
      body: Center(
        child: BlocBuilder<MovieFavoriteBloc, MovieFavoriteState>(
          builder: (context, state) {
            if (state is EmptyFavorite) return Text('Favorite Movie is Empty');
            if (state is ShowFavoriteMovie)
              return ListView.builder(
                itemBuilder: (context, index) =>
                    _favoriteItem(context, state.movies[index]),
                itemCount: state.movies.length,
              );
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Widget _favoriteItem(BuildContext context, MovieFavorite favorite) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return BlocProvider<MovieDetailBloc>(
            create: (context) =>
                MovieDetailBloc()..add(LoadDetailMovie(favorite.id)),
            child: MovieDetailScreen(movieId: favorite.id),
          );
        }));
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
