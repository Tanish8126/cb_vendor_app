import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'state.dart';

class LoginScreenController extends GetxController {
  final _auth = FirebaseAuth.instance;

  signInUser(String email, String password) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  final state = LoginScreenState();
}
