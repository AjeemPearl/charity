import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/constants.dart';
import '../../utils/generalFunctions.dart';
class HomeScreen extends StatefulWidget{
  HomeScreen({super.key});
  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];

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
                child: const TextField(
                  style:TextStyle(fontSize: 12.0,color: Colors.black ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10.0,bottom: 10),
                    icon:Icon(Icons.search,color: KPrimaryColor,),
                    hintText: "Search Anthing Here",
                    hintStyle:TextStyle(fontSize: 12.0, color:Color(0xFFA0A5BD )),
                    border: InputBorder.none,

                  ),



                ),
                // child: TextField(
                //     Color(0xFFA0A5BD )
                //   // children: [
                //   //   SvgPicture.asset("assets/icons/search2.svg"),
                //   //   SizedBox(width: 12,),
                //   //   // Text("Search anything here",style: TextStyle(fontSize: 12, color:Color(0xFFA0A5BD ),)),
                //   // const TextField(
                //   //     style:TextStyle(fontSize: 12.0),
                //   //     decoration: InputDecoration(
                //   //       icon:Icon(Icons.search,color:Color(0xFFA0A5BD ),),
                //   //       hintText: "Your Email",
                //   //       border: InputBorder.none,
                //   //
                //   //     ),
                //   //
                //   //
                //   //
                //   //   ),
                //   // ],
                // ),
              ),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Category",style:KTitleTextStyle,),
                  Text("See All",style:KSubTitleTextStyle.copyWith(color:KPrimaryColor),),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                  child:StaggeredGrid.count(
                      crossAxisCount: 2,
                     crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    children: [

                    ],

                  ))

            ],
          ),
        ),
      ),

    );
  }
}