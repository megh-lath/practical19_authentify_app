import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practical19/data/model/user_details.dart';

import '../../data/storage/database_service.dart';

part 'home_view_model.freezed.dart';

final homeViewNotifier =
    StateNotifierProvider<HomeViewNotifier, HomeViewState>((ref) {
  return HomeViewNotifier(ref.read(databaseServiceProvider));
});

class HomeViewNotifier extends StateNotifier<HomeViewState> {
  final DatabaseService _dbService;

  HomeViewNotifier(this._dbService) : super(const HomeViewState());

  Future<void> getUserDetails(UserDetails? userFromPrefs) async {
    state = state.copyWith(loadingUserDetails: true);
    try {
      final userId = userFromPrefs?.id ?? 0;
      final userDetails = await _dbService.getUser(userId);
      state = state.copyWith(userDetails: userDetails);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    } finally {
      state = state.copyWith(loadingUserDetails: false);
    }
  }

  Future<void> logout() async {
    state = state.copyWith(isLogoutInProgress: true);
  }
}

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    Object? error,
    @Default(true) bool loadingUserDetails,
    @Default(null) UserDetails? userDetails,
    @Default(false) bool isLogoutInProgress,
  }) = _HomeViewState;
}
