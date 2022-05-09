import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soraeir/app/screens/authentication/login_screen.dart';
import 'package:soraeir/app/themes/ThemeHelper.dart';
import 'package:soraeir/app/themes/light_color.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController verifCode = TextEditingController();
  @override
  Widget build(BuildContext context) {




    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            tooltip: 'Close Icon',
            icon: const Icon(
              Icons.close,
              color: LightColor.blackColor,
              size: 32,
            ),
            onPressed: () {
              LoginScreen();
            },
          ),
          title: const Text(
            'Mot de passe oublié ?',
            style: TextStyle(color: LightColor.blackColor, fontSize: 24),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: 90,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 70, 30, 0),
                child: Text("Veuillez indiquer votre Numéro de téléphone"),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
                padding: EdgeInsets.fromLTRB(10, 120, 10, 0),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Form(
                        child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecorationPhone(),
                          ),
                        ),
                        Container(

                        )

                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
