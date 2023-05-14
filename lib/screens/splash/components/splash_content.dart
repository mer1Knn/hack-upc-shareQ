import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.title,
    this.image,
  }) : super(key: key);
  final String? text, title, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(
          flex: 1,
        ),
        Text(
          "Find your cause",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(40),
            color: Colors.black,
            fontWeight: FontWeight.w700,
            height: getProportionateScreenHeight(2),
          ),
        ),
        Text(
          "ShareQ helps you connect with community-led \n nonprofits that need support",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          image!,
        ),
        Text(
          title!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: Colors.black,
            fontWeight: FontWeight.w800,
            height: getProportionateScreenHeight(2),
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
