import 'package:flutter/material.dart';
import 'package:ShareQ/routes.dart';
import 'package:ShareQ/screens/splash/splash_screen.dart';
import 'package:ShareQ/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShareQ',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
