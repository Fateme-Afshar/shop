import 'package:flutter/material.dart';
import 'package:shop/presenters/login/login-page.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appName = 'Custom Themes';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 250, 245, 239),
            primaryContainer: Color.fromARGB(255, 11, 49, 94),
            secondaryContainer: const Color.fromARGB(255, 11, 49, 94),
            background: Color.fromARGB(255, 250, 245, 239),
            brightness: Brightness.light,
          ),
          fontFamily: "segoe",
          iconTheme: const IconThemeData(
              color: Color.fromARGB(255, 11, 49, 94), size: 24),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color.fromARGB(255, 250, 249, 246),
            hoverColor: Colors.transparent,
            focusColor: null,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide.none,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide.none,
            ),
            hintStyle: TextStyle(color: Color.fromARGB(203, 11, 49, 94)),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadowColor: Colors.grey.withOpacity(0.5),
            backgroundColor: const Color.fromARGB(255, 255, 157, 1),
            foregroundColor: const Color.fromARGB(255, 11, 49, 94),
          )),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: Color.fromARGB(255, 11, 49, 94),
                fontSize: 18,
                fontWeight: FontWeight.bold),
            displayLarge: TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 11, 49, 94)),
            displayMedium:
                TextStyle(fontSize: 25, color: Color.fromARGB(255, 11, 49, 94)),
            displaySmall:
                TextStyle(fontSize: 25, color: Color.fromARGB(255, 11, 49, 94)),
          ),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 250, 245, 239),
              iconTheme: IconThemeData(
                  color: Color.fromARGB(255, 255, 157, 1), size: 24))),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
