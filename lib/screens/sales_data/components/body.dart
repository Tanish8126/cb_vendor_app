import 'package:cb_vendor_app/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pda(0.01),
      child: Column(
        children: [
          Container(
            padding: pda(0.02),
            decoration: const BoxDecoration(color: kWhite),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text("Sales overview"),
                    Spacer(),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                Divider(
                  color: kBlack.withOpacity(0.2),
                ),
                const Row(
                  children: [
                    Text("Today's Sales"),
                    Spacer(),
                    Text("4200"),
                  ],
                ),
                Divider(
                  color: kBlack.withOpacity(0.2),
                ),
                const Row(
                  children: [
                    Text("Deliverd Orders"),
                    Spacer(),
                    Text("20"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
