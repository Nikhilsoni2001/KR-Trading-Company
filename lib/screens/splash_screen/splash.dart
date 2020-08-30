import 'package:flutter/material.dart';
import 'package:kr_trading_factory/screens/splash_screen/components/body.dart';
import 'package:kr_trading_factory/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
