import 'package:flutter/material.dart';
import 'package:ShareQ/screens/home/opp_detail_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ShareQ/screens/profile/profile_screen.dart';
import 'package:ShareQ/screens/saved/saved_screen.dart';

import 'package:ShareQ/screens/home/widgets/oppList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/homePage";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/shareq.png",
          ),
        ),
        backgroundColor: Colors.black.withOpacity(0),
        body: SingleChildScrollView(
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
                    icon: SvgPicture.asset(
                        "assets/icons/Home Screen Colored.svg"),
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
              SizedBox(height: 50),
              MagazinesList(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 700),
                              pageBuilder: (context, _, __) =>
                                  MagazineDetailPage(
                                    image: '1',
                                  )));
                    },
                    child: Hero(
                      tag: '1',
                      child: Image(
                        filterQuality: FilterQuality.low,
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.height / 3.2,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/1.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 700),
                              pageBuilder: (context, _, __) =>
                                  MagazineDetailPage(image: '2')));
                    },
                    child: Hero(
                      tag: '2',
                      child: Image(
                        filterQuality: FilterQuality.low,
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.height / 3.2,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/2.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 700),
                              pageBuilder: (context, _, __) =>
                                  MagazineDetailPage(image: '3')));
                    },
                    child: Hero(
                      tag: '3',
                      child: Image(
                        filterQuality: FilterQuality.low,
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.height / 3.2,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/3.png"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset("assets/images/Group 24.png"),
                    onPressed: () {},
                    iconSize: 80,
                  ),
                  IconButton(
                    icon: Image.asset("assets/images/Group 23.png"),
                    onPressed: () {},
                    iconSize: 100,
                  ),
                  IconButton(
                    icon: Image.asset("assets/images/Group 22.png"),
                    onPressed: () {},
                    iconSize: 80,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
