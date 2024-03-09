

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom-widget/custom-button.dart';
import '../../custom-widget/custom-text-field.dart';

class LoginPage extends StatelessWidget{
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
              InputTextField(
                textFieldKey: const Key("usernameField"),
                hint: "user name/ email",
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextField(
                textFieldKey: const Key("passwordField"),
                hint: "Password",
              ),
              const SizedBox(
                height: 15,
              ),
              Button(
                btnKey: const Key("loginBtn"),
                buttonText: "Login",
                onPress: () {},
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 16),
                  child: Text(
                    "create an account",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}