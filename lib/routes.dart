import 'package:flutter/material.dart';
import 'package:kr_trading_factory/screens/splash_screen/splash.dart';
import 'package:kr_trading_factory/screens/welcome/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
};