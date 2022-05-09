





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:soraeir/app/themes/light_color.dart';

import '../../themes/ThemeHelper.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget
{
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}



class _SignUpScreenState extends State<SignUpScreen>
{
  TextEditingController firstNameTextEditingController = TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();
  TextEditingController phoneNumberTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  //
  // validateForm()
  // {
  //   if(firstNameTextEditingController.text.length < 3)
  //   {
  //     Fluttertoast.showToast(msg: "name must be atleast 3 Characters.");
  //   }
  //   else if(!emailTextEditingController.text.contains("@"))
  //   {
  //     Fluttertoast.showToast(msg: "Email address is not Valid.");
  //   }
  //   else if(phoneTextEditingController.text.isEmpty)
  //   {
  //     Fluttertoast.showToast(msg: "Phone Number is required.");
  //   }
  //   else if(passwordTextEditingController.text.length < 6)
  //   {
  //     Fluttertoast.showToast(msg: "Password must be atleast 6 Characters.");
  //   }
  //   else
  //   {
  //     saveUserInfoNow();
  //   }
  // }

  // saveUserInfoNow() async
  // {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext c)
  //       {
  //         return ProgressDialog(message: "Processing, Please wait...",);
  //       }
  //   );
  //
  //   final User? firebaseUser = (
  //       await fAuth.createUserWithEmailAndPassword(
  //         email: emailTextEditingController.text.trim(),
  //         password: passwordTextEditingController.text.trim(),
  //       ).catchError((msg){
  //         Navigator.pop(context);
  //         Fluttertoast.showToast(msg: "Error: " + msg.toString());
  //       })
  //   ).user;
  //
  //   if(firebaseUser != null)
  //   {
  //     Map userMap =
  //     {
  //       "id": firebaseUser.uid,
  //       "name": nameTextEditingController.text.trim(),
  //       "email": emailTextEditingController.text.trim(),
  //       "phone": phoneTextEditingController.text.trim(),
  //     };
  //
  //     DatabaseReference driversRef = FirebaseDatabase.instance.ref().child("users");
  //     driversRef.child(firebaseUser.uid).set(userMap);
  //
  //     currentFirebaseUser = firebaseUser;
  //     Fluttertoast.showToast(msg: "Account has been Created.");
  //     Navigator.push(context, MaterialPageRoute(builder: (c)=> MySplashScreen()));
  //   }
  //   else
  //   {
  //     Navigator.pop(context);
  //     Fluttertoast.showToast(msg: "Account has not been Created.");
  //   }
  // }

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
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
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

             const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/person01.png"),
              ),
              const SizedBox(height: 10,),

              Container(
                child: TextFormField(
                  controller: firstNameTextEditingController
                  ,
                  decoration: ThemeHelper().textInputDecorationName('Nom', 'Entrez votre nom'),
                ),
                //decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 10,),

              Container(
                child: TextFormField(
                  controller: lastNameTextEditingController
                  ,
                  decoration: ThemeHelper().textInputDecorationName('Prénom', 'Entrez votre prénom'),
                ),
                //decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 10,),

              Container(
                child: TextFormField(
                  controller: ageTextEditingController
                  ,
                  decoration: ThemeHelper().textInputDecorationAge('Âge', 'Entrez votre âge'),
                ),
                //decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 10,),

              Container(
                child: TextFormField(
                  controller: phoneNumberTextEditingController
                  ,
                  decoration: ThemeHelper().textInputDecorationPhone('Adresse email', 'Entrez votre adresse email'),
                ),
                //decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 10,),

              Container(
                child: TextFormField(
                  controller: phoneNumberTextEditingController
                  ,
                  decoration: ThemeHelper().textInputDecorationKey('Mot de passe', 'Entrez votre mot de passe'),
                ),
                //decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 10,),

              Container(
                child: TextFormField(
                  controller: phoneNumberTextEditingController
                  ,
                  decoration: ThemeHelper().textInputDecorationKey('Confirmation', 'Confirmez votre mot de passe'),
                ),
                //decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              const SizedBox(height: 10,),

            


              //
              // TextFormField(
              //   controller: firstNameTextEditingController,
              //   style: const TextStyle(
              //       color: Colors.grey
              //   ),
              //   decoration: const InputDecoration(
              //     labelText: "Name",
              //     hintText: "Name",
              //     enabledBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.grey),
              //     ),
              //     focusedBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.grey),
              //     ),
              //     hintStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 10,
              //     ),
              //     labelStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 14,
              //     ),
              //   ),
              // ),
              //
              // TextField(
              //   controller: lastNameTextEditingController,
              //   keyboardType: TextInputType.emailAddress,
              //   style: const TextStyle(
              //       color: Colors.grey
              //   ),
              //   decoration: const InputDecoration(
              //     labelText: "Email",
              //     hintText: "Email",
              //     enabledBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.grey),
              //     ),
              //     focusedBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.grey),
              //     ),
              //     hintStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 10,
              //     ),
              //     labelStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 14,
              //     ),
              //   ),
              // ),
              //
              // TextField(
              //   controller: phoneNumberTextEditingController,
              //   keyboardType: TextInputType.phone,
              //   style: const TextStyle(
              //       color: Colors.grey
              //   ),
              //   decoration: const InputDecoration(
              //     labelText: "Phone",
              //     hintText: "Phone",
              //     enabledBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.grey),
              //     ),
              //     focusedBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.grey),
              //     ),
              //     hintStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 10,
              //     ),
              //     labelStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 14,
              //     ),
              //   ),
              // ),
              //
              // TextField(
              //   controller: passwordTextEditingController,
              //   keyboardType: TextInputType.text,
              //   obscureText: true,
              //   style: const TextStyle(
              //       color: Colors.grey
              //   ),
              //   decoration: const InputDecoration(
              //     labelText: "Password",
              //     hintText: "Password",
              //     enabledBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.grey),
              //     ),
              //     focusedBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.grey),
              //     ),
              //     hintStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 10,
              //     ),
              //     labelStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 14,
              //     ),
              //   ),
              // ),

              const SizedBox(height: 20,),

              SizedBox(height: 30.0),
              Container(
               // decoration: ThemeHelper().buttonBoxDecoration(context),
                child: ElevatedButton(
                  style: ThemeHelper().buttonStyle(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
                    child: Text(
                      "Créer".toUpperCase(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {

                  },
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(
                child: const Text(
                  "Vous avez déjà un compte? Connectez-vous ici",
                  style: TextStyle(color: LightColor.blackColor),
                ),
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
