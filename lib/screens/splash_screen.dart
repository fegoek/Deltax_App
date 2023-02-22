// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:deltax/screens/onboarding_screen.dart';
import 'package:deltax/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
     bool isViewed = true;
  var size, height, width;

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 6),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnboardingScreen())));
  }


  @override
  Widget build(BuildContext context) {


    // getting the size of the device
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Image.asset(
          "assets/images/deltax_logo.png",
        ));
  }
}