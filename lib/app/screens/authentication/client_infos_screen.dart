import 'package:flutter/material.dart';

class ClientInfoScreen extends StatefulWidget {
  const ClientInfoScreen({Key? key}) : super(key: key);

  @override
  State<ClientInfoScreen> createState() => _ClientInfoScreenState();
}

class _ClientInfoScreenState extends State<ClientInfoScreen> {
  //  Map clientMap = {
  //       "clientid": firebaseUser.clientid,
  //       "firstname": firstNameTextEditingController.text.trim(),
  //       "lastname": lastNameTextEditingController.text.trim(),
  //       "age": ageTextEditingController.text.trim(),
  //       "email": emailTextEditingController.text.trim(),
  //       "password": passwordTextEditingController.text.trim(),
  //     };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            child: const Text("client infos screen !"),
          )
        ],
      )),
    );
  }
}
