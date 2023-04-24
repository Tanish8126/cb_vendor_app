import 'package:flutter/material.dart';

import 'components/body.dart';

class OrdersScreen extends StatelessWidget {
  static String routeName = './orderscreen';
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Body(),
    ));
  }
}
