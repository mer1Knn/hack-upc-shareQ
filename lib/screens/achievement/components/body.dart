import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ShareQ/screens/profile/profile_screen.dart';
import 'package:ShareQ/screens/home/home_page.dart';
import 'package:ShareQ/screens/saved/saved_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Image.asset(
                    "assets/images/Profile Image.png",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreen.routeName);
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset("assets/icons/Home Screen.svg"),
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                  onPressed: () {
                    Navigator.pushNamed(context, SavedScreen.routeName);
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Your Achievements',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF0C4E8C),
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
