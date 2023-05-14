import 'package:flutter/material.dart';

import 'components/body.dart';

class AchievementScreen extends StatelessWidget {
  static String routeName = "/achievement";
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
