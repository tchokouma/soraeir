import 'package:firebase_database/firebase_database.dart';

class ClientModel {
  int? clientid;
  String? firstname;
  String? lastname;
  String? age;
  String? email;
  String? password;

  ClientModel(
      {this.clientid,
      this.firstname,
      this.lastname,
      this.age,
      this.email,
      this.password});

  // ClientModel.fromSnapshot(DataSnapshot snap) {
  //   clientid = snap.key;
  //   firstname = (snap.value as dynamic)["firstname"];
  //   lastname = (snap.value as dynamic)["lastname"];
  //   age = (snap.value as dynamic)["age"];
  //   email = (snap.value as dynamic)["email"];
  //   password = (snap.value as dynamic)["password"];
  // }
}
