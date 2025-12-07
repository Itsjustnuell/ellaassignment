import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/sign_in_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const MaterialColor primaryBlue = MaterialColor(
    0xFF246BFD,
    <int, Color>{
      50: Color(0xFFE3EEFF),
      100: Color(0xFFB3D1FF),
      200: Color(0xFF80B3FF),
      300: Color(0xFF4D94FF),
      400: Color(0xFF267DFF),
      500: Color(0xFF0066FF),
      600: Color(0xFF005CE6),
      700: Color(0xFF0050CC),
      800: Color(0xFF0045B3),
      900: Color(0xFF003386),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Auth Example",
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryBlue,
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: const SignInScreen(),
    );
  }
}
