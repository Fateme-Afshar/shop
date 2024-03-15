
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom-widget/custom-button.dart';
import '../../custom-widget/custom-text-field.dart';

class ResetPasswordPage extends StatelessWidget{
  const ResetPasswordPage({super.key});


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
                textFieldKey: Key("passwordField"),
                hint: "password",
              ),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                textFieldKey: Key("confirmPasswordField"),
                hint: "confirm password",
              ),
              const SizedBox(
                height: 15,
              ),
              Button(
                btnKey: const Key("resetPasswordBtn"),
                buttonText: "Reset password",
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}