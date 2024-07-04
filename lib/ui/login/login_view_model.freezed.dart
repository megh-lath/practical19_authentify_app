// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginViewState {
  Object? get error => throw _privateConstructorUsedError;
  bool get isLoginInProgress => throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  UserDetails? get userDetails => throw _privateConstructorUsedError;
  bool get allowLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginViewStateCopyWith<LoginViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginViewStateCopyWith<$Res> {
  factory $LoginViewStateCopyWith(
          LoginViewState value, $Res Function(LoginViewState) then) =
      _$LoginViewStateCopyWithImpl<$Res, LoginViewState>;
  @useResult
  $Res call(
      {Object? error,
      bool isLoginInProgress,
      TextEditingController emailController,
      TextEditingController passwordController,
      UserDetails? userDetails,
      bool allowLogin});

  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class _$LoginViewStateCopyWithImpl<$Res, $Val extends LoginViewState>
    implements $LoginViewStateCopyWith<$Res> {
  _$LoginViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isLoginInProgress = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? userDetails = freezed,
    Object? allowLogin = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error ? _value.error : error,
      isLoginInProgress: null == isLoginInProgress
          ? _value.isLoginInProgress
          : isLoginInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      allowLogin: null == allowLogin
          ? _value.allowLogin
          : allowLogin // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LoginViewStateImplCopyWith<$Res>
    implements $LoginViewStateCopyWith<$Res> {
  factory _$$LoginViewStateImplCopyWith(_$LoginViewStateImpl value,
          $Res Function(_$LoginViewStateImpl) then) =
      __$$LoginViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Object? error,
      bool isLoginInProgress,
      TextEditingController emailController,
      TextEditingController passwordController,
      UserDetails? userDetails,
      bool allowLogin});

  @override
  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class __$$LoginViewStateImplCopyWithImpl<$Res>
    extends _$LoginViewStateCopyWithImpl<$Res, _$LoginViewStateImpl>
    implements _$$LoginViewStateImplCopyWith<$Res> {
  __$$LoginViewStateImplCopyWithImpl(
      _$LoginViewStateImpl _value, $Res Function(_$LoginViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isLoginInProgress = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? userDetails = freezed,
    Object? allowLogin = null,
  }) {
    return _then(_$LoginViewStateImpl(
      error: freezed == error ? _value.error : error,
      isLoginInProgress: null == isLoginInProgress
          ? _value.isLoginInProgress
          : isLoginInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      allowLogin: null == allowLogin
          ? _value.allowLogin
          : allowLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginViewStateImpl implements _LoginViewState {
  const _$LoginViewStateImpl(
      {this.error,
      this.isLoginInProgress = false,
      required this.emailController,
      required this.passwordController,
      this.userDetails = null,
      this.allowLogin = false});

  @override
  final Object? error;
  @override
  @JsonKey()
  final bool isLoginInProgress;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  @JsonKey()
  final UserDetails? userDetails;
  @override
  @JsonKey()
  final bool allowLogin;

  @override
  String toString() {
    return 'LoginViewState(error: $error, isLoginInProgress: $isLoginInProgress, emailController: $emailController, passwordController: $passwordController, userDetails: $userDetails, allowLogin: $allowLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginViewStateImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.isLoginInProgress, isLoginInProgress) ||
                other.isLoginInProgress == isLoginInProgress) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.allowLogin, allowLogin) ||
                other.allowLogin == allowLogin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      isLoginInProgress,
      emailController,
      passwordController,
      userDetails,
      allowLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginViewStateImplCopyWith<_$LoginViewStateImpl> get copyWith =>
      __$$LoginViewStateImplCopyWithImpl<_$LoginViewStateImpl>(
          this, _$identity);
}

abstract class _LoginViewState implements LoginViewState {
  const factory _LoginViewState(
      {final Object? error,
      final bool isLoginInProgress,
      required final TextEditingController emailController,
      required final TextEditingController passwordController,
      final UserDetails? userDetails,
      final bool allowLogin}) = _$LoginViewStateImpl;

  @override
  Object? get error;
  @override
  bool get isLoginInProgress;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get passwordController;
  @override
  UserDetails? get userDetails;
  @override
  bool get allowLogin;
  @override
  @JsonKey(ignore: true)
  _$$LoginViewStateImplCopyWith<_$LoginViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
