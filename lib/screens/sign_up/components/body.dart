import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kr_trading_factory/components/already_have_an_account.dart';
import 'package:kr_trading_factory/components/roundedButton.dart';
import 'package:kr_trading_factory/components/rounded_input_field.dart';
import 'package:kr_trading_factory/components/rounded_password_field.dart';
import 'package:kr_trading_factory/screens/sign_in/sign_in_screen.dart';
import 'package:kr_trading_factory/screens/sign_up/components/background.dart';
import 'package:kr_trading_factory/screens/sign_up/components/social_icons.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'Sign Up',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcons(
                  iconSrc: 'assets/icons/facebook.svg',
                ),
                SocialIcons(
                  iconSrc: 'assets/icons/twitter.svg',
                ),
                SocialIcons(
                  iconSrc: 'assets/icons/google-plus.svg',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

