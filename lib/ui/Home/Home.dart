import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/sideMenu.dart';
import '../../utils/constants.dart';
import '../../utils/generalFunctions.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    initState();
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: KPrimaryColor,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: KPrimaryColor),
                accountName: Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 16),
                ),
                accountEmail: Text("abhishekm977@gmail.com",style: TextStyle(fontSize: 12.0),),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: KPrimaryLightColor,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: KPrimaryColor),
                  ), //Text
                ),

                //circleAvatar
              ), //UserAccountDrawerHeader
            ),
            ListTile(
              leading: const Icon(Icons.home, color: KPrimaryColor,),
              title: const Text(' Home ',style: TextStyle(fontSize: 14.0, ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person, color: KPrimaryColor,),
              title: const Text(' My Profile ',style: TextStyle(fontSize: 14.0, ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book, color: KPrimaryColor,),
              title: const Text(' My Course ',style: TextStyle(fontSize: 14.0, ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium, color: KPrimaryColor,),
              title: const Text(' Go Premium ',style: TextStyle(fontSize: 14.0, ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label, color: KPrimaryColor,),
              title: const Text(' Saved Videos ',style: TextStyle(fontSize: 14.0, ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit, color: KPrimaryColor,),
              title: const Text(' Edit Profile ',style: TextStyle(fontSize: 14.0),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color:Colors.red,),
              title: const Text('LogOut', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color:Colors.red),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Drawer
    );
  }
}