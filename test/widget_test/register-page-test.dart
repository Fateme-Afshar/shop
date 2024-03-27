

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shop/presenters/register/register-page.dart';

void main(){
  group("Register page test", () {
    final Finder userNameFinder = find.byKey(const Key("usernameField"));
    final Finder passwordFinder = find.byKey(const Key("passwordField"));
    final Finder confirmPasswordFinder = find.byKey(const Key("confirmPasswordField"));
    final Finder emailFinder = find.byKey(const Key("emailField"));
    final Finder registerBtnFinder = find.byKey(const Key("registerBtn"));
    final Finder loginBtnFinder = find.byKey(const Key("loginBtn"));

    testWidgets("Should have user name, email, password, confirm password and register button", (WidgetTester widgetTester) async{
     await widgetTester.pumpWidget(const MaterialApp(
       home: RegisterPage(),
     ));

      expect(userNameFinder, findsOneWidget);
      expect(passwordFinder, findsOneWidget);
      expect(confirmPasswordFinder, findsOneWidget);
      expect(emailFinder, findsOneWidget);
      expect(registerBtnFinder, findsOneWidget);
      expect(loginBtnFinder, findsOneWidget);

    await widgetTester.pump();
    });

    testWidgets("If inputs are empty, Show error message", (widgetTester) async{
      await widgetTester.pumpWidget(const MaterialApp(
        home: RegisterPage(),
      ));

        Finder emptyErrorFinder = find.text("Inputs cannot be empty");

        await widgetTester.enterText(userNameFinder, "");
        await widgetTester.enterText(emailFinder, "test@test.com");
        await widgetTester.enterText(passwordFinder, "123456");
        await widgetTester.enterText(confirmPasswordFinder, "123456");

        await widgetTester.tap(registerBtnFinder);
        await widgetTester.pump();

        expect(emptyErrorFinder, findsOneWidget);
    });

    testWidgets("If email is invalid , Show error message", (widgetTester) async{
      await widgetTester.pumpWidget(const MaterialApp(
        home: RegisterPage(),
      ));

      Finder emptyErrorFinder = find.text("Email is invalid");

      await widgetTester.enterText(userNameFinder, "rozaBeauty");
      await widgetTester.enterText(emailFinder, "test.com");
      await widgetTester.enterText(passwordFinder, "123456");
      await widgetTester.enterText(confirmPasswordFinder, "123456");

      await widgetTester.tap(registerBtnFinder);
      await widgetTester.pump();

      expect(emptyErrorFinder, findsOneWidget);
    });

    testWidgets("If password length is invalid, Show error message", (widgetTester) async{
      await widgetTester.pumpWidget(const MaterialApp(
        home: RegisterPage(),
      ));

      Finder emptyErrorFinder = find.text("Password length is invalid");

      await widgetTester.enterText(userNameFinder, "rozaBeauty");
      await widgetTester.enterText(emailFinder, "test@test.com");
      await widgetTester.enterText(passwordFinder, "123456");
      await widgetTester.enterText(confirmPasswordFinder, "123456");

      await widgetTester.tap(registerBtnFinder);
      await widgetTester.pump();

      expect(emptyErrorFinder, findsOneWidget);
    });

    testWidgets("If password and confirm password isn't same, Show error message", (widgetTester) async{
      await widgetTester.pumpWidget(const MaterialApp(
        home: RegisterPage(),
      ));

      Finder emptyErrorFinder = find.text("Password and confirm password should be same.");

      await widgetTester.enterText(userNameFinder, "rozaBeauty");
      await widgetTester.enterText(emailFinder, "test@test.com");
      await widgetTester.enterText(passwordFinder, "12345678");
      await widgetTester.enterText(confirmPasswordFinder, "1234568");

      await widgetTester.tap(registerBtnFinder);
      await widgetTester.pump();

      expect(emptyErrorFinder, findsOneWidget);
    });
  });
}