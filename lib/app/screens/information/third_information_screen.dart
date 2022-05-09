import 'package:flutter/material.dart';
import 'package:soraeir/app/screens/information/second_information_screen.dart';

import '../../themes/ThemeHelper.dart';
import '../../themes/light_color.dart';
import '../authentication/login_screen.dart';

class ThirdInformationScreen extends StatelessWidget {
  const ThirdInformationScreen({Key? key}) : super(key: key);

  get color => null;

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
                    builder: (c) => const SecondInformationScreen()));
          },
        ),
      ),
      //backgroundColor: LightColor.WhiteForbackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/logo03.png"),
          ),
          const SizedBox(
            height: 15,
          ),
          const Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.fromLTRB(34, 0, 38, 0),
              child: Text(
                "Orbis proximorum iracundae vel iracundae et suspicionum fictis cuius terrarum cuius et simulantium proximorum inminuta si et simulantium dolere enim dolere si cuius pendere salute amplitudo vocibus exclamabant terrarum statum.",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.5,
                  wordSpacing: 0.5,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Image.asset("assets/images/default01.png"),
          ),
          Expanded(
            flex: 3,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                          fontSize: 84, color: LightColor.blackColor)),
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
                      "Terminer",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => LoginScreen()));
                  },
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
