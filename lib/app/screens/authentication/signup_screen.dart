import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../global/global.dart';
import '../../themes/ThemeHelper.dart';
import '../../themes/light_color.dart';
import '../../widgets/progress_dialog.dart';
import '../splashscreen/splash_screen.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstNameTextEditingController =
      TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmationPasswordTextEditingController =
      TextEditingController();

  validateForm() {
    if (firstNameTextEditingController.text.length < 3) {
      Fluttertoast.showToast(
          msg: "le nom doit comporter au moins 3 caractères.");
    } else if (lastNameTextEditingController.text.length < 3) {
      Fluttertoast.showToast(
          msg: "le prénom de famille doit comporter au moins 3 caractères.");
    } else if (!emailTextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "L'adresse email n'est pas valide.");
    } else if (passwordTextEditingController.text.length < 6) {
      Fluttertoast.showToast(
          msg: "Le mot de passe doit être au moins de 6 caractères.");
    } else if (confirmationPasswordTextEditingController.text !=
        passwordTextEditingController.text) {
      Fluttertoast.showToast(
          msg: "le mot de passe et la confirmation ne correspondent pas.");
    } else {
      saveUserInfoNow();
    }
  }

  saveUserInfoNow() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return ProgressDialog(
            message: "Traitement en cours, veuillez patienter...",
          );
        });

    final User? firebaseUser = (await fAuth
            .createUserWithEmailAndPassword(
      email: emailTextEditingController.text.trim(),
      password: passwordTextEditingController.text.trim(),
    )
            .catchError((msg) {
      Navigator.pop(context);
      Fluttertoast.showToast(msg: "Error: " + msg.toString());
    }))
        .user;

    if (firebaseUser != null) {
      Map clientMap = {
        "clientid": firebaseUser.uid,
        "firstname": firstNameTextEditingController.text.trim(),
        "lastname": lastNameTextEditingController.text.trim(),
        "age": ageTextEditingController.text.trim(),
        "email": emailTextEditingController.text.trim(),
        "password": passwordTextEditingController.text.trim(),
      };

      DatabaseReference clientsRef =
          FirebaseDatabase.instance.ref().child("clients");
      clientsRef.child(firebaseUser.uid).set(clientMap);

      currentFirebaseUser = firebaseUser;
      Fluttertoast.showToast(msg: "Le compte a été créé.");
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const SplashScreen()));
    } else {
      Navigator.pop(context);
      Fluttertoast.showToast(msg: "Le compte n'a pas été créé.");
    }
  }

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
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => LoginScreen()));
          },
        ),
        title: const Text(
          'Se Créer un compte ',
          style: TextStyle(color: LightColor.blackColor, fontSize: 24),
        ),
      ),
      backgroundColor: LightColor.WhiteForbackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/person01.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: firstNameTextEditingController,
                decoration: ThemeHelper()
                    .textInputDecorationName('Nom', 'Entrez votre nom'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: lastNameTextEditingController,
                decoration: ThemeHelper()
                    .textInputDecorationName('Prénom', 'Entrez votre prénom'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: ageTextEditingController,
                decoration: ThemeHelper()
                    .textInputDecorationAge('Âge', 'Entrez votre âge'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: emailTextEditingController,
                decoration: ThemeHelper().textInputDecorationEmail(
                    'Adresse email', 'Entrez votre adresse email'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordTextEditingController,
                decoration: ThemeHelper().textInputDecorationKey(
                    'Mot de passe', 'Entrez votre mot de passe'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: confirmationPasswordTextEditingController,
                decoration: ThemeHelper().textInputDecorationKey(
                    'Confirmation', 'Confirmez votre mot de passe'),
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
                  child: Text(
                    "Créer".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  validateForm();
                },
              ),
              const SizedBox(height: 20.0),
              TextButton(
                child: const Text(
                  "Vous avez déjà un compte? Connectez-vous ici",
                  style: TextStyle(color: LightColor.blackColor),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
