import 'package:flutter/material.dart';

import 'constants.dart';

var bdPT = const BoxDecoration(
  color: kPrimaryColor,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
);

var bdMT = const BoxDecoration(
  color: kMainColor,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
);

var bdCa = BoxDecoration(
  border: Border.all(color: kCream),
  borderRadius: BorderRadius.circular(20),
);

var cartdec = BoxDecoration(
    color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
    borderRadius: const BorderRadius.all(Radius.circular(10)));

BoxDecoration bdCircular(color, double size) {
  return BoxDecoration(
    border: Border.all(color: color),
    borderRadius: BorderRadius.circular(size),
  );
}

BoxDecoration bdAll(color, double size) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(size),
  );
}

var bdCT = const BoxDecoration(
  color: kCream,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
);

OutlineInputBorder oi32(color) {
  return OutlineInputBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(getProportionateScreenHeight(32))),
      borderSide: BorderSide(color: color));
}

var tbW = TextButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    side: const BorderSide(color: kWhite),
  ),
  foregroundColor: kWhite,
  backgroundColor: kCream,
);

var tbC = TextButton.styleFrom(
  foregroundColor: kPrimaryColor,
  padding: pda(0.02),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  backgroundColor: kCream,
);

var tbPC = TextButton.styleFrom(
  foregroundColor: kCream,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  backgroundColor: kPrimaryColor,
);

var tbCO = TextButton.styleFrom(
  foregroundColor: kPrimaryColor,
  padding: pda(0.01),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  backgroundColor: kCream,
);

var tbCommon = TextButton.styleFrom(
  padding: pda(0.02),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  backgroundColor: kCream,
);
