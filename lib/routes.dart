import 'package:flutter/material.dart';
import 'package:kr_trading_factory/screens/sign_in/sign_in_screen.dart';
import 'package:kr_trading_factory/screens/sign_up/sign_up.dart';
import 'package:kr_trading_factory/screens/splash_screen/splash.dart';
import 'package:kr_trading_factory/screens/welcome/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen()
};