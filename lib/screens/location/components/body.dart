import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'location_form.dart';

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
                  "1 of 2 steps",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF10C4D2),
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Select Your Location",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF0C4E8C),
                    height: getProportionateScreenHeight(2),
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "This will allow us to find organizations \n in your nighborhood working on \n the causes you care about ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
                Image.asset(
                  "assets/images/location.png",
                  height: getProportionateScreenHeight(150),
                ),
                LoactionForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  'Changed in the settings at any time',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                    height: getProportionateScreenHeight(2),
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF898989),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
