// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'popular_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PopularMoviesEventTearOff {
  const _$PopularMoviesEventTearOff();

// ignore: unused_element
  LoadPopularMovies loadPopularMovies() {
    return const LoadPopularMovies();
  }
}

/// @nodoc
// ignore: unused_element
const $PopularMoviesEvent = _$PopularMoviesEventTearOff();

/// @nodoc
mixin _$PopularMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPopularMovies(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPopularMovies(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPopularMovies(LoadPopularMovies value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPopularMovies(LoadPopularMovies value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PopularMoviesEventCopyWith<$Res> {
  factory $PopularMoviesEventCopyWith(
          PopularMoviesEvent value, $Res Function(PopularMoviesEvent) then) =
      _$PopularMoviesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularMoviesEventCopyWithImpl<$Res>
    implements $PopularMoviesEventCopyWith<$Res> {
  _$PopularMoviesEventCopyWithImpl(this._value, this._then);

  final PopularMoviesEvent _value;
  // ignore: unused_field
  final $Res Function(PopularMoviesEvent) _then;
}

/// @nodoc
abstract class $LoadPopularMoviesCopyWith<$Res> {
  factory $LoadPopularMoviesCopyWith(
          LoadPopularMovies value, $Res Function(LoadPopularMovies) then) =
      _$LoadPopularMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadPopularMoviesCopyWithImpl<$Res>
    extends _$PopularMoviesEventCopyWithImpl<$Res>
    implements $LoadPopularMoviesCopyWith<$Res> {
  _$LoadPopularMoviesCopyWithImpl(
      LoadPopularMovies _value, $Res Function(LoadPopularMovies) _then)
      : super(_value, (v) => _then(v as LoadPopularMovies));

  @override
  LoadPopularMovies get _value => super._value as LoadPopularMovies;
}

/// @nodoc
class _$LoadPopularMovies implements LoadPopularMovies {
  const _$LoadPopularMovies();

  @override
  String toString() {
    return 'PopularMoviesEvent.loadPopularMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadPopularMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPopularMovies(),
  }) {
    assert(loadPopularMovies != null);
    return loadPopularMovies();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPopularMovies(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadPopularMovies != null) {
      return loadPopularMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPopularMovies(LoadPopularMovies value),
  }) {
    assert(loadPopularMovies != null);
    return loadPopularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPopularMovies(LoadPopularMovies value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadPopularMovies != null) {
      return loadPopularMovies(this);
    }
    return orElse();
  }
}

abstract class LoadPopularMovies implements PopularMoviesEvent {
  const factory LoadPopularMovies() = _$LoadPopularMovies;
}

/// @nodoc
class _$PopularMoviesStateTearOff {
  const _$PopularMoviesStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  ShowPopularMovies showPopularMovies(List<Movie> movies) {
    return ShowPopularMovies(
      movies,
    );
  }

// ignore: unused_element
  ShowErrorMessage showErrorMessage(String message) {
    return ShowErrorMessage(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PopularMoviesState = _$PopularMoviesStateTearOff();

/// @nodoc
mixin _$PopularMoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showPopularMovies(List<Movie> movies),
    @required TResult showErrorMessage(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showPopularMovies(List<Movie> movies),
    TResult showErrorMessage(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showPopularMovies(ShowPopularMovies value),
    @required TResult showErrorMessage(ShowErrorMessage value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showPopularMovies(ShowPopularMovies value),
    TResult showErrorMessage(ShowErrorMessage value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PopularMoviesStateCopyWith<$Res> {
  factory $PopularMoviesStateCopyWith(
          PopularMoviesState value, $Res Function(PopularMoviesState) then) =
      _$PopularMoviesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularMoviesStateCopyWithImpl<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  _$PopularMoviesStateCopyWithImpl(this._value, this._then);

  final PopularMoviesState _value;
  // ignore: unused_field
  final $Res Function(PopularMoviesState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PopularMoviesStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PopularMoviesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showPopularMovies(List<Movie> movies),
    @required TResult showErrorMessage(String message),
  }) {
    assert(initial != null);
    assert(showPopularMovies != null);
    assert(showErrorMessage != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showPopularMovies(List<Movie> movies),
    TResult showErrorMessage(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showPopularMovies(ShowPopularMovies value),
    @required TResult showErrorMessage(ShowErrorMessage value),
  }) {
    assert(initial != null);
    assert(showPopularMovies != null);
    assert(showErrorMessage != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showPopularMovies(ShowPopularMovies value),
    TResult showErrorMessage(ShowErrorMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PopularMoviesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ShowPopularMoviesCopyWith<$Res> {
  factory $ShowPopularMoviesCopyWith(
          ShowPopularMovies value, $Res Function(ShowPopularMovies) then) =
      _$ShowPopularMoviesCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class _$ShowPopularMoviesCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res>
    implements $ShowPopularMoviesCopyWith<$Res> {
  _$ShowPopularMoviesCopyWithImpl(
      ShowPopularMovies _value, $Res Function(ShowPopularMovies) _then)
      : super(_value, (v) => _then(v as ShowPopularMovies));

  @override
  ShowPopularMovies get _value => super._value as ShowPopularMovies;

  @override
  $Res call({
    Object movies = freezed,
  }) {
    return _then(ShowPopularMovies(
      movies == freezed ? _value.movies : movies as List<Movie>,
    ));
  }
}

/// @nodoc
class _$ShowPopularMovies implements ShowPopularMovies {
  const _$ShowPopularMovies(this.movies) : assert(movies != null);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'PopularMoviesState.showPopularMovies(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowPopularMovies &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @JsonKey(ignore: true)
  @override
  $ShowPopularMoviesCopyWith<ShowPopularMovies> get copyWith =>
      _$ShowPopularMoviesCopyWithImpl<ShowPopularMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showPopularMovies(List<Movie> movies),
    @required TResult showErrorMessage(String message),
  }) {
    assert(initial != null);
    assert(showPopularMovies != null);
    assert(showErrorMessage != null);
    return showPopularMovies(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showPopularMovies(List<Movie> movies),
    TResult showErrorMessage(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPopularMovies != null) {
      return showPopularMovies(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showPopularMovies(ShowPopularMovies value),
    @required TResult showErrorMessage(ShowErrorMessage value),
  }) {
    assert(initial != null);
    assert(showPopularMovies != null);
    assert(showErrorMessage != null);
    return showPopularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showPopularMovies(ShowPopularMovies value),
    TResult showErrorMessage(ShowErrorMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPopularMovies != null) {
      return showPopularMovies(this);
    }
    return orElse();
  }
}

abstract class ShowPopularMovies implements PopularMoviesState {
  const factory ShowPopularMovies(List<Movie> movies) = _$ShowPopularMovies;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  $ShowPopularMoviesCopyWith<ShowPopularMovies> get copyWith;
}

/// @nodoc
abstract class $ShowErrorMessageCopyWith<$Res> {
  factory $ShowErrorMessageCopyWith(
          ShowErrorMessage value, $Res Function(ShowErrorMessage) then) =
      _$ShowErrorMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ShowErrorMessageCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res>
    implements $ShowErrorMessageCopyWith<$Res> {
  _$ShowErrorMessageCopyWithImpl(
      ShowErrorMessage _value, $Res Function(ShowErrorMessage) _then)
      : super(_value, (v) => _then(v as ShowErrorMessage));

  @override
  ShowErrorMessage get _value => super._value as ShowErrorMessage;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ShowErrorMessage(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ShowErrorMessage implements ShowErrorMessage {
  const _$ShowErrorMessage(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'PopularMoviesState.showErrorMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowErrorMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ShowErrorMessageCopyWith<ShowErrorMessage> get copyWith =>
      _$ShowErrorMessageCopyWithImpl<ShowErrorMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showPopularMovies(List<Movie> movies),
    @required TResult showErrorMessage(String message),
  }) {
    assert(initial != null);
    assert(showPopularMovies != null);
    assert(showErrorMessage != null);
    return showErrorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showPopularMovies(List<Movie> movies),
    TResult showErrorMessage(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showErrorMessage != null) {
      return showErrorMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showPopularMovies(ShowPopularMovies value),
    @required TResult showErrorMessage(ShowErrorMessage value),
  }) {
    assert(initial != null);
    assert(showPopularMovies != null);
    assert(showErrorMessage != null);
    return showErrorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showPopularMovies(ShowPopularMovies value),
    TResult showErrorMessage(ShowErrorMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showErrorMessage != null) {
      return showErrorMessage(this);
    }
    return orElse();
  }
}

abstract class ShowErrorMessage implements PopularMoviesState {
  const factory ShowErrorMessage(String message) = _$ShowErrorMessage;

  String get message;
  @JsonKey(ignore: true)
  $ShowErrorMessageCopyWith<ShowErrorMessage> get copyWith;
}
