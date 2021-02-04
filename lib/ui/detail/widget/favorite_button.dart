import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_architecture/ui/detail/bloc/movie_detail_bloc.dart';

class FavoriteButton extends StatelessWidget {
  final int movieId;

  FavoriteButton(this.movieId);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieDetailBloc>.value(
      value: context.watch<MovieDetailBloc>()
        ..add(CheckIfMovieFavorite(movieId)),
      child: BlocConsumer<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
          if (state is IsMovieFavorite) {
            return IconButton(
              icon:
                  Icon(state.favorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                if (state.favorite) {
                  context.watch<MovieDetailBloc>()
                    ..add(RemoveFavoriteMovie(movieId));
                } else {
                  context.watch<MovieDetailBloc>()..add(AddFavoriteMovie());
                }
              },
            );
          } else
            return Container();
        },
        listener: (context, state) {},
      ),
    );
  }
}
