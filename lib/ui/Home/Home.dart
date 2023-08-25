import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/constants.dart';
import '../../utils/generalFunctions.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    initState();
    customTheme();
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 12,top: 12, right: 12),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/line.svg",height: 30, width: 30,),
                  Image.asset("assets/images/free-circle-png.jpg", height: 40, width: 60,)
                ],
              ),
              const SizedBox(height: 30.0,),
              const Text("Hey Annie,", style:KHeadingTextStyle,),
              const Text("Find  a course you want to learn", style:KSubHeadingTextStyle,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                height: 54.0,
                width: double.infinity,
                decoration: BoxDecoration(color: const Color(0xFFF5F5F7),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/search2.svg"),
                    SizedBox(width: 12,),
                    Text("Search anything here",style: TextStyle(fontSize: 12, color:Color(0xFFA0A5BD ),)),
                  ],
                ),
              ),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Category",style:KTitleTextStyle,),
                  Text("See All",style:KSubTitleTextStyle.copyWith(color:KBlue),),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                  child:StaggeredGrid.count(
                      crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,

                  ))

            ],
          ),
        ),
      ),

    );
  }
}