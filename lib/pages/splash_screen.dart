import 'dart:async';
import 'package:aplikasi_wisata/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboardingscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 244, 114, 181),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Text(
              "GenMas",
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.15,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Indonesia",
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.1,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.0),
            Expanded(
              child: Image.asset(
                "images/logo.png",
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width * 0.7,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.0),
            Image.asset(
              "images/logo_telkom.png",
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
