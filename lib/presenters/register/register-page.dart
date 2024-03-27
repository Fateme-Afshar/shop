import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/validator.dart';

import '../../custom-widget/custom-button.dart';
import '../../custom-widget/custom-text-field.dart';
import '../../data/model/user.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 24, right: 24),
          alignment: Alignment.center,
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputTextField(
                textFieldKey: const Key("usernameField"),
                hint: "user name",
                controller: userController,
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextField(
                textFieldKey: const Key("emailField"),
                hint: "email",
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              InputTextField(
                textFieldKey: const Key("passwordField"),
                hint: "password",
                controller: passwordController,
              ),
              const SizedBox(
                height: 15,
              ),
              InputTextField(
                textFieldKey: const Key("confirmPasswordField"),
                hint: "confirm password",
                controller: confirmPasswordController,
              ),
              const SizedBox(
                height: 15,
              ),
              Button(
                btnKey: const Key("registerBtn"),
                buttonText: "Register",
                onPress: () {
                  if (isEmpty(userController.text) ||
                      isEmpty(emailController.text) ||
                      isEmpty(passwordController.text) ||
                      isEmpty(confirmPasswordController.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Inputs cannot be empty"),
                    ));
                  }

                  if (!isValidEmail(emailController.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Email is invalid"),
                    ));
                  }

                  if (!isPasswordLengthValid(passwordController.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Password length is invalid"),
                    ));
                  }

                  if (!passwordController.text
                      .contains(confirmPasswordController.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Password and confirm password should be same."),
                    ));
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Expanded(
                      child: Text(
                    "Already have an account?",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )),
                  const Spacer(),
                  TextButton(
                      key: const Key("loginBtn"),
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
