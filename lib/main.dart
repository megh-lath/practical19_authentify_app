import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:practical19/ui/navigation/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/storage/preferences/preference_service.dart';
import 'data/storage/preferences/preferences_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = await _initContainer();
  runApp(UncontrolledProviderScope(
    container: container,
    child: const MyApp(),
  ));
}

Future<ProviderContainer> _initContainer() async {
  final prefs = await SharedPreferences.getInstance();

  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(prefs),
    ],
  );
  return container;
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    final AppRoute initialRoute;

    if (ref.read(isUserLoggedIn)) {
      initialRoute = AppRoute.home;
    } else if (ref.read(isAppInstalledFirstTime)) {
      initialRoute = AppRoute.registration;
    } else {
      initialRoute = AppRoute.login;
    }

    _router =
        GoRouter(routes: AppRoute.routes, initialLocation: initialRoute.path);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MaterialApp.router(
        routerConfig: _router,
      );
    });
  }
}
