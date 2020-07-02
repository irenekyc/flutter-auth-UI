import 'package:flutter/material.dart';

import '../../../constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        width: size.width * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Divider(color: Color(0xFFD9D9D9)),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("OR",
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w600))),
            Expanded(
              child: Divider(color: Color(0xFFD9D9D9)),
            )
          ],
        ));
  }
}
