import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kr_trading_factory/components/already_have_an_account.dart';
import 'package:kr_trading_factory/components/roundedButton.dart';
import 'package:kr_trading_factory/components/rounded_input_field.dart';
import 'package:kr_trading_factory/components/rounded_password_field.dart';
import 'package:kr_trading_factory/constants.dart';
import 'package:kr_trading_factory/screens/login/components/background.dart';
import 'package:kr_trading_factory/screens/signUp/sign_up.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
