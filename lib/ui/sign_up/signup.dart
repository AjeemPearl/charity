import 'package:demo_flutter/ui/otp/otp.dart';
import 'package:demo_flutter/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/generalFunctions.dart';
import '../login/login.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    initState();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: size.width*0.35,
              child:Image.asset("assets/images/signup_top.png"),),
            Positioned(bottom: 0,
              left: 0,
              width: size.width*0.2,
              child: Image.asset("assets/images/main_bottom.png"),),
           SingleChildScrollView(
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SignUp",style: TextStyle(color: KPrimaryColor,fontWeight: FontWeight.bold, fontSize: 16.0),),
                  SizedBox(
                    height:20.0,
                  ),
                  SvgPicture.asset("assets/icons/signup.svg",height: size.height*0.35,),
                  const SizedBox(height: 10.0,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 2),
                    width: size.width*.9,
                    decoration: BoxDecoration(
                        color: KPrimaryLightColor,
                        borderRadius: BorderRadius.circular(29)
                    ),
                    child: const TextField(
                      style:TextStyle(fontSize: 14.0),
                      decoration: InputDecoration(
                        icon:Icon(Icons.person,color: KPrimaryColor,),
                        hintText: "Your Email",
                        border: InputBorder.none,

                      ),



                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 2),
                    width: size.width*.9,
                    decoration: BoxDecoration(
                        color: KPrimaryLightColor,
                        borderRadius: BorderRadius.circular(29)
                    ),
                    child: const TextField(
                      style:TextStyle(fontSize: 14.0),
                      obscureText: true,
                      decoration: InputDecoration(
                          icon:Icon(Icons.lock,color: KPrimaryColor,),
                          suffixIcon:Icon(Icons.visibility,color: KPrimaryColor,) ,
                          hintText: "Password",
                          border: InputBorder.none

                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  SizedBox(
                    width: size.width*0.9,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    OtpScreen()));
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
                      child:const Text("Sign Up",style: TextStyle(color:Colors.white),),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: const TextStyle(color:KPrimaryColor, fontSize: 12.0),
                        children: <TextSpan>[
                          TextSpan(text: ' Sign In',
                              style: const TextStyle(color:KPrimaryColor,fontWeight:FontWeight.bold,fontSize: 12.0),
                              recognizer: TapGestureRecognizer()..onTap=(){
                                Navigator.push(context, MaterialPageRoute(builder:(context) =>LoginScreen()));
                              }

                          )
                        ]
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 28.0),
                    width: size.width*.9,
                    child: const Row(
                      children: [
                        Expanded(
                            child: Divider(color: Color(0xFFD9D9D9),
                          height: 1.5,
                        )),
                        Text("OR",style: TextStyle(color:  KPrimaryColor ,fontWeight: FontWeight.w600),),
                        Expanded(
                            child: Divider(color: Color(0xFFD9D9D9),
                              height: 1.5,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0,),
                  Container(
                    width: size.width*.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Container(
                         padding: const EdgeInsets.all(10.0),
                         decoration: BoxDecoration(
                           border: Border.all(
                             width: 2,
                               color: Colors.white
                           ),
                           shape: BoxShape.circle
                         ),
                         height: 48,
                         width: 48,
                         child: SvgPicture.asset("assets/icons/facebook.svg"),
                       ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Colors.white
                              ),
                              shape: BoxShape.circle
                          ),
                          height: 54,
                          width: 54,
                          child: SvgPicture.asset("assets/icons/google-plus.svg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Colors.white
                              ),
                              shape: BoxShape.circle
                          ),
                          height: 44,
                          width: 44,
                          child: SvgPicture.asset("assets/icons/twitter.svg"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
            

            
            
          ],
        ),
      ),

    );
  }


}