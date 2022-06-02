import 'dart:async';

import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/information/first_information_screen.dart';
import 'package:soraeir/app/screens/navscreens/home_screen.dart';
import 'package:soraeir/app/screens/navscreens/main_screen.dart';
import 'package:soraeir/app/themes/light_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
    });
  }

  // startTimer() {
  //   fAuth.currentUser != null
  //       ? AssistantMethods.readCurrentOnlineUserInfo()
  //       : null;
  //   Timer(const Duration(seconds: 3), () async {
  //     if (await fAuth.currentUser != null) {
  //       currentFirebaseUser = fAuth.currentUser;
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (c) => const MainScreen()));
  //     } else {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (c) => LoginScreen()));
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: LightColor.turquoiseColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo02.png",
                height: 250.0,
                width: 300.0,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Welcome in SORAEIR your mobile pharmacy",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Nunito"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
