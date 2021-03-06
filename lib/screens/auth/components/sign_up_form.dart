import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:inshortclone/constants.dart';

class SignUpForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _password = "";
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: RequiredValidator(errorText: requiredField),
            onSaved: (newValue) {},
            decoration: const InputDecoration(labelText: "Username*"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
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
          ),
          TextFormField(
            onSaved: (newValue) {},
            decoration: const InputDecoration(labelText: "Phone Number"),
            keyboardType: TextInputType.phone,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              validator: passwordValidator,
              obscureText: true,
              onChanged: (value) => _password = value,
              onSaved: (pass) {},
              decoration: const InputDecoration(labelText: "Password*"),
            ),
          ),
          TextFormField(
            validator: (val) =>
                MatchValidator(errorText: 'passwords do not match')
                    .validateMatch(val!, _password),
            obscureText: true,
            onSaved: (newValue) {},
            decoration: const InputDecoration(labelText: "Confirm password*"),
          ),
          const SizedBox(height: defaultPadding * 1.5),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
              child: const Text("Sign Up"),
            ),
          ),
        ],
      ),
    );
  }
}
