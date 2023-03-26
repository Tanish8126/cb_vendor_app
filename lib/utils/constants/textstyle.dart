import 'package:flutter/material.dart';

import 'constants.dart';

TextStyle tsCommon(double size, color) {
  return TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontSize: getProportionateScreenHeight(size));
}

TextStyle tsP(double size) {
  return TextStyle(
      color: kPrimaryColor,
      fontWeight: FontWeight.normal,
      fontSize: getProportionateScreenHeight(size));
}

TextStyle tsPW(double size, weight) {
  return TextStyle(
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight,
      color: kPrimaryColor);
}

TextStyle tsM(double size) {
  return TextStyle(
      color: kMainColor,
      fontWeight: FontWeight.normal,
      fontSize: getProportionateScreenHeight(size));
}

TextStyle tsMW(double size, weight) {
  return TextStyle(
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight,
      color: kMainColor);
}

TextStyle tsB(double size) {
  return TextStyle(color: kBlack, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsBW(double size, weight) {
  return TextStyle(
      color: kBlack,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

TextStyle tsC(double size) {
  return TextStyle(color: kCream, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsCW(double size, weight) {
  return TextStyle(
      color: kCream,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}

TextStyle tsW(double size) {
  return TextStyle(color: kWhite, fontSize: getProportionateScreenHeight(size));
}

TextStyle tsWW(double size, weight) {
  return TextStyle(
      color: kWhite,
      fontSize: getProportionateScreenHeight(size),
      fontWeight: weight);
}
