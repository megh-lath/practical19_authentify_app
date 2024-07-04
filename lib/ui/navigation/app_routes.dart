import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:practical19/ui/home/home_view.dart';

import '../login/login_view.dart';
import '../registration/registration_view.dart';

class AppRoute {
  static const pathHomeView = '/home';
  static const pathLoginView = '/login';
  static const pathRegistrationView = '/registration';

  final String path;
  final String? name;
  final WidgetBuilder builder;

  const AppRoute(
      this.path, {
        this.name,
        required this.builder,
      });

  void go(BuildContext context) {
    if (name != null) {
      GoRouter.of(context).goNamed(name!, extra: builder);
    } else {
      GoRouter.of(context).go(path, extra: builder);
    }
  }

  static void popTo(
      BuildContext context,
      String path, {
        bool inclusive = false,
      }) {
    while (GoRouter.of(context)
        .routerDelegate
        .currentConfiguration
        .matches
        .last
        .matchedLocation !=
        path) {
      if (!GoRouter.of(context).canPop()) {
        return;
      }
      GoRouter.of(context).pop();
    }

    if (inclusive && GoRouter.of(context).canPop()) {
      GoRouter.of(context).pop();
    }
  }

  Future<T?> push<T extends Object?>(BuildContext context) {
    if (name != null) {
      return GoRouter.of(context).pushNamed(name!, extra: builder);
    } else {
      return GoRouter.of(context).push(path, extra: builder);
    }
  }

  Future<T?> pushReplacement<T extends Object?>(BuildContext context) {
    if (name != null) {
      return GoRouter.of(context).pushReplacementNamed(name!, extra: builder);
    } else {
      return GoRouter.of(context).pushReplacement(path, extra: builder);
    }
  }

  Future<T?> pushNamed<T extends Object?>(BuildContext context) {
    if (name == null) {
      throw UnsupportedError('Name has to be set to use this feature!');
    }
    return GoRouter.of(context).pushNamed(name!, extra: builder);
  }

  GoRoute goRoute() => GoRoute(
    path: path,
    name: path,
    builder: (context, state) => state.widget(context),
  );

  static AppRoute get home =>
      AppRoute(pathHomeView, builder: (_) => const HomeView());

  static AppRoute get login =>
      AppRoute(pathLoginView, builder: (_) => const LoginView());

  static AppRoute get registration =>
      AppRoute(pathRegistrationView, builder: (_) => const RegistrationView());

  static final routes = [
    GoRoute(
      path: home.path,
      builder: (context, state) {
        return state.extra == null
            ? const HomeView()
            : state.widget(context);
      },
    ),
    GoRoute(
      path: login.path,
      builder: (context, state) {
        return state.extra == null
            ? const LoginView()
            : state.widget(context);
      },
    ),
    GoRoute(
      path: registration.path,
      builder: (context, state) {
        return state.extra == null ? const RegistrationView() : state.widget(context);
      },
    )
  ];
}

extension GoRouterStateExtensions on GoRouterState {
  Widget widget(BuildContext context) => (extra as WidgetBuilder)(context);
}
