import 'package:dicoding_projects/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dicoding Submission",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Color(0xFF212121),
            fontFamily: 'Nunito',
          ),
          bodyMedium: TextStyle(
            color: Color(0xFF212121),
            fontFamily: 'Nunito',
          ),
          bodyLarge: TextStyle(
            color: Color(0xFF212121),
            fontFamily: 'Nunito',
          ),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
