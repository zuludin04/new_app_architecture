// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieDetailEventTearOff {
  const _$MovieDetailEventTearOff();

// ignore: unused_element
  LoadDetailMovie loadDetailMovie(int movieId) {
    return LoadDetailMovie(
      movieId,
    );
  }

// ignore: unused_element
  AddFavoriteMovie addFavoriteMovie() {
    return const AddFavoriteMovie();
  }

// ignore: unused_element
  RemoveFavoriteMovie removeFavoriteMovie(int movieId) {
    return RemoveFavoriteMovie(
      movieId,
    );
  }

// ignore: unused_element
  CheckIfMovieFavorite checkIfMovieFavorite(int movieId) {
    return CheckIfMovieFavorite(
      movieId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieDetailEvent = _$MovieDetailEventTearOff();

/// @nodoc
mixin _$MovieDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadDetailMovie(int movieId),
    @required TResult addFavoriteMovie(),
    @required TResult removeFavoriteMovie(int movieId),
    @required TResult checkIfMovieFavorite(int movieId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadDetailMovie(int movieId),
    TResult addFavoriteMovie(),
    TResult removeFavoriteMovie(int movieId),
    TResult checkIfMovieFavorite(int movieId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadDetailMovie(LoadDetailMovie value),
    @required TResult addFavoriteMovie(AddFavoriteMovie value),
    @required TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    @required TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadDetailMovie(LoadDetailMovie value),
    TResult addFavoriteMovie(AddFavoriteMovie value),
    TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MovieDetailEventCopyWith<$Res> {
  factory $MovieDetailEventCopyWith(
          MovieDetailEvent value, $Res Function(MovieDetailEvent) then) =
      _$MovieDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailEventCopyWithImpl<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  _$MovieDetailEventCopyWithImpl(this._value, this._then);

  final MovieDetailEvent _value;
  // ignore: unused_field
  final $Res Function(MovieDetailEvent) _then;
}

/// @nodoc
abstract class $LoadDetailMovieCopyWith<$Res> {
  factory $LoadDetailMovieCopyWith(
          LoadDetailMovie value, $Res Function(LoadDetailMovie) then) =
      _$LoadDetailMovieCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class _$LoadDetailMovieCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res>
    implements $LoadDetailMovieCopyWith<$Res> {
  _$LoadDetailMovieCopyWithImpl(
      LoadDetailMovie _value, $Res Function(LoadDetailMovie) _then)
      : super(_value, (v) => _then(v as LoadDetailMovie));

  @override
  LoadDetailMovie get _value => super._value as LoadDetailMovie;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(LoadDetailMovie(
      movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
class _$LoadDetailMovie implements LoadDetailMovie {
  const _$LoadDetailMovie(this.movieId) : assert(movieId != null);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailEvent.loadDetailMovie(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadDetailMovie &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @JsonKey(ignore: true)
  @override
  $LoadDetailMovieCopyWith<LoadDetailMovie> get copyWith =>
      _$LoadDetailMovieCopyWithImpl<LoadDetailMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadDetailMovie(int movieId),
    @required TResult addFavoriteMovie(),
    @required TResult removeFavoriteMovie(int movieId),
    @required TResult checkIfMovieFavorite(int movieId),
  }) {
    assert(loadDetailMovie != null);
    assert(addFavoriteMovie != null);
    assert(removeFavoriteMovie != null);
    assert(checkIfMovieFavorite != null);
    return loadDetailMovie(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadDetailMovie(int movieId),
    TResult addFavoriteMovie(),
    TResult removeFavoriteMovie(int movieId),
    TResult checkIfMovieFavorite(int movieId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadDetailMovie != null) {
      return loadDetailMovie(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadDetailMovie(LoadDetailMovie value),
    @required TResult addFavoriteMovie(AddFavoriteMovie value),
    @required TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    @required TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
  }) {
    assert(loadDetailMovie != null);
    assert(addFavoriteMovie != null);
    assert(removeFavoriteMovie != null);
    assert(checkIfMovieFavorite != null);
    return loadDetailMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadDetailMovie(LoadDetailMovie value),
    TResult addFavoriteMovie(AddFavoriteMovie value),
    TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadDetailMovie != null) {
      return loadDetailMovie(this);
    }
    return orElse();
  }
}

abstract class LoadDetailMovie implements MovieDetailEvent {
  const factory LoadDetailMovie(int movieId) = _$LoadDetailMovie;

  int get movieId;
  @JsonKey(ignore: true)
  $LoadDetailMovieCopyWith<LoadDetailMovie> get copyWith;
}

/// @nodoc
abstract class $AddFavoriteMovieCopyWith<$Res> {
  factory $AddFavoriteMovieCopyWith(
          AddFavoriteMovie value, $Res Function(AddFavoriteMovie) then) =
      _$AddFavoriteMovieCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddFavoriteMovieCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res>
    implements $AddFavoriteMovieCopyWith<$Res> {
  _$AddFavoriteMovieCopyWithImpl(
      AddFavoriteMovie _value, $Res Function(AddFavoriteMovie) _then)
      : super(_value, (v) => _then(v as AddFavoriteMovie));

  @override
  AddFavoriteMovie get _value => super._value as AddFavoriteMovie;
}

/// @nodoc
class _$AddFavoriteMovie implements AddFavoriteMovie {
  const _$AddFavoriteMovie();

  @override
  String toString() {
    return 'MovieDetailEvent.addFavoriteMovie()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddFavoriteMovie);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadDetailMovie(int movieId),
    @required TResult addFavoriteMovie(),
    @required TResult removeFavoriteMovie(int movieId),
    @required TResult checkIfMovieFavorite(int movieId),
  }) {
    assert(loadDetailMovie != null);
    assert(addFavoriteMovie != null);
    assert(removeFavoriteMovie != null);
    assert(checkIfMovieFavorite != null);
    return addFavoriteMovie();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadDetailMovie(int movieId),
    TResult addFavoriteMovie(),
    TResult removeFavoriteMovie(int movieId),
    TResult checkIfMovieFavorite(int movieId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFavoriteMovie != null) {
      return addFavoriteMovie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadDetailMovie(LoadDetailMovie value),
    @required TResult addFavoriteMovie(AddFavoriteMovie value),
    @required TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    @required TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
  }) {
    assert(loadDetailMovie != null);
    assert(addFavoriteMovie != null);
    assert(removeFavoriteMovie != null);
    assert(checkIfMovieFavorite != null);
    return addFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadDetailMovie(LoadDetailMovie value),
    TResult addFavoriteMovie(AddFavoriteMovie value),
    TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFavoriteMovie != null) {
      return addFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class AddFavoriteMovie implements MovieDetailEvent {
  const factory AddFavoriteMovie() = _$AddFavoriteMovie;
}

/// @nodoc
abstract class $RemoveFavoriteMovieCopyWith<$Res> {
  factory $RemoveFavoriteMovieCopyWith(
          RemoveFavoriteMovie value, $Res Function(RemoveFavoriteMovie) then) =
      _$RemoveFavoriteMovieCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class _$RemoveFavoriteMovieCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res>
    implements $RemoveFavoriteMovieCopyWith<$Res> {
  _$RemoveFavoriteMovieCopyWithImpl(
      RemoveFavoriteMovie _value, $Res Function(RemoveFavoriteMovie) _then)
      : super(_value, (v) => _then(v as RemoveFavoriteMovie));

  @override
  RemoveFavoriteMovie get _value => super._value as RemoveFavoriteMovie;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(RemoveFavoriteMovie(
      movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
class _$RemoveFavoriteMovie implements RemoveFavoriteMovie {
  const _$RemoveFavoriteMovie(this.movieId) : assert(movieId != null);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailEvent.removeFavoriteMovie(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFavoriteMovie &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @JsonKey(ignore: true)
  @override
  $RemoveFavoriteMovieCopyWith<RemoveFavoriteMovie> get copyWith =>
      _$RemoveFavoriteMovieCopyWithImpl<RemoveFavoriteMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadDetailMovie(int movieId),
    @required TResult addFavoriteMovie(),
    @required TResult removeFavoriteMovie(int movieId),
    @required TResult checkIfMovieFavorite(int movieId),
  }) {
    assert(loadDetailMovie != null);
    assert(addFavoriteMovie != null);
    assert(removeFavoriteMovie != null);
    assert(checkIfMovieFavorite != null);
    return removeFavoriteMovie(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadDetailMovie(int movieId),
    TResult addFavoriteMovie(),
    TResult removeFavoriteMovie(int movieId),
    TResult checkIfMovieFavorite(int movieId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFavoriteMovie != null) {
      return removeFavoriteMovie(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadDetailMovie(LoadDetailMovie value),
    @required TResult addFavoriteMovie(AddFavoriteMovie value),
    @required TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    @required TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
  }) {
    assert(loadDetailMovie != null);
    assert(addFavoriteMovie != null);
    assert(removeFavoriteMovie != null);
    assert(checkIfMovieFavorite != null);
    return removeFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadDetailMovie(LoadDetailMovie value),
    TResult addFavoriteMovie(AddFavoriteMovie value),
    TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFavoriteMovie != null) {
      return removeFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class RemoveFavoriteMovie implements MovieDetailEvent {
  const factory RemoveFavoriteMovie(int movieId) = _$RemoveFavoriteMovie;

  int get movieId;
  @JsonKey(ignore: true)
  $RemoveFavoriteMovieCopyWith<RemoveFavoriteMovie> get copyWith;
}

/// @nodoc
abstract class $CheckIfMovieFavoriteCopyWith<$Res> {
  factory $CheckIfMovieFavoriteCopyWith(CheckIfMovieFavorite value,
          $Res Function(CheckIfMovieFavorite) then) =
      _$CheckIfMovieFavoriteCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class _$CheckIfMovieFavoriteCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res>
    implements $CheckIfMovieFavoriteCopyWith<$Res> {
  _$CheckIfMovieFavoriteCopyWithImpl(
      CheckIfMovieFavorite _value, $Res Function(CheckIfMovieFavorite) _then)
      : super(_value, (v) => _then(v as CheckIfMovieFavorite));

  @override
  CheckIfMovieFavorite get _value => super._value as CheckIfMovieFavorite;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(CheckIfMovieFavorite(
      movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
class _$CheckIfMovieFavorite implements CheckIfMovieFavorite {
  const _$CheckIfMovieFavorite(this.movieId) : assert(movieId != null);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailEvent.checkIfMovieFavorite(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckIfMovieFavorite &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @JsonKey(ignore: true)
  @override
  $CheckIfMovieFavoriteCopyWith<CheckIfMovieFavorite> get copyWith =>
      _$CheckIfMovieFavoriteCopyWithImpl<CheckIfMovieFavorite>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadDetailMovie(int movieId),
    @required TResult addFavoriteMovie(),
    @required TResult removeFavoriteMovie(int movieId),
    @required TResult checkIfMovieFavorite(int movieId),
  }) {
    assert(loadDetailMovie != null);
    assert(addFavoriteMovie != null);
    assert(removeFavoriteMovie != null);
    assert(checkIfMovieFavorite != null);
    return checkIfMovieFavorite(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadDetailMovie(int movieId),
    TResult addFavoriteMovie(),
    TResult removeFavoriteMovie(int movieId),
    TResult checkIfMovieFavorite(int movieId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkIfMovieFavorite != null) {
      return checkIfMovieFavorite(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadDetailMovie(LoadDetailMovie value),
    @required TResult addFavoriteMovie(AddFavoriteMovie value),
    @required TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    @required TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
  }) {
    assert(loadDetailMovie != null);
    assert(addFavoriteMovie != null);
    assert(removeFavoriteMovie != null);
    assert(checkIfMovieFavorite != null);
    return checkIfMovieFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadDetailMovie(LoadDetailMovie value),
    TResult addFavoriteMovie(AddFavoriteMovie value),
    TResult removeFavoriteMovie(RemoveFavoriteMovie value),
    TResult checkIfMovieFavorite(CheckIfMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkIfMovieFavorite != null) {
      return checkIfMovieFavorite(this);
    }
    return orElse();
  }
}

abstract class CheckIfMovieFavorite implements MovieDetailEvent {
  const factory CheckIfMovieFavorite(int movieId) = _$CheckIfMovieFavorite;

  int get movieId;
  @JsonKey(ignore: true)
  $CheckIfMovieFavoriteCopyWith<CheckIfMovieFavorite> get copyWith;
}

/// @nodoc
class _$MovieDetailStateTearOff {
  const _$MovieDetailStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  ShowDetailMovie showDetailMovie(DetailMovieResponse detailMovie) {
    return ShowDetailMovie(
      detailMovie,
    );
  }

// ignore: unused_element
  UpdateStatus updateStatus(String message) {
    return UpdateStatus(
      message,
    );
  }

// ignore: unused_element
  ErrorMovieDetail errorMovieDetail() {
    return const ErrorMovieDetail();
  }

// ignore: unused_element
  IsMovieFavorite isMovieFavorite(bool favorite) {
    return IsMovieFavorite(
      favorite,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieDetailState = _$MovieDetailStateTearOff();

/// @nodoc
mixin _$MovieDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showDetailMovie(DetailMovieResponse detailMovie),
    @required TResult updateStatus(String message),
    @required TResult errorMovieDetail(),
    @required TResult isMovieFavorite(bool favorite),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showDetailMovie(DetailMovieResponse detailMovie),
    TResult updateStatus(String message),
    TResult errorMovieDetail(),
    TResult isMovieFavorite(bool favorite),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showDetailMovie(ShowDetailMovie value),
    @required TResult updateStatus(UpdateStatus value),
    @required TResult errorMovieDetail(ErrorMovieDetail value),
    @required TResult isMovieFavorite(IsMovieFavorite value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showDetailMovie(ShowDetailMovie value),
    TResult updateStatus(UpdateStatus value),
    TResult errorMovieDetail(ErrorMovieDetail value),
    TResult isMovieFavorite(IsMovieFavorite value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  final MovieDetailState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$MovieDetailStateCopyWithImpl<$Res>
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
    return 'MovieDetailState.initial()';
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
    @required TResult showDetailMovie(DetailMovieResponse detailMovie),
    @required TResult updateStatus(String message),
    @required TResult errorMovieDetail(),
    @required TResult isMovieFavorite(bool favorite),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showDetailMovie(DetailMovieResponse detailMovie),
    TResult updateStatus(String message),
    TResult errorMovieDetail(),
    TResult isMovieFavorite(bool favorite),
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
    @required TResult showDetailMovie(ShowDetailMovie value),
    @required TResult updateStatus(UpdateStatus value),
    @required TResult errorMovieDetail(ErrorMovieDetail value),
    @required TResult isMovieFavorite(IsMovieFavorite value),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showDetailMovie(ShowDetailMovie value),
    TResult updateStatus(UpdateStatus value),
    TResult errorMovieDetail(ErrorMovieDetail value),
    TResult isMovieFavorite(IsMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MovieDetailState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ShowDetailMovieCopyWith<$Res> {
  factory $ShowDetailMovieCopyWith(
          ShowDetailMovie value, $Res Function(ShowDetailMovie) then) =
      _$ShowDetailMovieCopyWithImpl<$Res>;
  $Res call({DetailMovieResponse detailMovie});
}

/// @nodoc
class _$ShowDetailMovieCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res>
    implements $ShowDetailMovieCopyWith<$Res> {
  _$ShowDetailMovieCopyWithImpl(
      ShowDetailMovie _value, $Res Function(ShowDetailMovie) _then)
      : super(_value, (v) => _then(v as ShowDetailMovie));

  @override
  ShowDetailMovie get _value => super._value as ShowDetailMovie;

  @override
  $Res call({
    Object detailMovie = freezed,
  }) {
    return _then(ShowDetailMovie(
      detailMovie == freezed
          ? _value.detailMovie
          : detailMovie as DetailMovieResponse,
    ));
  }
}

/// @nodoc
class _$ShowDetailMovie implements ShowDetailMovie {
  const _$ShowDetailMovie(this.detailMovie) : assert(detailMovie != null);

  @override
  final DetailMovieResponse detailMovie;

  @override
  String toString() {
    return 'MovieDetailState.showDetailMovie(detailMovie: $detailMovie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowDetailMovie &&
            (identical(other.detailMovie, detailMovie) ||
                const DeepCollectionEquality()
                    .equals(other.detailMovie, detailMovie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(detailMovie);

  @JsonKey(ignore: true)
  @override
  $ShowDetailMovieCopyWith<ShowDetailMovie> get copyWith =>
      _$ShowDetailMovieCopyWithImpl<ShowDetailMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showDetailMovie(DetailMovieResponse detailMovie),
    @required TResult updateStatus(String message),
    @required TResult errorMovieDetail(),
    @required TResult isMovieFavorite(bool favorite),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return showDetailMovie(detailMovie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showDetailMovie(DetailMovieResponse detailMovie),
    TResult updateStatus(String message),
    TResult errorMovieDetail(),
    TResult isMovieFavorite(bool favorite),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showDetailMovie != null) {
      return showDetailMovie(detailMovie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showDetailMovie(ShowDetailMovie value),
    @required TResult updateStatus(UpdateStatus value),
    @required TResult errorMovieDetail(ErrorMovieDetail value),
    @required TResult isMovieFavorite(IsMovieFavorite value),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return showDetailMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showDetailMovie(ShowDetailMovie value),
    TResult updateStatus(UpdateStatus value),
    TResult errorMovieDetail(ErrorMovieDetail value),
    TResult isMovieFavorite(IsMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showDetailMovie != null) {
      return showDetailMovie(this);
    }
    return orElse();
  }
}

abstract class ShowDetailMovie implements MovieDetailState {
  const factory ShowDetailMovie(DetailMovieResponse detailMovie) =
      _$ShowDetailMovie;

  DetailMovieResponse get detailMovie;
  @JsonKey(ignore: true)
  $ShowDetailMovieCopyWith<ShowDetailMovie> get copyWith;
}

/// @nodoc
abstract class $UpdateStatusCopyWith<$Res> {
  factory $UpdateStatusCopyWith(
          UpdateStatus value, $Res Function(UpdateStatus) then) =
      _$UpdateStatusCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$UpdateStatusCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res>
    implements $UpdateStatusCopyWith<$Res> {
  _$UpdateStatusCopyWithImpl(
      UpdateStatus _value, $Res Function(UpdateStatus) _then)
      : super(_value, (v) => _then(v as UpdateStatus));

  @override
  UpdateStatus get _value => super._value as UpdateStatus;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UpdateStatus(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$UpdateStatus implements UpdateStatus {
  const _$UpdateStatus(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieDetailState.updateStatus(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateStatus &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $UpdateStatusCopyWith<UpdateStatus> get copyWith =>
      _$UpdateStatusCopyWithImpl<UpdateStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showDetailMovie(DetailMovieResponse detailMovie),
    @required TResult updateStatus(String message),
    @required TResult errorMovieDetail(),
    @required TResult isMovieFavorite(bool favorite),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return updateStatus(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showDetailMovie(DetailMovieResponse detailMovie),
    TResult updateStatus(String message),
    TResult errorMovieDetail(),
    TResult isMovieFavorite(bool favorite),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateStatus != null) {
      return updateStatus(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showDetailMovie(ShowDetailMovie value),
    @required TResult updateStatus(UpdateStatus value),
    @required TResult errorMovieDetail(ErrorMovieDetail value),
    @required TResult isMovieFavorite(IsMovieFavorite value),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showDetailMovie(ShowDetailMovie value),
    TResult updateStatus(UpdateStatus value),
    TResult errorMovieDetail(ErrorMovieDetail value),
    TResult isMovieFavorite(IsMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateStatus implements MovieDetailState {
  const factory UpdateStatus(String message) = _$UpdateStatus;

  String get message;
  @JsonKey(ignore: true)
  $UpdateStatusCopyWith<UpdateStatus> get copyWith;
}

/// @nodoc
abstract class $ErrorMovieDetailCopyWith<$Res> {
  factory $ErrorMovieDetailCopyWith(
          ErrorMovieDetail value, $Res Function(ErrorMovieDetail) then) =
      _$ErrorMovieDetailCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorMovieDetailCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res>
    implements $ErrorMovieDetailCopyWith<$Res> {
  _$ErrorMovieDetailCopyWithImpl(
      ErrorMovieDetail _value, $Res Function(ErrorMovieDetail) _then)
      : super(_value, (v) => _then(v as ErrorMovieDetail));

  @override
  ErrorMovieDetail get _value => super._value as ErrorMovieDetail;
}

/// @nodoc
class _$ErrorMovieDetail implements ErrorMovieDetail {
  const _$ErrorMovieDetail();

  @override
  String toString() {
    return 'MovieDetailState.errorMovieDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorMovieDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showDetailMovie(DetailMovieResponse detailMovie),
    @required TResult updateStatus(String message),
    @required TResult errorMovieDetail(),
    @required TResult isMovieFavorite(bool favorite),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return errorMovieDetail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showDetailMovie(DetailMovieResponse detailMovie),
    TResult updateStatus(String message),
    TResult errorMovieDetail(),
    TResult isMovieFavorite(bool favorite),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (errorMovieDetail != null) {
      return errorMovieDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showDetailMovie(ShowDetailMovie value),
    @required TResult updateStatus(UpdateStatus value),
    @required TResult errorMovieDetail(ErrorMovieDetail value),
    @required TResult isMovieFavorite(IsMovieFavorite value),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return errorMovieDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showDetailMovie(ShowDetailMovie value),
    TResult updateStatus(UpdateStatus value),
    TResult errorMovieDetail(ErrorMovieDetail value),
    TResult isMovieFavorite(IsMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (errorMovieDetail != null) {
      return errorMovieDetail(this);
    }
    return orElse();
  }
}

abstract class ErrorMovieDetail implements MovieDetailState {
  const factory ErrorMovieDetail() = _$ErrorMovieDetail;
}

/// @nodoc
abstract class $IsMovieFavoriteCopyWith<$Res> {
  factory $IsMovieFavoriteCopyWith(
          IsMovieFavorite value, $Res Function(IsMovieFavorite) then) =
      _$IsMovieFavoriteCopyWithImpl<$Res>;
  $Res call({bool favorite});
}

/// @nodoc
class _$IsMovieFavoriteCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res>
    implements $IsMovieFavoriteCopyWith<$Res> {
  _$IsMovieFavoriteCopyWithImpl(
      IsMovieFavorite _value, $Res Function(IsMovieFavorite) _then)
      : super(_value, (v) => _then(v as IsMovieFavorite));

  @override
  IsMovieFavorite get _value => super._value as IsMovieFavorite;

  @override
  $Res call({
    Object favorite = freezed,
  }) {
    return _then(IsMovieFavorite(
      favorite == freezed ? _value.favorite : favorite as bool,
    ));
  }
}

/// @nodoc
class _$IsMovieFavorite implements IsMovieFavorite {
  const _$IsMovieFavorite(this.favorite) : assert(favorite != null);

  @override
  final bool favorite;

  @override
  String toString() {
    return 'MovieDetailState.isMovieFavorite(favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsMovieFavorite &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favorite);

  @JsonKey(ignore: true)
  @override
  $IsMovieFavoriteCopyWith<IsMovieFavorite> get copyWith =>
      _$IsMovieFavoriteCopyWithImpl<IsMovieFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showDetailMovie(DetailMovieResponse detailMovie),
    @required TResult updateStatus(String message),
    @required TResult errorMovieDetail(),
    @required TResult isMovieFavorite(bool favorite),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return isMovieFavorite(favorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showDetailMovie(DetailMovieResponse detailMovie),
    TResult updateStatus(String message),
    TResult errorMovieDetail(),
    TResult isMovieFavorite(bool favorite),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isMovieFavorite != null) {
      return isMovieFavorite(favorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult showDetailMovie(ShowDetailMovie value),
    @required TResult updateStatus(UpdateStatus value),
    @required TResult errorMovieDetail(ErrorMovieDetail value),
    @required TResult isMovieFavorite(IsMovieFavorite value),
  }) {
    assert(initial != null);
    assert(showDetailMovie != null);
    assert(updateStatus != null);
    assert(errorMovieDetail != null);
    assert(isMovieFavorite != null);
    return isMovieFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult showDetailMovie(ShowDetailMovie value),
    TResult updateStatus(UpdateStatus value),
    TResult errorMovieDetail(ErrorMovieDetail value),
    TResult isMovieFavorite(IsMovieFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isMovieFavorite != null) {
      return isMovieFavorite(this);
    }
    return orElse();
  }
}

abstract class IsMovieFavorite implements MovieDetailState {
  const factory IsMovieFavorite(bool favorite) = _$IsMovieFavorite;

  bool get favorite;
  @JsonKey(ignore: true)
  $IsMovieFavoriteCopyWith<IsMovieFavorite> get copyWith;
}
