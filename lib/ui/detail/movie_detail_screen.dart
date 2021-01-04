import 'package:flutter/material.dart';
import 'package:new_app_architecture/model/detail_movie_response.dart';
import 'package:new_app_architecture/ui/detail/viewmodel/movie_detail_viewmodel.dart';
import 'package:provider/provider.dart';

class MovieDetailScreen extends StatelessWidget {
  final int movieId;

  MovieDetailScreen({this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Movie'),
        actions: [
          // todo create wrapper for multiple change state
          ChangeNotifierProvider.value(
            value: Provider.of<MovieDetailViewModel>(context, listen: true),
            child: Consumer<MovieDetailViewModel>(
              builder: (context, model, child) {
                return IconButton(
                  icon: Icon(model.movieFavorite
                      ? Icons.favorite
                      : Icons.favorite_border),
                  onPressed: () {
                    model.addDeleteMovie(movieId);
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text(model.updateMessage)));
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: Consumer<MovieDetailViewModel>(
        builder: (context, model, child) {
          if (model.isLoading) return CircularProgressIndicator();
          return _buildDetailLayout(model.detailMovie);
        },
      ),
    );
  }

  Widget _buildDetailLayout(DetailMovieResponse detailMovie) {
    return Column(
      children: [
        Image.network(
          'https://image.tmdb.org/t/p/original${detailMovie.posterPath}',
          width: double.infinity,
          height: 180,
          fit: BoxFit.cover,
        ),
        Text(detailMovie.title),
        Text(detailMovie.overview),
      ],
    );
  }
}
