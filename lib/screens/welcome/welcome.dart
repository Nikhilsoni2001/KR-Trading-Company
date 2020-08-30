import 'package:flutter/material.dart';
import 'package:kr_trading_factory/screens/welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
