import 'package:al_aloha_plumbing/screens/splash.dart';
import 'package:al_aloha_plumbing/utils/Const.dart';
import 'package:al_aloha_plumbing/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appname,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'cali_font',
        scaffoldBackgroundColor: appcolor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
      },
    );
  }
}