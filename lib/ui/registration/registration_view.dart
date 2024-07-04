import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practical19/ui/navigation/app_routes.dart';
import 'package:practical19/ui/registration/registration_view_model.dart';

import '../../data/storage/preferences/preference_service.dart';

class RegistrationView extends ConsumerStatefulWidget {
  const RegistrationView({super.key});

  @override
  ConsumerState<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends ConsumerState<RegistrationView> {
  late RegistrationViewNotifier notifier;

  @override
  void initState() {
    super.initState();
    notifier = ref.read(registrationViewNotifier.notifier);
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
            'Registration',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0x00000000),
        ),
        body: _body(context, ref),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registrationViewNotifier);

    if (state.isRegistered) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(isUserLoggedIn.notifier).state = true;
        ref.read(isAppInstalledFirstTime.notifier).state = false;
        ref.read(currentUserJson.notifier).state = state.userDetails.toString();
        AppRoute.home.push(context);
      });
    }

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: _commonTextField(
                    labelText: 'First Name',
                    controller: state.firstNameController,
                    onChanged: (value) {
                      notifier.onTextChanged();
                    },
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: _commonTextField(
                    labelText: 'Last Name',
                    controller: state.lastNameController,
                    onChanged: (value) {
                      notifier.onTextChanged();
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            _commonTextField(
                labelText: 'Email',
                controller: state.emailController,
                onChanged: (value) {
                  notifier.onTextChanged();
                }),
            const SizedBox(height: 16.0),
            _commonTextField(
                labelText: 'Password',
                controller: state.passwordController,
                onChanged: (value) {
                  notifier.onTextChanged();
                }),
            const SizedBox(height: 16.0),
            _commonTextField(
                labelText: 'Confirm Password',
                controller: state.confirmPasswordController,
                onChanged: (value) {
                  notifier.onTextChanged();
                }),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                notifier.register();
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _commonTextField({
    required String labelText,
    required TextEditingController controller,
    required Function(String) onChanged,
  }) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
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
      onChanged: onChanged,
    );
  }
}
