import'package:flutter/material.dart';
class OtpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Scaffold(
       body: Stack(
         children: [
           Positioned(
             top: 0,
             left:0,
             child: Image.asset("assets/images/main_top.png",
             width: size.width*.03 ,),
           ),
           Positioned(bottom: 0,
           right: 0,
               child: Image.asset("assets/images/login_bottom.png",
               width: size.width*.35),
           )
















         ],
       ),
     );
  }

}