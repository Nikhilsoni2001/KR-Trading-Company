import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kr_trading_factory/screens/sign_in/components/sign_in_form.dart';
import 'package:kr_trading_factory/size_config.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getPropotionateScreenWidth(20)),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getPropotionateScreenWidth(35),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: getPropotionateScreenWidth(8),),
            Text(
              'Sign in with your email and password \nor Continue with social media',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50,),
            SignInForm()
          ],
        ),
      ),
    ));
  }
}

