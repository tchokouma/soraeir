

import 'package:firebase_database/firebase_database.dart';

class ClientModel{
  String? clientId;
  String? firstname;
  String? lastname;
  String? age;
  String? phoneNumber;
  String? password;

  ClientModel({ this.clientId, this.firstname, this.lastname, this.age, this.phoneNumber, this.password});

  ClientModel.fromSnapshot(DataSnapshot snap){
    clientId = snap.key;
    firstname = (snap.value as dynamic)["firstname"];
    lastname = (snap.value as dynamic)["lastname"];
    age = (snap.value as dynamic)["age"];
    phoneNumber = (snap.value as dynamic)["phoneNumber"];
    password = (snap.value as dynamic)["password"];
  }
}