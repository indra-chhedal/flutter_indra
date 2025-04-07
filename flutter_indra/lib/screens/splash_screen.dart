import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_indra/screens/indra_chhedal.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(microseconds: 10000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IndraChhedal()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SvgPicture.asset(
          'images/svg_images/google.svg',
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
