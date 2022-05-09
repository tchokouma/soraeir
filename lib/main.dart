import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soraeir/app/screens/authentication/forgot_password_screen.dart';
import 'package:soraeir/app/screens/authentication/login_screen.dart';
import 'package:soraeir/app/screens/information/first_information_screen.dart';
import 'package:soraeir/app/screens/information/third_information_screen.dart';
import 'package:soraeir/app/screens/splashscreen/splash_screen.dart';

import 'app/screens/authentication/signup_screen.dart';
import 'app/screens/information/essai.dart';
import 'app/themes/light_color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: LightColor.turquoiseColor,
    //color set to purple or set your own color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Instagram UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen());
  }
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     statusBarColor: LightColor.turquoiseColor,
//     //color set to purple or set your own color
//   ));
//   runApp(
//     MyApp(
//       child: const MaterialApp(
//         //title: 'SORAEIR',
//         // theme: ThemeData(
//         //   primarySwatch: Colors.blue,
//         // ),
//         home: SplashScreen(),
//         debugShowCheckedModeBanner: false,
//       ),
//     ),
//   );
// }

// class MyApp extends StatefulWidget {
//   final Widget? child;

//   MyApp({this.child});

//   static void restartApp(BuildContext context) {
//     context.findAncestorStateOfType<_MyAppState>()!.restartApp();
//   }

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Key key = UniqueKey();

//   void restartApp() {
//     setState(() {
//       key = UniqueKey();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return KeyedSubtree(
//       key: key,
//       child: widget.child!,
//     );
//   }
// }
