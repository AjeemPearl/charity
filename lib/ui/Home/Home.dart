
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/Category.dart';
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
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Abhishek Mishra"),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 12,top: 12, right: 12),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => // Ensure Scaffold is in context
                    GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/line.svg",
                            height: 30,
                            width: 30,
                          ),

                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/free-circle-png.jpg",
                    height: 40,
                    width: 60,
                  ),

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
                  const Text("Category",style:kTitleTextStyle,),
                  Text("See All",style:KSubTitleTextStyle.copyWith(color:KBlue),),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child:MasonryGridView.builder(
                    itemCount: categories.length,
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
                                    child: Text(categories[index].name, style: kTitleTextStyle,)),
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


