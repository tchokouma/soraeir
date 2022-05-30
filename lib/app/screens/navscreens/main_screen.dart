import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/authentication/login_screen.dart';
import '../../themes/light_color.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
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
  int counter = 0;
  List screens = [
    HomeScreen(),
    SearchScreen(),
    ContactScreen(),
    MyAccountScreen()
  ];

  int currentIndex = 0;
  void onTap(int index) {
    if (index != 3) {
      setState(() {
        currentIndex = index;
      });
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => MyAccountScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
      backgroundColor: LightColor.WhiteForbackgroundColor,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 12,
          selectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: LightColor.turquoiseColor,
          unselectedItemColor: LightColor.blackColor.withOpacity(0.8),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 36.0), label: 'Accueil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 36.0), label: 'Recherche'),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone, size: 36.0), label: 'Contact'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp, size: 36.0),
                label: 'Mon profile'),
          ]),
    );
  }
}
