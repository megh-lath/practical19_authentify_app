import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practical19/data/storage/database_service.dart';

import '../../data/model/user_details.dart';

part 'registration_view_model.freezed.dart';

final registrationViewNotifier =
    StateNotifierProvider<RegistrationViewNotifier, RegistrationViewState>(
        (ref) {
  return RegistrationViewNotifier(ref.read(databaseServiceProvider));
});

class RegistrationViewNotifier extends StateNotifier<RegistrationViewState> {
  final DatabaseService _dbService;

  RegistrationViewNotifier(this._dbService)
      : super(RegistrationViewState(
            firstNameController: TextEditingController(text: ''),
            lastNameController: TextEditingController(text: ''),
            emailController: TextEditingController(text: ''),
            passwordController: TextEditingController(text: ''),
            confirmPasswordController: TextEditingController(text: '')));

  void onTextChanged() {
    state = state.copyWith(
        allowRegistration: state.firstNameController.text.isNotEmpty &&
            state.lastNameController.text.isNotEmpty &&
            state.emailController.text.isNotEmpty &&
            state.passwordController.text.isNotEmpty &&
            state.confirmPasswordController.text.isNotEmpty &&
            state.passwordController.text ==
                state.confirmPasswordController.text);
  }

  Future<void> register() async {
    print("Allow Registration: ${state.allowRegistration}");
    if (state.allowRegistration == false) return;
    state = state.copyWith(isRegistrationInProgress: true);
    try {
      final user = UserDetails(
          firstName: state.firstNameController.text,
          lastName: state.lastNameController.text,
          email: state.emailController.text,
          password: state.passwordController.text);
      await _dbService.insertUser(user.toJson());
      state = state.copyWith(
          isRegistrationInProgress: false,
          isRegistered: true,
          userDetails: user);
    } catch (e) {
      state =
          state.copyWith(isRegistrationInProgress: false, error: e.toString());
    }
  }
}

@freezed
class RegistrationViewState with _$RegistrationViewState {
  const factory RegistrationViewState(
      {Object? error,
      @Default(false) bool isRegistrationInProgress,
      required TextEditingController firstNameController,
      required TextEditingController lastNameController,
      required TextEditingController emailController,
      required TextEditingController passwordController,
      required TextEditingController confirmPasswordController,
      @Default(false) bool isRegistered,
      @Default(null) UserDetails? userDetails,
      @Default(false) bool allowRegistration}) = _RegistrationViewState;
}
