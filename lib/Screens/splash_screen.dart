import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:registertask/Screens/signIn_1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
          width: 164,
          height: 138,
          child: Image.asset('assets/images/uDrive.png')),
      nextScreen: SignIn1(),
      duration: 4000,
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: Duration(seconds: 1),
    );
  }
}
