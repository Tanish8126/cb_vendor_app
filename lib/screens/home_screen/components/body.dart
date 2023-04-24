import 'package:cb_vendor_app/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: pda(0.02),
          child: Column(
            children: [
              Row(
                children: const [
                  Text("Business Report"),
                  Spacer(),
                  Icon(Icons.arrow_forward)
                ],
              ),
              Container(
                padding: pds(0, 0.02),
                color: kMainColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: const [Text("Today's sales"), Text("2100")],
                        ),
                        const Icon(Icons.blinds_closed)
                      ],
                    ),
                    const Text("Last Months: 10000")
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
