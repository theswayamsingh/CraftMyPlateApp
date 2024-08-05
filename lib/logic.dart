import 'package:flutter/material.dart';
import 'package:craftmyplateapp/home_screen.dart';
import 'package:craftmyplateapp/intro_screen.dart';
import 'package:craftmyplateapp/login_screen.dart';
import 'package:craftmyplateapp/name_email_screen.dart';
import 'package:craftmyplateapp/splash_screen.dart';
import 'package:craftmyplateapp/verify_screen.dart';

class Logic extends StatefulWidget {
  const Logic({super.key});

  @override
  State<Logic> createState() => _LogicState();
}

class _LogicState extends State<Logic> {
  String activeScreen ='splash-screen';
  Widget? screenWidget;

  switchtoIntroScreen(){
    setState(() {
      activeScreen='intro-screen';
    });
  }

  switchtoLoginScreen(){
    setState(() {
      activeScreen='login-screen';
    });
  }

  switchtoVerifyScreen(){
    setState(() {
      activeScreen='verify-screen';
    });
  }

  switchtoEmailNameScreen(){
    setState(() {
      activeScreen='email-name-screen';
    });
  }  

  switchtoHomeScreen(){
    setState(() {
      activeScreen='home-screen';
    });
  } 

  @override
  Widget build(BuildContext context) {

    if (activeScreen=='splash-screen'){
      screenWidget = SplashScreen(gotoIntroScreen: switchtoIntroScreen);
    }

    if (activeScreen == 'intro-screen'){
      screenWidget = IntroScreen(gotoLoginScreen: switchtoLoginScreen,);
    }

    if (activeScreen == 'login-screen'){
      screenWidget = LoginScreen(gotoVerifyScreen: switchtoVerifyScreen,);
    }

    if (activeScreen == 'verify-screen'){
      screenWidget = VerifyScreen(
        gotoEmailNameScreen: switchtoEmailNameScreen,
        gotoLoginScreen: switchtoLoginScreen,);
    }

    if (activeScreen == 'email-name-screen'){
      screenWidget = NameEmailScreen(
        gotoVerifyScreen: switchtoVerifyScreen,
        gotoHomeScreen: switchtoHomeScreen,);
    }

    if (activeScreen == 'home-screen'){
      screenWidget = HomeScreen(gotoLoginScreen: switchtoLoginScreen,);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // resizeToAvoidBottomInset: false,
          body: screenWidget,
        ),
      ),
    );
  }
}