import 'package:inshortclone/main/main_screen.dart';
import 'package:inshortclone/screens/home/home_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/material.dart';

import 'package:inshortclone/constants.dart';

import '../../main/main_screen.dart';

class SignInForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: MultiValidator(
              [
                RequiredValidator(errorText: requiredField),
                EmailValidator(errorText: emailError),
              ],
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) {},
            decoration: const InputDecoration(labelText: "Email*"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              validator: passwordValidator,
              obscureText: true,
              onSaved: (newValue) {},
              decoration: const InputDecoration(labelText: "Password*"),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Forgot your Password?"),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ),
                  );
                }
              },
              child: const Text("Sign In"),
            ),
          ),
        ],
      ),
    );
  }
}
