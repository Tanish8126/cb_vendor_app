// ignore_for_file: use_build_context_synchronously

import 'package:cb_vendor_app/screens/splash-to-home/login_screen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import '../../../utils/default_button.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final email = FirebaseAuth.instance.currentUser!.email;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kPrimaryColor,
      //elevation: 16,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 30),
        child: ListView(children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(
                'https://picsum.photos/seed/457/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '$email',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 15,
                thickness: 2,
                color: kMainColor,
              ),
              buildAccountOptionRow(context, "Profile", () {}),
              buildAccountOptionRow(context, "Setting", () {}),
              buildAccountOptionRow(context, "Notifications", () {}),
              const SizedBox(
                height: 50,
              ),
              DefaultButton(
                press: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
                },
                text: 'Sign Out',
                size: 20,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

GestureDetector buildAccountOptionRow(
    BuildContext context, String title, Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: kCream,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: kCream,
          ),
        ],
      ),
    ),
  );
}
