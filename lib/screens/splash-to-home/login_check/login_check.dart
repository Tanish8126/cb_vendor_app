import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../login_screen/loginscreen.dart';
import '../../main_screen/main_screen.dart';

class LoginCheck extends StatelessWidget {
  const LoginCheck({super.key});
  static String routeName = "/logincheck";

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return const MainScreen();
          } else {
            return LoginScreen();
          }
        });
  }
}
