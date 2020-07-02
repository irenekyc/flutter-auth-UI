import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SocialMediaBtn extends StatelessWidget {
  final String iconSrc;
  final Function press;
  SocialMediaBtn({this.iconSrc, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: primaryLightColor),
                shape: BoxShape.circle),
            child: SvgPicture.asset(iconSrc,
                width: 20, height: 20, color: primaryColor)));
  }
}
