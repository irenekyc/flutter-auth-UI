import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  AlreadyHaveAccountCheck({this.login, this.press});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(login ? "Don't have an account?" : "Already have an Account",
          style: TextStyle(color: primaryColor)),
      GestureDetector(
          onTap: () {},
          child: Text(login ? "Sign Up" : "Login",
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.bold)))
    ]);
  }
}
