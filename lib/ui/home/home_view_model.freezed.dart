// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewState {
  Object? get error => throw _privateConstructorUsedError;

  bool get loadingUserDetails => throw _privateConstructorUsedError;

  UserDetails? get userDetails => throw _privateConstructorUsedError;

  bool get isLogoutInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;

  @useResult
  $Res call(
      {Object? error,
      bool loadingUserDetails,
      UserDetails? userDetails,
      bool isLogoutInProgress});

  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? loadingUserDetails = null,
    Object? userDetails = freezed,
    Object? isLogoutInProgress = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error ? _value.error : error,
      loadingUserDetails: null == loadingUserDetails
          ? _value.loadingUserDetails
          : loadingUserDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      isLogoutInProgress: null == isLogoutInProgress
          ? _value.isLogoutInProgress
          : isLogoutInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsCopyWith<$Res>? get userDetails {
    if (_value.userDetails == null) {
      return null;
    }

    return $UserDetailsCopyWith<$Res>(_value.userDetails!, (value) {
      return _then(_value.copyWith(userDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeViewStateImplCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$$HomeViewStateImplCopyWith(
          _$HomeViewStateImpl value, $Res Function(_$HomeViewStateImpl) then) =
      __$$HomeViewStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {Object? error,
      bool loadingUserDetails,
      UserDetails? userDetails,
      bool isLogoutInProgress});

  @override
  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class __$$HomeViewStateImplCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$HomeViewStateImpl>
    implements _$$HomeViewStateImplCopyWith<$Res> {
  __$$HomeViewStateImplCopyWithImpl(
      _$HomeViewStateImpl _value, $Res Function(_$HomeViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? loadingUserDetails = null,
    Object? userDetails = freezed,
    Object? isLogoutInProgress = null,
  }) {
    return _then(_$HomeViewStateImpl(
      error: freezed == error ? _value.error : error,
      loadingUserDetails: null == loadingUserDetails
          ? _value.loadingUserDetails
          : loadingUserDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      isLogoutInProgress: null == isLogoutInProgress
          ? _value.isLogoutInProgress
          : isLogoutInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeViewStateImpl implements _HomeViewState {
  const _$HomeViewStateImpl(
      {this.error,
      this.loadingUserDetails = true,
      this.userDetails = null,
      this.isLogoutInProgress = false});

  @override
  final Object? error;
  @override
  @JsonKey()
  final bool loadingUserDetails;
  @override
  @JsonKey()
  final UserDetails? userDetails;
  @override
  @JsonKey()
  final bool isLogoutInProgress;

  @override
  String toString() {
    return 'HomeViewState(error: $error, loadingUserDetails: $loadingUserDetails, userDetails: $userDetails, isLogoutInProgress: $isLogoutInProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.loadingUserDetails, loadingUserDetails) ||
                other.loadingUserDetails == loadingUserDetails) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.isLogoutInProgress, isLogoutInProgress) ||
                other.isLogoutInProgress == isLogoutInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      loadingUserDetails,
      userDetails,
      isLogoutInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      __$$HomeViewStateImplCopyWithImpl<_$HomeViewStateImpl>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  const factory _HomeViewState(
      {final Object? error,
      final bool loadingUserDetails,
      final UserDetails? userDetails,
      final bool isLogoutInProgress}) = _$HomeViewStateImpl;

  @override
  Object? get error;

  @override
  bool get loadingUserDetails;

  @override
  UserDetails? get userDetails;

  @override
  bool get isLogoutInProgress;

  @override
  @JsonKey(ignore: true)
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
