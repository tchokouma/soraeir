import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../themes/ThemeHelper.dart';
import '../../themes/app_theme.dart';
import '../../themes/light_color.dart';
import '../authentication/signup_screen.dart';
import 'main_screen.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          tooltip: 'Back Icon',
          icon: Icon(
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
                  child: Image.asset(
                    "assets/images/logo03.png",
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/person01.png",
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Bienvenue,",
                  style: TextStyle(
                    fontSize: 20,
                    color: LightColor.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Veuillez vous identifier",
                  style: TextStyle(
                    fontSize: 20,
                    color: LightColor.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                  height: 15,
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
                  height: 35,
                ),

                Container(
                  // decoration: ThemeHelper().buttonBoxDecoration(context),
                  child: ElevatedButton(
                    style: ThemeHelper().buttonStyle(),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(105, 15, 105, 15),
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
                  child: Text(
                    "Mot de passe oublié ? ",
                    style: AppTheme.themeBlackText.textTheme.headline6,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => SignUpScreen()));
                  },
                ),
                const SizedBox(
                  height: 30,
                ),

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
                        width: 3.0, color: LightColor.turquoiseColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    padding: EdgeInsets.fromLTRB(95, 15, 95, 15),
                  ),
                ),

                SizedBox(
                  height: 55,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 200,
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => MainScreen()))
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Text(
                              "Passer a la pharmacie",
                              style:
                                  AppTheme.themeBlackText.textTheme.headline6,
                            ),
                            Transform.rotate(
                              angle: math.pi,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: LightColor.blackColor,
                                  size: 32.0,
                                ),
                                onPressed: null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
