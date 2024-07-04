// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutData _$WorkoutDataFromJson(Map<String, dynamic> json) {
  return _WorkoutData.fromJson(json);
}

/// @nodoc
mixin _$WorkoutData {
  String? get username => throw _privateConstructorUsedError;

  String? get profileImage => throw _privateConstructorUsedError;

  List<BodyMonitor>? get bodyMonitor => throw _privateConstructorUsedError;

  List<WorkoutProgram>? get workoutPrograms =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutDataCopyWith<WorkoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDataCopyWith<$Res> {
  factory $WorkoutDataCopyWith(
          WorkoutData value, $Res Function(WorkoutData) then) =
      _$WorkoutDataCopyWithImpl<$Res, WorkoutData>;

  @useResult
  $Res call(
      {String? username,
      String? profileImage,
      List<BodyMonitor>? bodyMonitor,
      List<WorkoutProgram>? workoutPrograms});
}

/// @nodoc
class _$WorkoutDataCopyWithImpl<$Res, $Val extends WorkoutData>
    implements $WorkoutDataCopyWith<$Res> {
  _$WorkoutDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? bodyMonitor = freezed,
    Object? workoutPrograms = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyMonitor: freezed == bodyMonitor
          ? _value.bodyMonitor
          : bodyMonitor // ignore: cast_nullable_to_non_nullable
              as List<BodyMonitor>?,
      workoutPrograms: freezed == workoutPrograms
          ? _value.workoutPrograms
          : workoutPrograms // ignore: cast_nullable_to_non_nullable
              as List<WorkoutProgram>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutDataImplCopyWith<$Res>
    implements $WorkoutDataCopyWith<$Res> {
  factory _$$WorkoutDataImplCopyWith(
          _$WorkoutDataImpl value, $Res Function(_$WorkoutDataImpl) then) =
      __$$WorkoutDataImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? username,
      String? profileImage,
      List<BodyMonitor>? bodyMonitor,
      List<WorkoutProgram>? workoutPrograms});
}

