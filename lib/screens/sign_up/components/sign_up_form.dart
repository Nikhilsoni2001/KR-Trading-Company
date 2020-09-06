import 'package:flutter/material.dart';
import 'package:kr_trading_factory/components/roundedButton.dart';
import 'package:kr_trading_factory/screens/sign_in/components/custom_suffix_icon.dart';

import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: <Widget>[
        buildEmailFormField(),
        SizedBox(height: getPropotionateScreenHeight(30)),
        buildPasswordFormField(),
        SizedBox(
          height: getPropotionateScreenHeight(30),
        ),
        RoundedButton(
          text: 'Sign Up',
          press: () {},
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
        onChanged: (value) {},
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
