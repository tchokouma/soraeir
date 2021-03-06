import 'dart:async';

import 'package:flutter/material.dart';
import 'package:soraeir/app/themes/light_color.dart';

import '../soraeir/navscreens/main_screen.dart';




class SplashScreen extends StatefulWidget
{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen>
{

  startTimer()
  {
    Timer(const Duration(seconds: 3), () async
    {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> const MainScreen()));
    });
  }

  // startTimer()
  // {
  //   fAuth.currentUser != null ? AssistantMethods.readCurrentOnlineUserInfo() : null;
  //   Timer(const Duration(seconds: 3), () async
  //   {
  //     if(await fAuth.currentUser != null)
  //     {
  //       currentFirebaseUser = fAuth.currentUser;
  //       Navigator.push(context, MaterialPageRoute(builder: (c)=> const MainScreen()));
  //     }
  //     else
  //     {
  //       Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context)
  {
    return Material(
      child: Container(
        color: LightColor.turquoise,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("assets/images/logo02.png", height: 300.0, width: 300.0,),

              const SizedBox(height: 10,),

              const Text(
                "Welcome in SORAEIR your mobile pharmacy",
                style: TextStyle(
                    fontSize:16,
                    color: Colors.white,
                    fontWeight: FontWeight.normal
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}