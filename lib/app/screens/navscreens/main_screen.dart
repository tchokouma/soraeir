import 'package:flutter/material.dart';
import '../../themes/light_color.dart';

import 'search_screen.dart';
import 'contact_screen.dart';
import 'home_screen.dart';
import 'my_account_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  List screens = [
    HomeScreen(),
    SearchScreen(),
    ContactScreen(),
    MyAccountScreen()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SORAEIR"),
        backgroundColor: LightColor.turquoiseColor,
      ),
      backgroundColor: LightColor.WhiteForbackgroundColor,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: LightColor.turquoiseColor,
          unselectedItemColor: LightColor.blackColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 32.0), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 32.0), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone, size: 32.0), label: "phone"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded, size: 32.0),
                label: "account"),
          ]),
    );
  }
}
