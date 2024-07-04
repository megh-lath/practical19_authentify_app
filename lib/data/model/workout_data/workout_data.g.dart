// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutDataImpl _$$WorkoutDataImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutDataImpl(
      username: json['username'] as String?,
      profileImage: json['profileImage'] as String?,
      bodyMonitor: (json['bodyMonitor'] as List<dynamic>?)
          ?.map((e) => BodyMonitor.fromJson(e as Map<String, dynamic>))
          .toList(),
      workoutPrograms: (json['workoutPrograms'] as List<dynamic>?)
          ?.map((e) => WorkoutProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkoutDataImplToJson(_$WorkoutDataImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'profileImage': instance.profileImage,
      'bodyMonitor': instance.bodyMonitor,
      'workoutPrograms': instance.workoutPrograms,
    };

_$BodyMonitorImpl _$$BodyMonitorImplFromJson(Map<String, dynamic> json) =>
    _$BodyMonitorImpl(
      title: json['title'] as String?,
      monitorImage: json['monitorImage'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$BodyMonitorImplToJson(_$BodyMonitorImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'monitorImage': instance.monitorImage,
      'value': instance.value,
    };

_$WorkoutProgramImpl _$$WorkoutProgramImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutProgramImpl(
      type: json['type'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => WorkoutItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkoutProgramImplToJson(
        _$WorkoutProgramImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'items': instance.items,
    };

_$WorkoutItemImpl _$$WorkoutItemImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutItemImpl(
      title: json['title'] as String?,
      time: json['time'] as String?,
      userImages: (json['userImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      coachImage: json['coachImage'] as String?,
    );

Map<String, dynamic> _$$WorkoutItemImplToJson(_$WorkoutItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'time': instance.time,
      'userImages': instance.userImages,
      'coachImage': instance.coachImage,
    };
