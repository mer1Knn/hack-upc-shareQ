import 'package:flutter/material.dart';
import 'package:ShareQ/screens/splash/components/body.dart';
import 'package:ShareQ/size_config.dart';
import 'package:ShareQ/screens/sign_in/sign_in_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/shareq.png",
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
            child: const Text('Skip'),
          )
        ],
      ),
      body: Body(),
    );
  }
}
