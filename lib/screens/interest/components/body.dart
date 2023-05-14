import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../components/secondary_button.dart';
import 'package:ShareQ/screens/home/home_page.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "2 of 2 steps",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF10C4D2),
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Find Your Cause",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF0C4E8C),
                    height: getProportionateScreenHeight(2),
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Select from the causes below, and we will \n find your organizations that inspire you ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Secondary_button(
                  text: "Done",
                  press: () {
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
