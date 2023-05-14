import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ShareQ/screens/profile/profile_screen.dart';
import 'package:ShareQ/screens/home/home_page.dart';
import 'package:ShareQ/screens/saved/saved_screen.dart';
import 'package:ShareQ/screens/achievement/achievement_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          ProfilePic(),
          SizedBox(height: 20),
          Text(
            'Merouane Kanoune',
            style: TextStyle(
              color: Color(0xFF0C4E8C),
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ProfileMenu(
            text: "Your Achievement",
            press: () {
              Navigator.pushNamed(context, AchievementScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "Change Interests",
            press: () {},
          ),
          ProfileMenu(
            text: "Location",
            press: () {},
          ),
          ProfileMenu(
            text: "Contact Us",
            press: () {},
          ),
          ProfileMenu(
            text: "Add Organization",
            press: () {},
          ),
          SizedBox(height: 20),
          Text(
            'Logout',
            style: TextStyle(
              color: Color(0xFFE95262),
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