/// @nodoc
class __$$WorkoutDataImplCopyWithImpl<$Res>
    extends _$WorkoutDataCopyWithImpl<$Res, _$WorkoutDataImpl>
    implements _$$WorkoutDataImplCopyWith<$Res> {
  __$$WorkoutDataImplCopyWithImpl(
      _$WorkoutDataImpl _value, $Res Function(_$WorkoutDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? bodyMonitor = freezed,
    Object? workoutPrograms = freezed,
  }) {
    return _then(_$WorkoutDataImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyMonitor: freezed == bodyMonitor
          ? _value._bodyMonitor
          : bodyMonitor // ignore: cast_nullable_to_non_nullable
              as List<BodyMonitor>?,
      workoutPrograms: freezed == workoutPrograms
          ? _value._workoutPrograms
          : workoutPrograms // ignore: cast_nullable_to_non_nullable
              as List<WorkoutProgram>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutDataImpl implements _WorkoutData {
  const _$WorkoutDataImpl(
      {this.username,
      this.profileImage,
      final List<BodyMonitor>? bodyMonitor,
      final List<WorkoutProgram>? workoutPrograms})
      : _bodyMonitor = bodyMonitor,
        _workoutPrograms = workoutPrograms;

  factory _$WorkoutDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutDataImplFromJson(json);

  @override
  final String? username;
  @override
  final String? profileImage;
  final List<BodyMonitor>? _bodyMonitor;

  @override
  List<BodyMonitor>? get bodyMonitor {
    final value = _bodyMonitor;
    if (value == null) return null;
    if (_bodyMonitor is EqualUnmodifiableListView) return _bodyMonitor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkoutProgram>? _workoutPrograms;

  @override
  List<WorkoutProgram>? get workoutPrograms {
    final value = _workoutPrograms;
    if (value == null) return null;
    if (_workoutPrograms is EqualUnmodifiableListView) return _workoutPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkoutData(username: $username, profileImage: $profileImage, bodyMonitor: $bodyMonitor, workoutPrograms: $workoutPrograms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            const DeepCollectionEquality()
                .equals(other._bodyMonitor, _bodyMonitor) &&
            const DeepCollectionEquality()
                .equals(other._workoutPrograms, _workoutPrograms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      profileImage,
      const DeepCollectionEquality().hash(_bodyMonitor),
      const DeepCollectionEquality().hash(_workoutPrograms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutDataImplCopyWith<_$WorkoutDataImpl> get copyWith =>
      __$$WorkoutDataImplCopyWithImpl<_$WorkoutDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutDataImplToJson(
      this,
    );
  }
}

abstract class _WorkoutData implements WorkoutData {
  const factory _WorkoutData(
      {final String? username,
      final String? profileImage,
      final List<BodyMonitor>? bodyMonitor,
      final List<WorkoutProgram>? workoutPrograms}) = _$WorkoutDataImpl;

  factory _WorkoutData.fromJson(Map<String, dynamic> json) =
      _$WorkoutDataImpl.fromJson;

  @override
  String? get username;

  @override
  String? get profileImage;

  @override
  List<BodyMonitor>? get bodyMonitor;

  @override
  List<WorkoutProgram>? get workoutPrograms;

  @override
  @JsonKey(ignore: true)
  _$$WorkoutDataImplCopyWith<_$WorkoutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BodyMonitor _$BodyMonitorFromJson(Map<String, dynamic> json) {
  return _BodyMonitor.fromJson(json);
}

/// @nodoc
mixin _$BodyMonitor {
  String? get title => throw _privateConstructorUsedError;

  String? get monitorImage => throw _privateConstructorUsedError;

  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BodyMonitorCopyWith<BodyMonitor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyMonitorCopyWith<$Res> {
  factory $BodyMonitorCopyWith(
          BodyMonitor value, $Res Function(BodyMonitor) then) =
      _$BodyMonitorCopyWithImpl<$Res, BodyMonitor>;

  @useResult
  $Res call({String? title, String? monitorImage, String? value});
}

/// @nodoc
class _$BodyMonitorCopyWithImpl<$Res, $Val extends BodyMonitor>
    implements $BodyMonitorCopyWith<$Res> {
  _$BodyMonitorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? monitorImage = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      monitorImage: freezed == monitorImage
          ? _value.monitorImage
          : monitorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyMonitorImplCopyWith<$Res>
    implements $BodyMonitorCopyWith<$Res> {
  factory _$$BodyMonitorImplCopyWith(
          _$BodyMonitorImpl value, $Res Function(_$BodyMonitorImpl) then) =
      __$$BodyMonitorImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String? title, String? monitorImage, String? value});
}

/// @nodoc
class __$$BodyMonitorImplCopyWithImpl<$Res>
    extends _$BodyMonitorCopyWithImpl<$Res, _$BodyMonitorImpl>
    implements _$$BodyMonitorImplCopyWith<$Res> {
  __$$BodyMonitorImplCopyWithImpl(
      _$BodyMonitorImpl _value, $Res Function(_$BodyMonitorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? monitorImage = freezed,
    Object? value = freezed,
  }) {
    return _then(_$BodyMonitorImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      monitorImage: freezed == monitorImage
          ? _value.monitorImage
          : monitorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyMonitorImpl implements _BodyMonitor {
  const _$BodyMonitorImpl({this.title, this.monitorImage, this.value});

  factory _$BodyMonitorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyMonitorImplFromJson(json);

  @override
  final String? title;
  @override
  final String? monitorImage;
  @override
  final String? value;

  @override
  String toString() {
    return 'BodyMonitor(title: $title, monitorImage: $monitorImage, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyMonitorImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.monitorImage, monitorImage) ||
                other.monitorImage == monitorImage) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, monitorImage, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyMonitorImplCopyWith<_$BodyMonitorImpl> get copyWith =>
      __$$BodyMonitorImplCopyWithImpl<_$BodyMonitorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyMonitorImplToJson(
      this,
    );
  }
}

abstract class _BodyMonitor implements BodyMonitor {
  const factory _BodyMonitor(
      {final String? title,
      final String? monitorImage,
      final String? value}) = _$BodyMonitorImpl;

  factory _BodyMonitor.fromJson(Map<String, dynamic> json) =
      _$BodyMonitorImpl.fromJson;

  @override
  String? get title;

  @override
  String? get monitorImage;

  @override
  String? get value;

  @override
  @JsonKey(ignore: true)
  _$$BodyMonitorImplCopyWith<_$BodyMonitorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkoutProgram _$WorkoutProgramFromJson(Map<String, dynamic> json) {
  return _WorkoutProgram.fromJson(json);
}

/// @nodoc
mixin _$WorkoutProgram {
  String? get type => throw _privateConstructorUsedError;

  List<WorkoutItem>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutProgramCopyWith<WorkoutProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutProgramCopyWith<$Res> {
  factory $WorkoutProgramCopyWith(
          WorkoutProgram value, $Res Function(WorkoutProgram) then) =
      _$WorkoutProgramCopyWithImpl<$Res, WorkoutProgram>;

  @useResult
  $Res call({String? type, List<WorkoutItem>? items});
}

/// @nodoc
class _$WorkoutProgramCopyWithImpl<$Res, $Val extends WorkoutProgram>
    implements $WorkoutProgramCopyWith<$Res> {
  _$WorkoutProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WorkoutItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutProgramImplCopyWith<$Res>
    implements $WorkoutProgramCopyWith<$Res> {
  factory _$$WorkoutProgramImplCopyWith(_$WorkoutProgramImpl value,
          $Res Function(_$WorkoutProgramImpl) then) =
      __$$WorkoutProgramImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String? type, List<WorkoutItem>? items});
}

/// @nodoc
class __$$WorkoutProgramImplCopyWithImpl<$Res>
    extends _$WorkoutProgramCopyWithImpl<$Res, _$WorkoutProgramImpl>
    implements _$$WorkoutProgramImplCopyWith<$Res> {
  __$$WorkoutProgramImplCopyWithImpl(
      _$WorkoutProgramImpl _value, $Res Function(_$WorkoutProgramImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? items = freezed,
  }) {
    return _then(_$WorkoutProgramImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WorkoutItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutProgramImpl implements _WorkoutProgram {
  const _$WorkoutProgramImpl({this.type, final List<WorkoutItem>? items})
      : _items = items;

  factory _$WorkoutProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutProgramImplFromJson(json);

  @override
  final String? type;
  final List<WorkoutItem>? _items;

  @override
  List<WorkoutItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkoutProgram(type: $type, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutProgramImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutProgramImplCopyWith<_$WorkoutProgramImpl> get copyWith =>
      __$$WorkoutProgramImplCopyWithImpl<_$WorkoutProgramImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutProgramImplToJson(
      this,
    );
  }
}

abstract class _WorkoutProgram implements WorkoutProgram {
  const factory _WorkoutProgram(
      {final String? type,
      final List<WorkoutItem>? items}) = _$WorkoutProgramImpl;

  factory _WorkoutProgram.fromJson(Map<String, dynamic> json) =
      _$WorkoutProgramImpl.fromJson;

  @override
  String? get type;

  @override
  List<WorkoutItem>? get items;

  @override
  @JsonKey(ignore: true)
  _$$WorkoutProgramImplCopyWith<_$WorkoutProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkoutItem _$WorkoutItemFromJson(Map<String, dynamic> json) {
  return _WorkoutItem.fromJson(json);
}

/// @nodoc
mixin _$WorkoutItem {
  String? get title => throw _privateConstructorUsedError;

  String? get time => throw _privateConstructorUsedError;

  List<String>? get userImages => throw _privateConstructorUsedError;

  String? get coachImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutItemCopyWith<WorkoutItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutItemCopyWith<$Res> {
  factory $WorkoutItemCopyWith(
          WorkoutItem value, $Res Function(WorkoutItem) then) =
      _$WorkoutItemCopyWithImpl<$Res, WorkoutItem>;

  @useResult
  $Res call(
      {String? title,
      String? time,
      List<String>? userImages,
      String? coachImage});
}

/// @nodoc
class _$WorkoutItemCopyWithImpl<$Res, $Val extends WorkoutItem>
    implements $WorkoutItemCopyWith<$Res> {
  _$WorkoutItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? time = freezed,
    Object? userImages = freezed,
    Object? coachImage = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      userImages: freezed == userImages
          ? _value.userImages
          : userImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      coachImage: freezed == coachImage
          ? _value.coachImage
          : coachImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutItemImplCopyWith<$Res>
    implements $WorkoutItemCopyWith<$Res> {
  factory _$$WorkoutItemImplCopyWith(
          _$WorkoutItemImpl value, $Res Function(_$WorkoutItemImpl) then) =
      __$$WorkoutItemImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? title,
      String? time,
      List<String>? userImages,
      String? coachImage});
}

/// @nodoc
class __$$WorkoutItemImplCopyWithImpl<$Res>
    extends _$WorkoutItemCopyWithImpl<$Res, _$WorkoutItemImpl>
    implements _$$WorkoutItemImplCopyWith<$Res> {
  __$$WorkoutItemImplCopyWithImpl(
      _$WorkoutItemImpl _value, $Res Function(_$WorkoutItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? time = freezed,
    Object? userImages = freezed,
    Object? coachImage = freezed,
  }) {
    return _then(_$WorkoutItemImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      userImages: freezed == userImages
          ? _value._userImages
          : userImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      coachImage: freezed == coachImage
          ? _value.coachImage
          : coachImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutItemImpl implements _WorkoutItem {
  const _$WorkoutItemImpl(
      {this.title, this.time, final List<String>? userImages, this.coachImage})
      : _userImages = userImages;

  factory _$WorkoutItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutItemImplFromJson(json);

  @override
  final String? title;
  @override
  final String? time;
  final List<String>? _userImages;

  @override
  List<String>? get userImages {
    final value = _userImages;
    if (value == null) return null;
    if (_userImages is EqualUnmodifiableListView) return _userImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? coachImage;

  @override
  String toString() {
    return 'WorkoutItem(title: $title, time: $time, userImages: $userImages, coachImage: $coachImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other._userImages, _userImages) &&
            (identical(other.coachImage, coachImage) ||
                other.coachImage == coachImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, time,
      const DeepCollectionEquality().hash(_userImages), coachImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutItemImplCopyWith<_$WorkoutItemImpl> get copyWith =>
      __$$WorkoutItemImplCopyWithImpl<_$WorkoutItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutItemImplToJson(
      this,
    );
  }
}

abstract class _WorkoutItem implements WorkoutItem {
  const factory _WorkoutItem(
      {final String? title,
      final String? time,
      final List<String>? userImages,
      final String? coachImage}) = _$WorkoutItemImpl;

  factory _WorkoutItem.fromJson(Map<String, dynamic> json) =
      _$WorkoutItemImpl.fromJson;

  @override
  String? get title;

  @override
  String? get time;

  @override
  List<String>? get userImages;

  @override
  String? get coachImage;

  @override
  @JsonKey(ignore: true)
  _$$WorkoutItemImplCopyWith<_$WorkoutItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
