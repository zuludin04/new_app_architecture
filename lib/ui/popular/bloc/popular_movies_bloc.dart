import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_app_architecture/data/app_repository.dart';
import 'package:new_app_architecture/domain/movie.dart';

part 'popular_movies_event.dart';

part 'popular_movies_state.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  final _repository = AppRepositoryImpl();

  PopularMoviesBloc() : super(PopularMoviesInitial());

  @override
  Stream<PopularMoviesState> mapEventToState(
    PopularMoviesEvent event,
  ) async* {
    if (event is LoadPopularMovies) {
      var result = await _repository.getPopularMovie();
      yield result.fold(
        (l) {
          return ShowErrorMessage('There is Something Wrong. Try Again');
        },
        (r) {
          if (r.isNotEmpty) {
            return ShowPopularMovies(r);
          } else {
            return ShowErrorMessage('Movie is Empty');
          }
        },
      );
    }
  }
}
