import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/information/first_information_screen.dart';
import 'package:soraeir/app/screens/information/third_information_screen.dart';
import 'package:soraeir/app/themes/light_color.dart';

import '../../themes/ThemeHelper.dart';

class SecondInformationScreen extends StatelessWidget {
  const SecondInformationScreen({Key? key}) : super(key: key);

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
              size: 22,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => const FirstInformatioScreen()));
            },
          ),
        ),
        backgroundColor: LightColor.WhiteForbackgroundColor,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logo03.png",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Pas besoin de vous déplacer pour des medicaments, nous vous livrons.",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5,
                      wordSpacing: 0.5,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 3, child: Image.asset("assets/images/default01.png")),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          ".",
                          style: TextStyle(
                              fontSize: 84, color: LightColor.blackColor),
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
                                  builder: (c) =>
                                      const ThirdInformationScreen()));
                        },
                      ),
                    )
                  ],
                )),
          ],
        ));
  }
}
