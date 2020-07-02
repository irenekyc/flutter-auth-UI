import 'package:flutter/material.dart';
import '../constants.dart';
import './text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData suffixIcon;
  final ValueChanged<String> onChanged;
  final bool obscureText;

  RoundedInputField(
      {this.hintText,
      this.icon,
      this.suffixIcon,
      this.onChanged,
      this.obscureText});
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
            obscureText: obscureText,
            onChanged: onChanged,
            decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                icon: Icon(
                  icon,
                  color: primaryColor,
                ),
                suffixIcon: Icon(suffixIcon, color: primaryColor))));
  }
}
