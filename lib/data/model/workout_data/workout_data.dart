import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_data.freezed.dart';

part 'workout_data.g.dart';

@freezed
class WorkoutData with _$WorkoutData {
  const factory WorkoutData({
    String? username,
    String? profileImage,
    List<BodyMonitor>? bodyMonitor,
    List<WorkoutProgram>? workoutPrograms,
  }) = _WorkoutData;

  factory WorkoutData.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDataFromJson(json);
}

@freezed
class BodyMonitor with _$BodyMonitor {
  const factory BodyMonitor({
    String? title,
    String? monitorImage,
    String? value,
  }) = _BodyMonitor;

  factory BodyMonitor.fromJson(Map<String, dynamic> json) =>
      _$BodyMonitorFromJson(json);
}

@freezed
class WorkoutProgram with _$WorkoutProgram {
  const factory WorkoutProgram({
    String? type,
    List<WorkoutItem>? items,
  }) = _WorkoutProgram;

  factory WorkoutProgram.fromJson(Map<String, dynamic> json) =>
      _$WorkoutProgramFromJson(json);
}

@freezed
class WorkoutItem with _$WorkoutItem {
  const factory WorkoutItem({
    String? title,
    String? time,
    List<String>? userImages,
    String? coachImage,
  }) = _WorkoutItem;

  factory WorkoutItem.fromJson(Map<String, dynamic> json) =>
      _$WorkoutItemFromJson(json);
}
