import 'package:flutter/material.dart';

import 'components/body.dart';

class LocationScreen extends StatelessWidget {
  static String routeName = "/chose_location";
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
