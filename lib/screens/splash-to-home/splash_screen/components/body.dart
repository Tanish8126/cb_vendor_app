import 'package:cb_vendor_app/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(),
          SizedBox(
            height: 200.h,
            width: 250.w,
            child: Image.asset("assets/images/headerlogo.png"),
          ),
          sh05,
          const Text("Vandor App"),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
