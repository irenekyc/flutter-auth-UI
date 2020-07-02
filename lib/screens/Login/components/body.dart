import 'package:flutter/material.dart';
import 'package:flutter_auth/components/already_have_account_check.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/constants.dart';

import 'package:flutter_svg/svg.dart';
import './background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: size.height * 0.02),
        SvgPicture.asset("assets/icons/login.svg", height: size.height * 0.35),
        SizedBox(height: size.height * 0.05),
        RoundedInputField(
            hintText: "Your Email here",
            obscureText: false,
            icon: Icons.person,
            onChanged: (value) {}),
        RoundedInputField(
            hintText: "Password",
            icon: Icons.lock,
            suffixIcon: Icons.visibility,
            obscureText: true,
            onChanged: (value) {}),
        RoundedButton(
            title: "LOGIN",
            btncolor: primaryColor,
            textColor: Colors.white,
            press: () {}),
        SizedBox(height: size.height * 0.05),
        AlreadyHaveAccountCheck(login: true, press: () {})
      ],
    ));
  }
}
