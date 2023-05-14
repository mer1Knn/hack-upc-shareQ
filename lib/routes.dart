import 'package:flutter/widgets.dart';
import 'package:ShareQ/screens/complete_profile/complete_profile_screen.dart';
import 'package:ShareQ/screens/forgot_password/forgot_password_screen.dart';
import 'package:ShareQ/screens/home/home_page.dart';
import 'package:ShareQ/screens/profile/profile_screen.dart';
import 'package:ShareQ/screens/sign_in/sign_in_screen.dart';
import 'package:ShareQ/screens/splash/splash_screen.dart';
import 'package:ShareQ/screens/location/location_screen.dart';
import 'package:ShareQ/screens/interest/interest_screen.dart';
import 'package:ShareQ/screens/saved/saved_screen.dart';
import './screens/sign_up/sign_up_screen.dart';
import 'package:ShareQ/screens/achievement/achievement_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  AchievementScreen.routeName: (context) => AchievementScreen(),
  LocationScreen.routeName: (context) => LocationScreen(),
  InterestScreen.routeName: (context) => InterestScreen(),
  SavedScreen.routeName: (context) => SavedScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomePage.routeName: (context) => HomePage(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
