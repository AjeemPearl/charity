

import 'package:flutter/material.dart';
import '../../Components/body.dart';
import '../../utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(40.0),
            alignment: Alignment.topCenter,
            child: const Text("Login",style:TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: Colors.black
            )),
            child: <Widget>[
              Image.network(
                  'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png',
                  height: 400,
                  width: 250
              ),
              Text(
                'It is an image displays from the given url.',
                style: TextStyle(fontSize: 20.0),
              )
            ],


          )),
    );
  }
}


