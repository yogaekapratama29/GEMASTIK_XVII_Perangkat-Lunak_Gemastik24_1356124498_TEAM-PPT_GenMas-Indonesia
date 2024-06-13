import 'package:aplikasi_wisata/Profile%20Provider/profile_provider.dart';
import 'package:aplikasi_wisata/pages/HomePage.dart';
import 'package:aplikasi_wisata/pages/onboarding_screen.dart';
import 'package:aplikasi_wisata/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
    ChangeNotifierProvider(create: (_) => ProfileProvider(), child: MyApp()));

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
