import 'package:inshortclone/constants.dart';
import 'package:inshortclone/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text("Don’n have an account?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    ),
                    child: const Text("Sign up!"),
                  )
                ],
              ),
              const SizedBox(height: defaultPadding * 1.5),
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
