import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_architecture/data/model/detail_movie_response.dart';
import 'package:new_app_architecture/ui/detail/bloc/movie_detail_bloc.dart';

class MovieDetailScreen extends StatelessWidget {
  final int movieId;

  MovieDetailScreen({this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Movie'),
        // actions: [FavoriteButton(movieId)],
      ),
      body: Center(
        child: BlocBuilder<MovieDetailBloc, MovieDetailState>(
          builder: (context, state) {
            if (state is ShowDetailMovie)
              return _buildDetailLayout(state.detailMovie);
            return CircularProgressIndicator();
          },
        ),
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
