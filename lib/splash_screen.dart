import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.gotoIntroScreen});
  final void Function() gotoIntroScreen;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  String path = 'assets/splash1.png';
  @override
  initState(){
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (path=='assets/splash2.png'){
        timer.cancel();
        widget.gotoIntroScreen();
      } else {
        setState(() {
          path='assets/splash2.png';
        });
      }
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.fill)
      ),
    );
  }
}