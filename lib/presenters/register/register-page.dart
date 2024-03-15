import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom-widget/custom-button.dart';
import '../../custom-widget/custom-text-field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 24, right: 24),
          alignment: Alignment.center,
          constraints: const BoxConstraints(
              maxWidth: 400
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const InputTextField(
                textFieldKey: Key("usernameField"),
                hint: "user name",
              ),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                textFieldKey: Key("emailField"),
                hint: "email",
              ),
              const SizedBox(
                height: 15,
              ),
              const InputTextField(
                textFieldKey: Key("passwordField"),
                hint: "password",
              ),
              const SizedBox(
                height: 15,
              ),
              const InputTextField(
                textFieldKey: Key("confirmPasswordField"),
                hint: "confirm password",
              ),
              const SizedBox(
                height: 15,
              ),
              Button(
                btnKey: const Key("registerBtn"),
                buttonText: "Register",
                onPress: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    "Already have an account?",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 253, 195, 0)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}