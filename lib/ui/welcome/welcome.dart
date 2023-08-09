

import 'package:demo_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login/login.dart';


class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SizedBox(
        height:size.height,
        width: double.infinity,
        child:Stack(
          alignment: Alignment.center,
          children: [Positioned(
            top:0, left: 0,
              child: Image.asset("assets/images/main_top.png", width: size.width*0.3,)),
            Positioned(bottom:0,
                left:0,
                child:Image.asset("assets/images/main_bottom.png", width: size.width*0.2,)
            ),
            SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Welcome To Edu",style: TextStyle(fontWeight:FontWeight.bold),),
                    const SizedBox(height: 20.0,),
                    SvgPicture.asset("assets/icons/chat.svg",height: size.height*0.42,),
                    const SizedBox(height: 40.0,),
                    SizedBox(
                      width: size.width*0.9,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LoginScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(
                            side: BorderSide(
                              color:KPrimaryColor, // Set the border color
                              width: 1.0,          // Set the border width
                            ),
                          ),
                          backgroundColor: KPrimaryColor,
                          minimumSize: const Size(double.infinity, 50.0), // Set the minimum height
                        ),
                        child:const Text("Login",style: TextStyle(color:Colors.white),),
                      ),


                    ),
                    const SizedBox(height: 20.0,),
                    SizedBox(
                      width: size.width*0.9,
                      child: ElevatedButton(
                        onPressed: (){
                          print("Handle login");
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(
                            side: BorderSide(
                              color:KPrimaryLightColor, // Set the border color
                              width: 1.0,          // Set the border width
                            ),
                          ),
                          backgroundColor: KPrimaryLightColor,
                          minimumSize: const Size(double.infinity, 50.0), // Set the minimum height
                        ),
                        child:const Text("Sign Up",style: TextStyle(color:Colors.black),),
                      ),


                    )

                  ],
                )
            ),


          ],
        ),
      ),

    );
  }
}


