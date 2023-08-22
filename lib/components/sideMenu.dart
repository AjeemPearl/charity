import 'package:demo_flutter/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 288.0,
          height: double.infinity,
          color: KPrimaryLightColor,
          child: const Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor:KPrimaryLightColor,
                  child: Icon(
                    CupertinoIcons.person,
                    color: KPrimaryColor,
                  ),
                ),
                title: Text('Simranjeet Singh ', style: TextStyle(color: KPrimaryColor, fontSize: 16.0, fontWeight: FontWeight.bold),),
                subtitle: Text("Android Developer",style: TextStyle(color: KPrimaryColor, fontSize: 12.0, fontWeight: FontWeight.normal)),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' My Course '),

              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text(' Go Premium '),

              ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text(' Saved Videos '),

              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(' Edit Profile '),

              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut', style: TextStyle(color: Colors.red),),

              ),

            ],
          ),
        ),
      ),
    );
  }

}