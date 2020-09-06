import 'package:flutter/material.dart';
import 'package:kr_trading_factory/components/already_have_an_account.dart';
import 'package:kr_trading_factory/components/roundedButton.dart';
import 'package:kr_trading_factory/screens/sign_up/sign_up.dart';

import '../../../size_config.dart';
import 'custom_suffix_icon.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            buildEmailFormField(),
            SizedBox(height: getPropotionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getPropotionateScreenHeight(40)),
            RoundedButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                }
              },
            ),
            SizedBox(height: getPropotionateScreenHeight(8),),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
            )
          ],
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: Icon(Icons.lock_outline),
          ),
        ));
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
        },
        decoration: InputDecoration(
          labelText: 'Email ',
          hintText: 'Enter your email',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: Icon(Icons.mail_outline),
          ),
        ));
  }
}
