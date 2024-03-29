import 'package:flutter/material.dart';
import 'package:kr_trading_factory/components/text_field_container.dart';
import 'package:kr_trading_factory/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(icon, color: kPrimaryColor),
            border: InputBorder.none,
            hintText: hintText),
      ),
    );
  }
}
