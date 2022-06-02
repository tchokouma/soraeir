import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/navscreens/contact_screen.dart';
import 'package:soraeir/app/screens/navscreens/home_screen.dart';
import 'package:soraeir/app/screens/navscreens/my_account_screen.dart';
import 'package:soraeir/app/screens/navscreens/search_screen.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == 0)
      child = HomeScreen();
    else if (tabItem == 1)
      child = SearchScreen();
    else if (tabItem == 2)
      child = ContactScreen();
    else if (tabItem == 3) child = MyAccountScreen();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      },
    );
  }
}
