import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color btncolor, textColor;
  final Function press;

  RoundedButton({this.title, this.btncolor, this.textColor, this.press});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          onPressed: press,
          child: Text(title, style: TextStyle(color: textColor)),
          color: btncolor,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        ),
      ),
    );
  }
}
