import 'package:aplikasi_wisata/pages/HomePage.dart';
import 'package:aplikasi_wisata/pages/onboarding_screen.dart';
import 'package:aplikasi_wisata/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
