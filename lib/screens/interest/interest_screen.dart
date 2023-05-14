import 'package:flutter/material.dart';

import 'components/body.dart';

class InterestScreen extends StatelessWidget {
  static String routeName = "/chose_interest";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/shareq.png",
        ),
      ),
      body: Body(),
    );
  }
}
