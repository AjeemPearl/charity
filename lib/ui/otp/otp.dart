import 'package:demo_flutter/utils/constants.dart';
import 'package:flutter/gestures.dart';
import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/generalFunctions.dart';
import '../login/login.dart';
import '../sign_up/signup.dart';
class OtpScreen extends StatelessWidget{
  FocusNode firstFocusNode = FocusNode();
  FocusNode secondFocusNode = FocusNode();
  FocusNode thirdFocusNode = FocusNode();
  FocusNode fourthFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    initState();
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
             Positioned(bottom: 0,
             right: 0,
                 child: Image.asset("assets/images/login_bottom.png",
                 width: size.width*.28),
             ),
             SingleChildScrollView(

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SvgPicture.asset("assets/icons/My password-amico.svg",height: size.height*0.40,),
                   const Text("Verification Code", style:TextStyle(fontWeight:FontWeight.bold, fontSize: 16.0, color: KPrimaryColor),),
                   const SizedBox(height:6.0,),
                   const Text("An 4 digit code has been sent to +91-8967897890", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 12.0, color:Colors.grey),),
                   SizedBox(height: 10.0,),
                   RawKeyboardListener(
                     focusNode: FocusNode(), // A new focus node to capture keyboard events
                     onKey: (RawKeyEvent event) {
                       if (event.runtimeType == RawKeyDownEvent &&
                           event.logicalKey == LogicalKeyboardKey.backspace) {
                         if (fourthFocusNode.hasFocus) {
                           thirdFocusNode.requestFocus();
                         }
                         if (thirdFocusNode.hasFocus) {
                           secondFocusNode.requestFocus();
                         }
                         if (secondFocusNode.hasFocus) {
                           firstFocusNode.requestFocus();
                         }
                       }
                     }, child:Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [

                       SizedBox(height: 60.0,width: 60.0,
                         child: TextFormField(
                           autofocus: true,
                           focusNode: firstFocusNode,
                           onChanged: (value){
                             if(value.length ==1){
                               secondFocusNode.requestFocus();
                             }
                           },
                           onSaved:(pin1){},
                           decoration: const InputDecoration(hintText: "0", hintStyle:TextStyle(color:Colors.grey)),

                           style:Theme.of(context).textTheme.headlineSmall,
                           keyboardType: TextInputType.number,
                           textAlign: TextAlign.center,
                           inputFormatters: [LengthLimitingTextInputFormatter(1),
                             FilteringTextInputFormatter.digitsOnly],

                         ),),
                       SizedBox(height: 60.0,width: 60.0,
                         child: TextFormField(
                           focusNode: secondFocusNode,
                           onChanged: (value){
                             if(value.length ==1){
                               thirdFocusNode.requestFocus();

                             }
                           },
                           onSaved:(pin2){},
                           decoration: const InputDecoration(hintText: "0", hintStyle:TextStyle(color:Colors.grey)),
                           style:Theme.of(context).textTheme.headlineSmall,
                           keyboardType: TextInputType.number,
                           textAlign: TextAlign.center,
                           inputFormatters: [LengthLimitingTextInputFormatter(1),
                             FilteringTextInputFormatter.digitsOnly],

                         ),),
                       SizedBox(height: 60.0,width: 60.0,
                         child: TextFormField(
                           focusNode: thirdFocusNode,
                           autofocus: true,
                           onChanged: (value){
                             if(value.length ==1){
                               fourthFocusNode.requestFocus();

                             }
                           },
                           onSaved:(pin3){},
                           decoration: const InputDecoration(hintText: "0", hintStyle:TextStyle(color:Colors.grey)),
                           style:Theme.of(context).textTheme.headlineSmall,
                           keyboardType: TextInputType.number,
                           textAlign: TextAlign.center,
                           inputFormatters: [LengthLimitingTextInputFormatter(1),
                             FilteringTextInputFormatter.digitsOnly],

                         ),),
                       SizedBox(height: 60.0,width: 60.0,
                         child: TextFormField(
                           focusNode: fourthFocusNode,
                           onChanged: (value){
                             if(value.length ==1){
                               Focus.of(context).nextFocus();
                             }
                           },
                           onSaved:(pin4){},
                           decoration: const InputDecoration(hintText: "0", hintStyle:TextStyle(color:Colors.grey)),
                           style:Theme.of(context).textTheme.headlineSmall,
                           keyboardType: TextInputType.number,
                           textAlign: TextAlign.center,
                           inputFormatters: [LengthLimitingTextInputFormatter(1),
                             FilteringTextInputFormatter.digitsOnly],

                         ),),
                     ],
                   ),),

               const SizedBox(height: 60.0),
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
                       child:const Text("Verify OTP",style: TextStyle(color:Colors.white),),
                     ),
                   ),
                   const SizedBox(height: 8.0,),
                   RichText(
                     text: TextSpan(
                         text: 'Didn\'t receive otp?',
                         style: const TextStyle(color:KPrimaryColor, fontSize: 12.0),
                         children: <TextSpan>[
                           TextSpan(text: ' Resend',
                               style: const TextStyle(color:KPrimaryColor,fontWeight:FontWeight.bold,fontSize: 12.0),
                               recognizer: TapGestureRecognizer()..onTap=(){
                                 Navigator.push(context, MaterialPageRoute(builder:(context) =>Signup()));
                               }

                           )
                         ]
                     ),
                   ),
                   const SizedBox(height: 20.0),

                 

                 
                 
                 
                 
                 ]
             ),),
















           ],
         ),
       ),
     );
  }

}