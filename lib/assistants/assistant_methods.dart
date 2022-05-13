import 'package:firebase_database/firebase_database.dart';

import '../global/global.dart';
import '../models/client_model.dart';

class AssistantMethods {
  static void readCurrentOnlineUserInfo() async {
    // currentFirebaseUser = fAuth.currentUser;
    // DatabaseReference userRef = FirebaseDatabase.instance
    //     .ref()
    //     .child("users")
    //     .child(currentFirebaseUser!.uid);
    // userRef.once().then((snap) {
    //   if (snap.snapshot.value != null) {
    // clientModelCurrentInfo = ClientModel.fromSnapshot(snap.snapshot);
    // print("Nom  = " + clientModelCurrentInfo!.firstname.toString());
    // print("email = " + clientModelCurrentInfo!.email.toString());
    // }
    // });
  }
}
