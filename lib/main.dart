import 'package:flutter/material.dart';
import 'package:kr_trading_factory/screens/splash_screen/splash.dart';
import 'package:kr_trading_factory/routes.dart';
import 'package:kr_trading_factory/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'K R Trading Company',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

