import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: kCream),
                padding: pda(0.02),
                child: const Column(children: [
                  Text("Bingo Mad Angles"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("350"), Text("10")],
                  )
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: kCream),
              padding: pda(0.02),
              child: const Column(children: [
                Text("Bingo Mad Angles"),
              ]),
            ),
          ],
        ),
        Row(
          children: [
            //  FloatingActionButton(onPressed: (() {})),
            sw03,
            FloatingActionButton(onPressed: (() {})),
            sw03,
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  foregroundColor: kWhite,
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('0.0', style: tsW(20)),
                    sw03,
                    Text('Bill', style: tsW(20)),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
