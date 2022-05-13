import 'package:firebase_auth/firebase_auth.dart';
import 'package:soraeir/models/client_model.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;
ClientModel? clientModelCurrentInfo;

//panier
int counterPanier = 10;
int counterNotifications = 10;
