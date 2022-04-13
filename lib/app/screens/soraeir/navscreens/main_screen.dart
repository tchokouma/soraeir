

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/soraeir/navscreens/search_screen.dart';

import '../../../themes/light_color.dart';
import 'contact_screen.dart';
import 'home_screen.dart';
import 'my_account_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  List screens = [HomeScreen(), SearchScreen(), ContactScreen(), MyAccountScreen() ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SORAEIR"),
        backgroundColor: LightColor.turquoise,
      ),
      backgroundColor: LightColor.blanche,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white ,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: LightColor.turquoise,
          unselectedItemColor: LightColor.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined  , size: 30.0), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search , size: 30.0) , label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.phone, size: 30.0) , label: "phone"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded, size: 30.0) , label: "account"),
            // BottomNavigationBarItem(icon: Image.asset('assets/images/agriculture-irrigation.png',width: 30, height: 30), label: "agriculture irrigation"),
          ]),
    );
  }
}