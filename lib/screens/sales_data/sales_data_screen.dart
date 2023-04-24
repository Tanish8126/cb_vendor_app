import 'package:cb_vendor_app/utils/constants/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SalesDataScreen extends StatelessWidget {
  static String routeName = './salesdata';
  const SalesDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kCream,
      appBar: AppBar(
        title: const Text("Sales Data"),
      ),
      body: const Body(),
    ));
  }
}
