import 'package:flutter/material.dart';
import 'package:flutter_auth/components/already_have_account_check.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/social_media_container.dart';
import 'package:flutter_auth/screens/Login/login_screen.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import './background.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Background(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("SIGNUP", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: size.height * 0.01),
        SvgPicture.asset("assets/icons/signup.svg", height: size.height * 0.35),
        SizedBox(height: size.height * 0.01),
        RoundedInputField(
            hintText: "Your Email",
            icon: Icons.person,
            obscureText: false,
            onChanged: (value) {}),
        RoundedInputField(
            hintText: "Password",
            icon: Icons.lock,
            obscureText: true,
            suffixIcon: Icons.visibility),
        RoundedButton(
            title: "SIGNUP",
            btncolor: primaryColor,
            textColor: Colors.white,
            press: () {}),
        SizedBox(height: size.height * 0.02),
        AlreadyHaveAccountCheck(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            }),
        OrDivider(),
        SocialMediaContainer(),
      ],
    )));
  }
}
