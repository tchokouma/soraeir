import 'package:flutter/material.dart';

import 'package:soraeir/app/screens/information/second_information_screen.dart';
import 'package:soraeir/app/themes/light_color.dart';

import '../../themes/ThemeHelper.dart';

class FirstInformatioScreen extends StatelessWidget {
  const FirstInformatioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.WhiteForbackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/logo01.png",
              height: 100.0,
              width: 260,
            ),
          ),
          const Expanded(
            flex: 1,
            child: Padding(
              //alignment: Alignment.bottomCenter,
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Text(
                "SORAEIR est une pharmacie en ligne, elle utilise des drones pour livrer ses produits vers les endroits reculés du Royaume. Il suffit juste de passer votre commande à partir de cette application mobile que vous détenez entre les mains et la livraison se fera dans les 15 minutes ou plus selon la distance qui nous écarte. ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  wordSpacing: 1,
                  letterSpacing: 1,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/imagedrone01.png",
                height: 80.0,
                width: 180.0,
              )),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      ".",
                      style:
                          TextStyle(fontSize: 84, color: LightColor.blackColor),
                    ),
                    Text(".",
                        style: TextStyle(
                            fontSize: 84, color: LightColor.blackColor)),
                    Text(".",
                        style: TextStyle(
                            fontSize: 84, color: LightColor.grayColor)),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  // decoration: ThemeHelper().buttonBoxDecoration(context),
                  child: ElevatedButton(
                    style: ThemeHelper().buttonStyle(),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(90, 15, 90, 15),
                      child: Text(
                        "Suivant",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const SecondInformationScreen()));
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
