import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom-widget/custom-button.dart';
import '../../custom-widget/custom-text-field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 24, right: 24),
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const InputTextField(
                textFieldKey: Key("usernameField"),
                hint: "user name/ email",
              ),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                textFieldKey: Key("passwordField"),
                hint: "password",
              ),
              const SizedBox(
                height: 15,
              ),
              Button(
                btnKey: const Key("loginBtn"),
                buttonText: "Login",
                onPress: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create an account",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(
                            203,
                            11,
                            49,
                            94,
                          )),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot password",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(
                              203,
                              11,
                              49,
                              94,
                            )),
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
