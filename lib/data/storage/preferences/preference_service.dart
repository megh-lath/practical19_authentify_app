import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practical19/data/model/user_details.dart';
import 'package:practical19/data/storage/preferences/preferences_provider.dart';

final isAppInstalledFirstTime = createPrefProvider<bool>(
  prefKey: 'is_app_installed_first_time',
  defaultValue: true,
);

final isUserLoggedIn = createPrefProvider<bool>(
  prefKey: 'is_user_logged_in',
  defaultValue: false,
);

final currentUserJson = createPrefProvider<String?>(
  prefKey: 'current_user_json',
  defaultValue: null,
);

final currentUserDetails = Provider<UserDetails?>((ref) {
  final json = ref.watch(currentUserJson);
  return json == null ? null : UserDetails.fromJson(jsonDecode(json));
});
