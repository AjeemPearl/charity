import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class OtpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Scaffold(
       body: SizedBox(
         width: double.infinity,
         height: size.height,
         child: Stack(
           alignment: Alignment.center,
           children: [
             Positioned(top:0, left: 0,
                 child:Image.asset("assets/images/main_top.png",width:size.width*.3,) ),
             Positioned(top:40.0, left: 12.0,
                 child:SvgPicture.asset("assets/icons/facebook.svg",) ),
             Positioned(bottom: 0,
             right: 0,
                 child: Image.asset("assets/images/login_bottom.png",
                 width: size.width*.35),
             ),
             SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

               SvgPicture.asset("assets/icons/My password-amico.svg",height: size.height*0.38,),]
             ),),
















           ],
         ),
       ),
     );
  }

}