import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MagazineDetailPage extends StatefulWidget {
  final String image;
  const MagazineDetailPage({Key? key, required this.image}) : super(key: key);

  @override
  _MagazineDetailPageState createState() => _MagazineDetailPageState();
}

class _MagazineDetailPageState extends State<MagazineDetailPage> {
  double expandedHeight = 800;
  double toolBarHeight = 50;
  double height = 150;
  double x = -1;
  double y = 0.3;
  late ScrollController controller = ScrollController()..addListener(listener);

  void listener() {
    if (controller.position.pixels < (expandedHeight - toolBarHeight)) {
      setState(() {
        height = toolBarHeight +
            100 *
                (1 -
                    (controller.position.pixels /
                        (expandedHeight - toolBarHeight)));
        x = -1 +
            (controller.position.pixels / (expandedHeight - toolBarHeight));
        y = 0.3 +
            0.6 *
                (controller.position.pixels / (expandedHeight - toolBarHeight));
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Image.asset(
              "assets/images/shareq.png",
            ),
          ),
          backgroundColor: Colors.white,
          body: CustomScrollView(
            physics: PageScrollPhysics(),
            controller: controller,
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0)),
                            child: Center(
                              child: Hero(
                                tag: widget.image,
                                child: Image(
                                  filterQuality: FilterQuality.low,
                                  height: (MediaQuery.of(context).size.height /
                                          2.5) *
                                      0.9,
                                  width:
                                      (MediaQuery.of(context).size.height / 1) *
                                          0.9,
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/${widget.image}.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'Kofat Ramadan',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xFF0C4E8C),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Oum El bouaghi, Algeria',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium pellentesque hendrerit donec varius. Vitae massa arcu nec vestibulum elit tristique. Congue nunc ullamcorper gravida pharetra. Id egestas nisi sit lectus consequat platea pretium. Neque cursus semper neque molestie cursus in id varius morbi. Aliquam sodales tortor dignissim ornare. Odio nunc sed consequat augue tellus, proin nunc commodo sit. Quam magna ullamcorper enim tortor rhoncus. Tempor imperdiet.',
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(height: 50),
                            Text(
                              'Social pages',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
