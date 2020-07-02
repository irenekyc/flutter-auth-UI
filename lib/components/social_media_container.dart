import 'package:flutter/material.dart';
import './social_media_btn.dart';

class SocialMediaContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.6,
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SocialMediaBtn(iconSrc: "assets/icons/facebook.svg", press: () {}),
            SocialMediaBtn(iconSrc: "assets/icons/twitter.svg", press: () {}),
            SocialMediaBtn(
                iconSrc: "assets/icons/google-plus.svg", press: () {})
          ],
        ));
  }
}
