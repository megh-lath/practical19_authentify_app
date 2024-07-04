// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationViewState {
  Object? get error => throw _privateConstructorUsedError;
  bool get isRegistrationInProgress => throw _privateConstructorUsedError;
  TextEditingController get firstNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get lastNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get confirmPasswordController =>
      throw _privateConstructorUsedError;
  bool get isRegistered => throw _privateConstructorUsedError;
  UserDetails? get userDetails => throw _privateConstructorUsedError;
  bool get allowRegistration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationViewStateCopyWith<RegistrationViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationViewStateCopyWith<$Res> {
  factory $RegistrationViewStateCopyWith(RegistrationViewState value,
          $Res Function(RegistrationViewState) then) =
      _$RegistrationViewStateCopyWithImpl<$Res, RegistrationViewState>;
  @useResult
  $Res call(
      {Object? error,
      bool isRegistrationInProgress,
      TextEditingController firstNameController,
      TextEditingController lastNameController,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController confirmPasswordController,
      bool isRegistered,
      UserDetails? userDetails,
      bool allowRegistration});

  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class _$RegistrationViewStateCopyWithImpl<$Res,
        $Val extends RegistrationViewState>
    implements $RegistrationViewStateCopyWith<$Res> {
  _$RegistrationViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isRegistrationInProgress = null,
    Object? firstNameController = null,
    Object? lastNameController = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? confirmPasswordController = null,
    Object? isRegistered = null,
    Object? userDetails = freezed,
    Object? allowRegistration = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error ? _value.error : error,
      isRegistrationInProgress: null == isRegistrationInProgress
          ? _value.isRegistrationInProgress
          : isRegistrationInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      firstNameController: null == firstNameController
          ? _value.firstNameController
          : firstNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lastNameController: null == lastNameController
          ? _value.lastNameController
          : lastNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      confirmPasswordController: null == confirmPasswordController
          ? _value.confirmPasswordController
          : confirmPasswordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isRegistered: null == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      allowRegistration: null == allowRegistration
          ? _value.allowRegistration
          : allowRegistration // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RegistrationViewStateImplCopyWith<$Res>
    implements $RegistrationViewStateCopyWith<$Res> {
  factory _$$RegistrationViewStateImplCopyWith(
          _$RegistrationViewStateImpl value,
          $Res Function(_$RegistrationViewStateImpl) then) =
      __$$RegistrationViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Object? error,
      bool isRegistrationInProgress,
      TextEditingController firstNameController,
      TextEditingController lastNameController,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController confirmPasswordController,
      bool isRegistered,
      UserDetails? userDetails,
      bool allowRegistration});

  @override
  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class __$$RegistrationViewStateImplCopyWithImpl<$Res>
    extends _$RegistrationViewStateCopyWithImpl<$Res,
        _$RegistrationViewStateImpl>
    implements _$$RegistrationViewStateImplCopyWith<$Res> {
  __$$RegistrationViewStateImplCopyWithImpl(_$RegistrationViewStateImpl _value,
      $Res Function(_$RegistrationViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isRegistrationInProgress = null,
    Object? firstNameController = null,
    Object? lastNameController = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? confirmPasswordController = null,
    Object? isRegistered = null,
    Object? userDetails = freezed,
    Object? allowRegistration = null,
  }) {
    return _then(_$RegistrationViewStateImpl(
      error: freezed == error ? _value.error : error,
      isRegistrationInProgress: null == isRegistrationInProgress
          ? _value.isRegistrationInProgress
          : isRegistrationInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      firstNameController: null == firstNameController
          ? _value.firstNameController
          : firstNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lastNameController: null == lastNameController
          ? _value.lastNameController
          : lastNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      confirmPasswordController: null == confirmPasswordController
          ? _value.confirmPasswordController
          : confirmPasswordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isRegistered: null == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
      allowRegistration: null == allowRegistration
          ? _value.allowRegistration
          : allowRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegistrationViewStateImpl implements _RegistrationViewState {
  const _$RegistrationViewStateImpl(
      {this.error,
      this.isRegistrationInProgress = false,
      required this.firstNameController,
      required this.lastNameController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController,
      this.isRegistered = false,
      this.userDetails = null,
      this.allowRegistration = false});

  @override
  final Object? error;
  @override
  @JsonKey()
  final bool isRegistrationInProgress;
  @override
  final TextEditingController firstNameController;
  @override
  final TextEditingController lastNameController;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController confirmPasswordController;
  @override
  @JsonKey()
  final bool isRegistered;
  @override
  @JsonKey()
  final UserDetails? userDetails;
  @override
  @JsonKey()
  final bool allowRegistration;

  @override
  String toString() {
    return 'RegistrationViewState(error: $error, isRegistrationInProgress: $isRegistrationInProgress, firstNameController: $firstNameController, lastNameController: $lastNameController, emailController: $emailController, passwordController: $passwordController, confirmPasswordController: $confirmPasswordController, isRegistered: $isRegistered, userDetails: $userDetails, allowRegistration: $allowRegistration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationViewStateImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(
                    other.isRegistrationInProgress, isRegistrationInProgress) ||
                other.isRegistrationInProgress == isRegistrationInProgress) &&
            (identical(other.firstNameController, firstNameController) ||
                other.firstNameController == firstNameController) &&
            (identical(other.lastNameController, lastNameController) ||
                other.lastNameController == lastNameController) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.confirmPasswordController,
                    confirmPasswordController) ||
                other.confirmPasswordController == confirmPasswordController) &&
            (identical(other.isRegistered, isRegistered) ||
                other.isRegistered == isRegistered) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.allowRegistration, allowRegistration) ||
                other.allowRegistration == allowRegistration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      isRegistrationInProgress,
      firstNameController,
      lastNameController,
      emailController,
      passwordController,
      confirmPasswordController,
      isRegistered,
      userDetails,
      allowRegistration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationViewStateImplCopyWith<_$RegistrationViewStateImpl>
      get copyWith => __$$RegistrationViewStateImplCopyWithImpl<
          _$RegistrationViewStateImpl>(this, _$identity);
}

abstract class _RegistrationViewState implements RegistrationViewState {
  const factory _RegistrationViewState(
      {final Object? error,
      final bool isRegistrationInProgress,
      required final TextEditingController firstNameController,
      required final TextEditingController lastNameController,
      required final TextEditingController emailController,
      required final TextEditingController passwordController,
      required final TextEditingController confirmPasswordController,
      final bool isRegistered,
      final UserDetails? userDetails,
      final bool allowRegistration}) = _$RegistrationViewStateImpl;

  @override
  Object? get error;
  @override
  bool get isRegistrationInProgress;
  @override
  TextEditingController get firstNameController;
  @override
  TextEditingController get lastNameController;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get confirmPasswordController;
  @override
  bool get isRegistered;
  @override
  UserDetails? get userDetails;
  @override
  bool get allowRegistration;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationViewStateImplCopyWith<_$RegistrationViewStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
