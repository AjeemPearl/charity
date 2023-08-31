import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(image: AssetImage("assets/images/ux_big.png",),
            alignment: Alignment.topRight,
    ),),
        child: const Padding(
          padding: EdgeInsets.only(left: 20,top: 50,right: 20),
          child: Column(
            children: [],
          ),

        ),
      )

    );
  }

}