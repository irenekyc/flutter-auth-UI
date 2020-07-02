import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

import 'package:flutter_svg/svg.dart';

import '../../Login/login_screen.dart';
import '../../SignUp/sign_up_screen.dart';
import './background.dart';
import '../../../components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("WELCOME To EDU", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: size.height * 0.05),
        SvgPicture.asset("assets/icons/chat.svg", height: size.height * 0.45),
        SizedBox(height: size.height * 0.05),
        RoundedButton(
            title: "LOGIN",
            btncolor: primaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            }),
        RoundedButton(
            title: "SIGN UP",
            btncolor: primaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            }),
      ],
    )));
  }
}
