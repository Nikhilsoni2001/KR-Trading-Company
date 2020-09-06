import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key, @required this.icon,
  }) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          0,
          getPropotionateScreenWidth(20),
          getPropotionateScreenWidth(20),
          getPropotionateScreenWidth(20)),
      child: icon,
    );
  }
}
