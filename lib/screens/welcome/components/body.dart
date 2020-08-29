import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kr_trading_factory/components/roundedButton.dart';
import 'package:kr_trading_factory/constants.dart';
import 'package:kr_trading_factory/screens/login/login_screen.dart';
import 'package:kr_trading_factory/screens/signUp/sign_up.dart';
import 'package:kr_trading_factory/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // this thing gives whole screen total height & width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0,
                  letterSpacing: 2),
            ),
            Text(
              'KR TRADING COMPANY',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                  letterSpacing: 1.2),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
            ),
            RoundedButton(
              text: 'Sign Up',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              textColor: Colors.black,
              color: kPrimaryLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
