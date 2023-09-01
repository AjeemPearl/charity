import 'package:demo_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DetailScreen extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(image: AssetImage("assets/images/ux_big.png"),
            alignment: Alignment.topRight,
    ),),
        child: Padding(
          padding: const EdgeInsets.only(left: 12,top: 40,right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/arrow-left (1).svg"),
                  SvgPicture.asset("assets/icons/more-vertical (1).svg"),
                ],
              ),
              SizedBox(height: 24,),
              ClipPath(
                clipper:BestSellerClipper(),
                child: Container(
                  color:KBestSeller,
                  padding: EdgeInsets.only(left: 10, top: 5, right: 20, bottom: 5),
                  child: Text("Best Seller".toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),),
                ),
              )
            ],
          ),

        ),
      )

    );
  }

}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width -20, 0);
    path.lineTo(size.width ,size.height/2);
    path.lineTo(size.width -20,size.height/2);
    path.lineTo(0,size.height);
    path.lineTo(0,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}