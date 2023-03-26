import 'package:flutter/material.dart';

import '../utils/constants/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kWhite,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    titleMedium: TextStyle(color: kWhite),
    bodyLarge: TextStyle(color: kTextColor),
    bodyMedium: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      backgroundColor: kWhite,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(color: kBlack, fontSize: 18));
}
