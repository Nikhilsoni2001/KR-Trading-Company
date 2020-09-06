import 'package:flutter/material.dart';
import 'package:kr_trading_factory/components/already_have_an_account.dart';
import 'package:kr_trading_factory/screens/sign_in/sign_in_screen.dart';
import 'package:kr_trading_factory/screens/sign_up/components/sign_up_form.dart';
import 'package:kr_trading_factory/screens/sign_up/components/social_icons.dart';
import 'package:kr_trading_factory/size_config.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getPropotionateScreenWidth(20)),
            child: Column(
              children: <Widget>[
                SizedBox(height: getPropotionateScreenHeight(20)),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getPropotionateScreenWidth(35),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getPropotionateScreenHeight(8),
                ),
                Text('Create a new account'),
                SizedBox(height: getPropotionateScreenHeight(50)),
                SignUpForm(),
                SizedBox(height: getPropotionateScreenHeight(10)),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                ),
                SizedBox(
                  height: getPropotionateScreenHeight(15),
                ),
                OrDivider(),
                SizedBox(
                  height: getPropotionateScreenHeight(10),
                ),
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
        ),
      ),
    );
  }
}
