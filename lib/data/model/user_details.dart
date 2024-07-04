import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details.freezed.dart';

part 'user_details.g.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails(
      {int? id,
      required String firstName,
      required String lastName,
      required String email,
      required String password}) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}
