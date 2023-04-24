import 'package:flutter/material.dart';

import 'components/body.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = './orderscreen';
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Body(),
    ));
  }
}
