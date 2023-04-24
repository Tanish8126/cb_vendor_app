import 'package:flutter/material.dart';

import '../notification_screen/notification_screen.dart';
import 'components/body.dart';
import 'components/drawer_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = './home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("CB:001"),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, NotificationScreen.routeName);
              },
              icon: const Icon(
                Icons.notifications_active,
                size: 25,
              ),
            ),
          )
        ],
      ),
      drawer: const DrawerScreen(),
      body: const Body(),
    ));
  }
}
