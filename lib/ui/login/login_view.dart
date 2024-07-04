import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practical19/data/storage/preferences/preference_service.dart';
import 'package:practical19/ui/navigation/app_routes.dart';

import 'login_view_model.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  late LoginViewNotifier notifier;

  @override
  void initState() {
    super.initState();
    notifier = ref.read(loginViewNotifier.notifier);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.8, 1.0],
          colors: [
            Color(0xFF000000),
            Color(0xFF020078),
            Color(0xFF0400C3),
            Color(0xFF03000B)
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0x00000000),
        ),
        body: _loginBody(context, ref),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget _loginBody(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginViewNotifier);

    if (state.allowLogin) {
      ref.read(currentUserJson.notifier).state = state.userDetails.toString();
      ref.read(isUserLoggedIn.notifier).state = true;
      AppRoute.home.push(context);
    }

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: state.emailController,
              onChanged: (value) {
                notifier.onTextChanged();
              },
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: state.passwordController,
              onChanged: (value) {
                notifier.onTextChanged();
              },
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                notifier.login();
              },
              child: const Text('Login'),
            ),
            if (state.isLoginInProgress) const CircularProgressIndicator(),
            if (state.error != null) Text(state.error.toString()),
          ],
        ),
      ),
    );
  }
}
