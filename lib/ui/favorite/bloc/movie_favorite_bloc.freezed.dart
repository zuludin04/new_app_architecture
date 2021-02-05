// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieFavoriteEventTearOff {
  const _$MovieFavoriteEventTearOff();

// ignore: unused_element
  LoadFavoriteMovie loadFavoriteMovie() {
    return const LoadFavoriteMovie();
  }
}

/// @nodoc
// ignore: unused_element
const $MovieFavoriteEvent = _$MovieFavoriteEventTearOff();

/// @nodoc
mixin _$MovieFavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadFavoriteMovie(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadFavoriteMovie(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadFavoriteMovie(LoadFavoriteMovie value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadFavoriteMovie(LoadFavoriteMovie value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MovieFavoriteEventCopyWith<$Res> {
  factory $MovieFavoriteEventCopyWith(
          MovieFavoriteEvent value, $Res Function(MovieFavoriteEvent) then) =
      _$MovieFavoriteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieFavoriteEventCopyWithImpl<$Res>
    implements $MovieFavoriteEventCopyWith<$Res> {
  _$MovieFavoriteEventCopyWithImpl(this._value, this._then);

  final MovieFavoriteEvent _value;
  // ignore: unused_field
  final $Res Function(MovieFavoriteEvent) _then;
}

/// @nodoc
abstract class $LoadFavoriteMovieCopyWith<$Res> {
  factory $LoadFavoriteMovieCopyWith(
          LoadFavoriteMovie value, $Res Function(LoadFavoriteMovie) then) =
      _$LoadFavoriteMovieCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadFavoriteMovieCopyWithImpl<$Res>
    extends _$MovieFavoriteEventCopyWithImpl<$Res>
    implements $LoadFavoriteMovieCopyWith<$Res> {
  _$LoadFavoriteMovieCopyWithImpl(
      LoadFavoriteMovie _value, $Res Function(LoadFavoriteMovie) _then)
      : super(_value, (v) => _then(v as LoadFavoriteMovie));

  @override
  LoadFavoriteMovie get _value => super._value as LoadFavoriteMovie;
}

/// @nodoc
class _$LoadFavoriteMovie implements LoadFavoriteMovie {
  const _$LoadFavoriteMovie();

  @override
  String toString() {
    return 'MovieFavoriteEvent.loadFavoriteMovie()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadFavoriteMovie);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadFavoriteMovie(),
  }) {
    assert(loadFavoriteMovie != null);
    return loadFavoriteMovie();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadFavoriteMovie(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFavoriteMovie != null) {
      return loadFavoriteMovie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadFavoriteMovie(LoadFavoriteMovie value),
  }) {
    assert(loadFavoriteMovie != null);
    return loadFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadFavoriteMovie(LoadFavoriteMovie value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFavoriteMovie != null) {
      return loadFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class LoadFavoriteMovie implements MovieFavoriteEvent {
  const factory LoadFavoriteMovie() = _$LoadFavoriteMovie;
}

/// @nodoc
class _$MovieFavoriteStateTearOff {
  const _$MovieFavoriteStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  ShowFavoriteMovie showFavoriteMovie(List<MovieFavorite> movies) {
    return ShowFavoriteMovie(
      movies,
    );
  }

// ignore: unused_element
  EmptyFavorite emptyFavorite(String message) {
    return EmptyFavorite(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieFavoriteState = _$MovieFavoriteStateTearOff();

/// @nodoc
mixin _$MovieFavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showFavoriteMovie(List<MovieFavorite> movies),
    @required TResult emptyFavorite(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showFavoriteMovie(List<MovieFavorite> movies),
    TResult emptyFavorite(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showFavoriteMovie(ShowFavoriteMovie value),
    @required TResult emptyFavorite(EmptyFavorite value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showFavoriteMovie(ShowFavoriteMovie value),
    TResult emptyFavorite(EmptyFavorite value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MovieFavoriteStateCopyWith<$Res> {
  factory $MovieFavoriteStateCopyWith(
          MovieFavoriteState value, $Res Function(MovieFavoriteState) then) =
      _$MovieFavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieFavoriteStateCopyWithImpl<$Res>
    implements $MovieFavoriteStateCopyWith<$Res> {
  _$MovieFavoriteStateCopyWithImpl(this._value, this._then);

  final MovieFavoriteState _value;
  // ignore: unused_field
  final $Res Function(MovieFavoriteState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$MovieFavoriteStateCopyWithImpl<$Res>
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
    return 'MovieFavoriteState.initial()';
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
    @required TResult showFavoriteMovie(List<MovieFavorite> movies),
    @required TResult emptyFavorite(String message),
  }) {
    assert(initial != null);
    assert(showFavoriteMovie != null);
    assert(emptyFavorite != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showFavoriteMovie(List<MovieFavorite> movies),
    TResult emptyFavorite(String message),
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
    @required TResult showFavoriteMovie(ShowFavoriteMovie value),
    @required TResult emptyFavorite(EmptyFavorite value),
  }) {
    assert(initial != null);
    assert(showFavoriteMovie != null);
    assert(emptyFavorite != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showFavoriteMovie(ShowFavoriteMovie value),
    TResult emptyFavorite(EmptyFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MovieFavoriteState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ShowFavoriteMovieCopyWith<$Res> {
  factory $ShowFavoriteMovieCopyWith(
          ShowFavoriteMovie value, $Res Function(ShowFavoriteMovie) then) =
      _$ShowFavoriteMovieCopyWithImpl<$Res>;
  $Res call({List<MovieFavorite> movies});
}

/// @nodoc
class _$ShowFavoriteMovieCopyWithImpl<$Res>
    extends _$MovieFavoriteStateCopyWithImpl<$Res>
    implements $ShowFavoriteMovieCopyWith<$Res> {
  _$ShowFavoriteMovieCopyWithImpl(
      ShowFavoriteMovie _value, $Res Function(ShowFavoriteMovie) _then)
      : super(_value, (v) => _then(v as ShowFavoriteMovie));

  @override
  ShowFavoriteMovie get _value => super._value as ShowFavoriteMovie;

  @override
  $Res call({
    Object movies = freezed,
  }) {
    return _then(ShowFavoriteMovie(
      movies == freezed ? _value.movies : movies as List<MovieFavorite>,
    ));
  }
}

/// @nodoc
class _$ShowFavoriteMovie implements ShowFavoriteMovie {
  const _$ShowFavoriteMovie(this.movies) : assert(movies != null);

  @override
  final List<MovieFavorite> movies;

  @override
  String toString() {
    return 'MovieFavoriteState.showFavoriteMovie(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowFavoriteMovie &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @JsonKey(ignore: true)
  @override
  $ShowFavoriteMovieCopyWith<ShowFavoriteMovie> get copyWith =>
      _$ShowFavoriteMovieCopyWithImpl<ShowFavoriteMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showFavoriteMovie(List<MovieFavorite> movies),
    @required TResult emptyFavorite(String message),
  }) {
    assert(initial != null);
    assert(showFavoriteMovie != null);
    assert(emptyFavorite != null);
    return showFavoriteMovie(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showFavoriteMovie(List<MovieFavorite> movies),
    TResult emptyFavorite(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFavoriteMovie != null) {
      return showFavoriteMovie(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showFavoriteMovie(ShowFavoriteMovie value),
    @required TResult emptyFavorite(EmptyFavorite value),
  }) {
    assert(initial != null);
    assert(showFavoriteMovie != null);
    assert(emptyFavorite != null);
    return showFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showFavoriteMovie(ShowFavoriteMovie value),
    TResult emptyFavorite(EmptyFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFavoriteMovie != null) {
      return showFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class ShowFavoriteMovie implements MovieFavoriteState {
  const factory ShowFavoriteMovie(List<MovieFavorite> movies) =
      _$ShowFavoriteMovie;

  List<MovieFavorite> get movies;
  @JsonKey(ignore: true)
  $ShowFavoriteMovieCopyWith<ShowFavoriteMovie> get copyWith;
}

/// @nodoc
abstract class $EmptyFavoriteCopyWith<$Res> {
  factory $EmptyFavoriteCopyWith(
          EmptyFavorite value, $Res Function(EmptyFavorite) then) =
      _$EmptyFavoriteCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$EmptyFavoriteCopyWithImpl<$Res>
    extends _$MovieFavoriteStateCopyWithImpl<$Res>
    implements $EmptyFavoriteCopyWith<$Res> {
  _$EmptyFavoriteCopyWithImpl(
      EmptyFavorite _value, $Res Function(EmptyFavorite) _then)
      : super(_value, (v) => _then(v as EmptyFavorite));

  @override
  EmptyFavorite get _value => super._value as EmptyFavorite;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(EmptyFavorite(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$EmptyFavorite implements EmptyFavorite {
  const _$EmptyFavorite(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieFavoriteState.emptyFavorite(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyFavorite &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $EmptyFavoriteCopyWith<EmptyFavorite> get copyWith =>
      _$EmptyFavoriteCopyWithImpl<EmptyFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showFavoriteMovie(List<MovieFavorite> movies),
    @required TResult emptyFavorite(String message),
  }) {
    assert(initial != null);
    assert(showFavoriteMovie != null);
    assert(emptyFavorite != null);
    return emptyFavorite(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showFavoriteMovie(List<MovieFavorite> movies),
    TResult emptyFavorite(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyFavorite != null) {
      return emptyFavorite(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showFavoriteMovie(ShowFavoriteMovie value),
    @required TResult emptyFavorite(EmptyFavorite value),
  }) {
    assert(initial != null);
    assert(showFavoriteMovie != null);
    assert(emptyFavorite != null);
    return emptyFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showFavoriteMovie(ShowFavoriteMovie value),
    TResult emptyFavorite(EmptyFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyFavorite != null) {
      return emptyFavorite(this);
    }
    return orElse();
  }
}

abstract class EmptyFavorite implements MovieFavoriteState {
  const factory EmptyFavorite(String message) = _$EmptyFavorite;

  String get message;
  @JsonKey(ignore: true)
  $EmptyFavoriteCopyWith<EmptyFavorite> get copyWith;
}
