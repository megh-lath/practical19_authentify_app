import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practical19/data/model/user_details.dart';
import 'package:practical19/data/storage/database_service.dart';

part 'login_view_model.freezed.dart';

final loginViewNotifier =
    StateNotifierProvider<LoginViewNotifier, LoginViewState>((ref) {
  return LoginViewNotifier(ref.read(databaseServiceProvider));
});

class LoginViewNotifier extends StateNotifier<LoginViewState> {
  final DatabaseService _dbService;

  LoginViewNotifier(this._dbService)
      : super(LoginViewState(
            emailController: TextEditingController(text: ''),
            passwordController: TextEditingController(text: '')));

  void onTextChanged() {
    state = state.copyWith(
        allowLogin: state.emailController.text.isNotEmpty &&
            state.passwordController.text.isNotEmpty);
  }

  Future<void> login() async {
    if (state.allowLogin == false) return;
    state = state.copyWith(isLoginInProgress: true);
    try {
      final isAuthorized = await _dbService.isUserAuthorized(
          state.emailController.text, state.passwordController.text);
      if (isAuthorized) {
        final user = await _dbService
            .getUserDetailsByEmailId(state.emailController.text);
        state = state.copyWith(
            isLoginInProgress: false, allowLogin: true, userDetails: user);
      } else {
        state = state.copyWith(
            isLoginInProgress: false, error: 'Invalid credentials');
      }
    } catch (e) {
      state = state.copyWith(isLoginInProgress: false, error: e.toString());
    }
  }
}

@freezed
class LoginViewState with _$LoginViewState {
  const factory LoginViewState(
      {Object? error,
      @Default(false) bool isLoginInProgress,
      required TextEditingController emailController,
      required TextEditingController passwordController,
      @Default(null) UserDetails? userDetails,
      @Default(false) bool allowLogin}) = _LoginViewState;
}
