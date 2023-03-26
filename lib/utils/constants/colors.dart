import 'package:flutter/material.dart';

const kPrimaryColor = Color(0XFFd27842);
const kMainColor = Color.fromARGB(255, 66, 33, 11);

const kWhite = Colors.white;
const kBlack = Colors.black;
const kRed = Colors.red;
const kCream = Color(0xFFFFECDF);

const kTextColor = Color(0xFF757575);

const kDuration = Duration(seconds: 2);

const shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFEBEBF4),
    Color(0xFFF4F4F4),
    Color(0xFFEBEBF4),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);
