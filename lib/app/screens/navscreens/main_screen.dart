import 'package:flutter/material.dart';
import '../../themes/light_color.dart';
import 'TabNavigator.dart';
import 'search_screen.dart';
import 'contact_screen.dart';
import 'home_screen.dart';
import 'my_account_screen.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//         tabBar: CupertinoTabBar(
//           border: Border(),
//           backgroundColor: LightColor.whiteColor,
//           activeColor: LightColor.turquoiseColor,
//           inactiveColor: LightColor.blackColor,
//           height: 58.0,
//           items: const <BottomNavigationBarItem>[
//             //active color use on first

//             BottomNavigationBarItem(
//                 icon: Icon(Icons.home_outlined, size: 36.0), label: 'Accueil'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.search, size: 36.0), label: 'Recherche'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.phone, size: 36.0), label: 'Contact'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person_outline_sharp, size: 36.0),
//                 label: 'Mon profile'),
//           ],
//         ),
//         tabBuilder: (context, index) {
//           switch (index) {
//             case 0:
//               return CupertinoTabView(builder: (context) {
//                 return CupertinoPageScaffold(
//                   child: HomeScreen(),
//                 );
//               });
//             case 1:
//               return CupertinoTabView(builder: (context) {
//                 return CupertinoPageScaffold(
//                   child: Container(
//                     child: SearchScreen(),
//                   ),
//                 );
//               });
//             case 2:
//               return CupertinoTabView(builder: (context) {
//                 return CupertinoPageScaffold(
//                   child: Container(
//                     child: ContactScreen(),
//                   ),
//                 );
//               });
//             case 3:
//               return CupertinoTabView(builder: (context) {
//                 return CupertinoPageScaffold(
//                   child: Container(
//                     child: MyAccountScreen(),
//                   ),
//                 );
//               });

//             default:
//               CupertinoTabView(builder: (context) {
//                 return CupertinoPageScaffold(
//                   child: Container(
//                     child: HomeScreen(),
//                   ),
//                 );
//               });
//           }
//           ;
//           return Container();
//         });
//   }
// }

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int counter = 0;
  List<Widget> screens = [
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
    return Scaffold(
      backgroundColor: LightColor.WhiteForbackgroundColor,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 12,
          selectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          backgroundColor: LightColor.whiteColor,
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

// class MainScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => MainScreenState();
// }

// class MainScreenState extends State<MainScreen> {
//   int _currentPage = 0;
//   List pageKeys = [
//     HomeScreen(),
//     SearchScreen(),
//     ContactScreen(),
//     MyAccountScreen()
//   ];
//   Map<int, GlobalKey<NavigatorState>> _navigatorKeys = {
//     0: GlobalKey<NavigatorState>(),
//     1: GlobalKey<NavigatorState>(),
//     2: GlobalKey<NavigatorState>(),
//     3: GlobalKey<NavigatorState>(),
//   };
//   int _selectedIndex = 0;

//   void _selectTab(String tabItem, int index) {
//     if (tabItem == _currentPage) {
//       _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
//     } else {
//       setState(() {
//         _currentPage = pageKeys[index];
//         _selectedIndex = index;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         final isFirstRouteInCurrentTab =
//             !await _navigatorKeys[_currentPage]!.currentState!.maybePop();
//         if (isFirstRouteInCurrentTab) {
//           if (_currentPage != 0) {
//             _selectTab("Accueil", 1);

//             return false;
//           }
//         }
//         // let system handle back button if we're on the first route
//         return isFirstRouteInCurrentTab;
//       },
//       child: Scaffold(
//         body: Stack(children: <Widget>[
//           _buildOffstageNavigator("0"),
//           _buildOffstageNavigator("1"),
//           _buildOffstageNavigator("2"),
//           _buildOffstageNavigator("3"),
//         ]),
//         bottomNavigationBar: BottomNavigationBar(
//           selectedItemColor: Colors.blueAccent,
//           onTap: (int index) {
//             _selectTab(pageKeys[index], index);
//           },
//           currentIndex: _selectedIndex,
//           items: [
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.home_outlined),
//               label: 'Accueil',
//             ),
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.search),
//               label: 'Recherche',
//             ),
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.phone),
//               label: 'Contact',
//             ),
//             BottomNavigationBarItem(
//               icon: new Icon(Icons.person_outline_sharp),
//               label: 'Mon compte',
//             ),
//           ],
//           type: BottomNavigationBarType.fixed,
//         ),
//       ),
//     );
//   }

//   Widget _buildOffstageNavigator(String tabItem) {
//     return Offstage(
//       offstage: _currentPage != tabItem,
//       child: TabNavigator(
//         navigatorKey: _navigatorKeys[tabItem]!,
//         tabItem: tabItem,
//       ),
//     );
//   }
// }
