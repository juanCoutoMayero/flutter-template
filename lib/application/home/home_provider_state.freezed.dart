// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeProviderStateTearOff {
  const _$HomeProviderStateTearOff();

  _LoadHome loadHome({List<Photo> photos = const []}) {
    return _LoadHome(
      photos: photos,
    );
  }
}

/// @nodoc
const $HomeProviderState = _$HomeProviderStateTearOff();

/// @nodoc
mixin _$HomeProviderState {
  List<Photo> get photos => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Photo> photos) loadHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Photo> photos)? loadHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHome value) loadHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHome value)? loadHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeProviderStateCopyWith<HomeProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeProviderStateCopyWith<$Res> {
  factory $HomeProviderStateCopyWith(
          HomeProviderState value, $Res Function(HomeProviderState) then) =
      _$HomeProviderStateCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$HomeProviderStateCopyWithImpl<$Res>
    implements $HomeProviderStateCopyWith<$Res> {
  _$HomeProviderStateCopyWithImpl(this._value, this._then);

  final HomeProviderState _value;
  // ignore: unused_field
  final $Res Function(HomeProviderState) _then;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
abstract class _$LoadHomeCopyWith<$Res>
    implements $HomeProviderStateCopyWith<$Res> {
  factory _$LoadHomeCopyWith(_LoadHome value, $Res Function(_LoadHome) then) =
      __$LoadHomeCopyWithImpl<$Res>;
  @override
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$LoadHomeCopyWithImpl<$Res>
    extends _$HomeProviderStateCopyWithImpl<$Res>
    implements _$LoadHomeCopyWith<$Res> {
  __$LoadHomeCopyWithImpl(_LoadHome _value, $Res Function(_LoadHome) _then)
      : super(_value, (v) => _then(v as _LoadHome));

  @override
  _LoadHome get _value => super._value as _LoadHome;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(_LoadHome(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
class _$_LoadHome implements _LoadHome {
  const _$_LoadHome({this.photos = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'HomeProviderState.loadHome(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadHome &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  _$LoadHomeCopyWith<_LoadHome> get copyWith =>
      __$LoadHomeCopyWithImpl<_LoadHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Photo> photos) loadHome,
  }) {
    return loadHome(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Photo> photos)? loadHome,
    required TResult orElse(),
  }) {
    if (loadHome != null) {
      return loadHome(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHome value) loadHome,
  }) {
    return loadHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHome value)? loadHome,
    required TResult orElse(),
  }) {
    if (loadHome != null) {
      return loadHome(this);
    }
    return orElse();
  }
}

abstract class _LoadHome implements HomeProviderState {
  const factory _LoadHome({List<Photo> photos}) = _$_LoadHome;

  @override
  List<Photo> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadHomeCopyWith<_LoadHome> get copyWith =>
      throw _privateConstructorUsedError;
}
