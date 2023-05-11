import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashPageMe extends StatefulWidget {
  SplashPageMe({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPageMe> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/images/aircraft.png"),
      logoWidth: 250,
      title: const Text(
        "Temukan Freight Forwarder terbaik disini",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      textAlign: TextAlign.left,
      ),
      backgroundColor: const Color.fromARGB(1000, 127, 211, 237),
      showLoader: false,
      // navigator: "/home",
      durationInSeconds: 3,
    );
  }
}
