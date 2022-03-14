import 'package:flutter/material.dart';
import 'package:inshortclone/constants.dart';

import 'components/sign_up_form.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                "Sign Up",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    ),
                    child: const Text("Sign In!"),
                  )
                ],
              ),
              const SizedBox(height: defaultPadding * 1.5),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
