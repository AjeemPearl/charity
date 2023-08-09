import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
class LoginScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  return Scaffold(
    body: SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [Positioned(top:0, left: 0,
            child:Image.asset("assets/images/main_top.png",width:size.width*.3,) ),
          Positioned(bottom: 0, right: 0, child: Image.asset("assets/images/login_bottom.png", width:size.width*.3,),),
          SingleChildScrollView
            (
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Login",style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18.0),),
                  const SizedBox(height: 20.0,),
                  SvgPicture.asset("assets/icons/login.svg",height: size.height*0.32,),
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
                      decoration: InputDecoration(
                        icon:Icon(Icons.person,color: KPrimaryColor,),
                        hintText: "Your Email",
                        border: InputBorder.none,

                      ),



                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 6.0),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 2),
                    width: size.width*.9,
                    decoration: BoxDecoration(
                        color: KPrimaryLightColor,
                        borderRadius: BorderRadius.circular(29)
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon:Icon(Icons.lock,color: KPrimaryColor,),
                          suffixIcon:Icon(Icons.visibility,color: KPrimaryColor,) ,
                          hintText: "Password",
                          border: InputBorder.none

                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0,),
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
                  const SizedBox(height: 6.0,),
                  const Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                    Text("Dont have an account?",style:TextStyle(color: KPrimaryColor),),
                      Text("Sign up",style:TextStyle(color: KPrimaryColor,fontWeight: FontWeight.bold),)
                  ],)




                ],
              )
          ),

        ],
      ),

    ),
  );
  }

}