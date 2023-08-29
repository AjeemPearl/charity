
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/constants.dart';
import '../../utils/generalFunctions.dart';
class HomeScreen extends StatefulWidget{

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
                    icon:Icon(Icons.search,color: KBlue,),
                    hintText: "Search Anthing Here",
                    hintStyle:TextStyle(fontSize: 12.0, color:Color(0xFFA0A5BD )),
                    border: InputBorder.none,

                  ),



                ),
              ),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Category",style:KTitleTextStyle,),
                  Text("See All",style:KSubTitleTextStyle.copyWith(color:KBlue),),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child:MasonryGridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      padding: EdgeInsets.all(4.0),
                      child: Stack(
                        children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(categories[index].image),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding:EdgeInsets.only(left: 10.0, top: 10),
                              child: Text(categories[index].name, style: KTitleTextStyle,)),
                              Padding(padding:EdgeInsets.only(left: 10,top: 2),
                                  child: Text('${categories[index].numOfCourses} Courses', style: TextStyle(
                                    color: KText.withOpacity(.5),
                                    fontSize: 10
                                  ),)),
                            ],
                          )
                          
                        ],
                      ),
                    );
                  }

                ),
              ),


            ],
          ),

        ),
      ),

    );
  }
}

class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'] as String, item['courses'] as int, item['image'] as String))
    .toList();

var categoriesData = [
  {"name": "Marketing", 'courses': 17, 'image': "assets/images/marketing.png"},
  {"name": "UX Design", 'courses': 25, 'image': "assets/images/ux_design.png"},
  {
    "name": "Photography",
    'courses': 13,
    'image': "assets/images/photography.png"
  },
  {"name": "Business", 'courses': 17, 'image': "assets/images/business.png"},
];