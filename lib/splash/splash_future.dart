import 'dart:async';
import '../introslider.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashFuturePageMe extends StatefulWidget {
  SplashFuturePageMe({Key? key}) : super(key: key);

  @override
  _SplashFuturePageState createState() => _SplashFuturePageState();
}

class _SplashFuturePageState extends State<SplashFuturePageMe> {
  Future<Widget> futureCall() async {
    // do async operation ( api call, auto login)
    await Future.delayed(const Duration(seconds: 3));
    return CarouselWithIndicatorDemo();
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      title: const Text(
        "RATEXIM",
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      logo: Image.asset("assets/images/splashicon.png"),
      logoWidth: 150,
      backgroundColor: const Color.fromARGB(1000, 127, 211, 237),
      showLoader: false,
      loadingText: const Text(
        "version 1.0.0",
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      futureNavigator: futureCall(),
    );
  }
}
