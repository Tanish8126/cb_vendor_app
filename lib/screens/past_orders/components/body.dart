import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'past_order.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.02),
      child: Column(
        children: [
          pastOrder(),
          pastOrder(),
          pastOrder(),
          pastOrder(),
          pastOrder(),
          pastOrder(),
          TextButton(onPressed: () {}, child: const Text("VIEW ALL ORDERS"))
        ],
      ),
    );
  }
}
