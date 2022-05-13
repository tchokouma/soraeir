import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:soraeir/app/screens/authentication/signup_screen.dart';

import 'package:soraeir/app/screens/navscreens/main_screen.dart';

import 'package:soraeir/app/themes/light_color.dart';

import '../../../global/global.dart';
import '../../themes/ThemeHelper.dart';
import '../../widgets/progress_dialog.dart';
import '../splashscreen/splash_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  validateForm() {
    if (!emailTextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "Email address is not Valid.");
    } else if (passwordTextEditingController.text.isEmpty) {
      Fluttertoast.showToast(msg: "Password is required.");
    } else {
      loginUserNow();
    }
  }

  loginUserNow() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return ProgressDialog(
            message: "Processing, Please wait...",
          );
        });

    final User? firebaseUser = (await fAuth
            .signInWithEmailAndPassword(
      email: emailTextEditingController.text.trim(),
      password: passwordTextEditingController.text.trim(),
    )
            .catchError((msg) {
      Navigator.pop(context);
      Fluttertoast.showToast(msg: "Error: " + msg.toString());
    }))
        .user;

    if (firebaseUser != null) {
      DatabaseReference usersRef =
          FirebaseDatabase.instance.ref().child("clients");
      usersRef.child(firebaseUser.uid).once().then((clientKey) {
        final snap = clientKey.snapshot;
        if (snap.value != null) {
          Fluttertoast.showToast(msg: "Login Successful.");
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => const SplashScreen()));
        } else {
          Fluttertoast.showToast(msg: "No record exist with this email.");
          fAuth.signOut();
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => const SplashScreen()));
        }
      });
    } else {
      Navigator.pop(context);
      Fluttertoast.showToast(msg: "Error Occurred during Login.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          tooltip: 'Back Icon',
          icon: const Icon(
            Icons.arrow_back,
            color: LightColor.blackColor,
            size: 28,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => SignUpScreen()));
          },
        ),
      ),
      backgroundColor: LightColor.WhiteForbackgroundColor,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Column(
              children: [
                //const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/logo03.png"),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/person01.png"),
                ),

                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Bienvenue,",
                  style: TextStyle(
                    fontSize: 20,
                    color: LightColor.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Veuillez vous identifier",
                  style: TextStyle(
                    fontSize: 20,
                    color: LightColor.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  child: TextFormField(
                    controller: emailTextEditingController,
                    decoration: ThemeHelper().textInputDecorationPhone(
                        'Email', 'Entrez votre login'),
                  ),
                  //decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextFormField(
                    controller: passwordTextEditingController,
                    decoration: ThemeHelper().textInputDecorationKey(
                        'Mot de passe', 'Entrez votre mot de passe'),
                  ),
                  //decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),

                const SizedBox(
                  height: 50,
                ),

                Container(
                  // decoration: ThemeHelper().buttonBoxDecoration(context),
                  child: ElevatedButton(
                    style: ThemeHelper().buttonStyle(),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(75, 15, 75, 15),
                      child: Text(
                        "Se connecter",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                TextButton(
                  child: const Text(
                    "Mot de passe oublié? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => SignUpScreen()));
                  },
                ),
                const SizedBox(
                  height: 30,
                ),

                // ElevatedButton(
                //   onPressed: ()
                //   {
                //     //validateForm();
                //   },
                //   style: ElevatedButton.styleFrom(
                //     padding: EdgeInsets.symmetric(horizontal: 130, vertical: 22),
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18.0),
                //         side: const BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                //     // textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                //     primary: LightColor.turquoiseColor,
                //   ),
                //   child: const Text(
                //     "Créer un compte",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 10,
                //     ),
                //   ),
                // ),

                // OutlinedButton.icon(
                //   icon: Icon(Icons.call),
                //   label: Text("OutlinedButton"),
                //   onPressed: () => print("it's pressed"),
                //   style: ElevatedButton.styleFrom(
                //     side: BorderSide(width: 2.0, color: Colors.blue),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(32.0),
                //     ),
                //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                //   ),
                // ),

                OutlinedButton(
                  child: Text(
                    "Créer un compte",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => SignUpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        width: 5.0, color: LightColor.turquoiseColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    padding: EdgeInsets.fromLTRB(75, 15, 75, 15),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: TextButton(
                    child: const Text(
                      "Passer cette étape -->",
                      style:
                          TextStyle(color: LightColor.blackColor, fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => MainScreen()));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
