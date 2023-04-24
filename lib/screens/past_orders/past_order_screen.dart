import 'package:cb_vendor_app/utils/constants/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class PastOrderScreen extends StatelessWidget {
  static String routeName = './pastorders';
  const PastOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Past Orders"),
              backgroundColor: kPrimaryColor,
            ),
            body: const Body()));
  }
}
