import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

pastOrder() {
  return Column(
    children: [
      Row(
        children: [
          const Text("#123445654"),
          sw03,
          Container(
              decoration: const BoxDecoration(color: Colors.green),
              child: const Text("DELIVERED"))
        ],
      ),
      sh01,
      Row(
        children: [
          const Text("02 Feb,"),
          sw01,
          const Text("10:10 AM"),
          sw01,
          const Text(":"),
          sw01,
          const Text("2 items"),
          const Spacer(),
          Row(
            children: [
              const Text("170"),
              sw01,
              const Icon(Icons.arrow_forward_ios)
            ],
          )
        ],
      ),
      Divider(
        color: kBlack.withOpacity(0.2),
        thickness: 2,
      )
    ],
  );
}
