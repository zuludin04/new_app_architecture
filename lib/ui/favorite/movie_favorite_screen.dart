import 'package:flutter/material.dart';
import 'package:new_app_architecture/model/movie_favorite.dart';
import 'package:new_app_architecture/ui/detail/movie_detail_screen.dart';
import 'package:new_app_architecture/ui/detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:new_app_architecture/ui/favorite/viewmodel/movie_favorite_viewmodel.dart';
import 'package:provider/provider.dart';

class MovieFavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Movie'),
      ),
      body: Center(
        child: Consumer<MovieFavoriteViewModel>(
          builder: (context, model, child) {
            if (model.isLoading) return CircularProgressIndicator();
            if (model.favorites.isEmpty) return Text('Favorite Movie is Empty');
            return ListView.builder(
              itemBuilder: (context, index) =>
                  _favoriteItem(context, model.favorites[index]),
              itemCount: model.favorites.length,
            );
          },
        ),
      ),
    );
  }

  Widget _favoriteItem(BuildContext context, MovieFavorite favorite) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ChangeNotifierProvider<MovieDetailViewModel>(
            create: (context) =>
                MovieDetailViewModel()..loadDetailMovie(favorite.movieId),
            child: MovieDetailScreen(movieId: favorite.movieId),
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
