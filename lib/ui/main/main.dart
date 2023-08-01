import 'package:demo_flutter/ui/splash/splash_screen.dart';
import 'package:demo_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:KPrimaryColor ,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:  SplashScreen(),
    );
  }
}



