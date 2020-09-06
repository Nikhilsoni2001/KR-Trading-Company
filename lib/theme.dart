import 'package:flutter/material.dart';
import 'package:kr_trading_factory/constants.dart';

ThemeData theme() {
  return ThemeData(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Roboto',
      inputDecorationTheme: inputTextDecoration(),
      appBarTheme: appBarTheme(),
      textTheme: textTheme());
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
          headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18)));
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

InputDecorationTheme inputTextDecoration() {
  return InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 42,
        vertical: 20,
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10));
}
