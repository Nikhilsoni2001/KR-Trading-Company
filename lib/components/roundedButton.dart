import 'package:flutter/material.dart';
import 'package:kr_trading_factory/constants.dart';
import 'package:kr_trading_factory/size_config.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            color: color,
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: getPropotionateScreenWidth(18)),
            )),
      ),
    );
  }
}
