import 'package:flutter/material.dart';
import 'package:kr_trading_factory/constants.dart';
import 'package:kr_trading_factory/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'K R TRADING COMPANY',
          style: TextStyle(
              fontSize: getPropotionateScreenWidth(28),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2.5),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black38, fontSize: 16),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getPropotionateScreenHeight(265),
          width: getPropotionateScreenWidth(235),
        )
      ],
    );
  }
}
