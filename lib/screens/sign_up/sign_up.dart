import 'package:flutter/material.dart';
import 'package:kr_trading_factory/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}

