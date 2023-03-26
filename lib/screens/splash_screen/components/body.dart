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
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
