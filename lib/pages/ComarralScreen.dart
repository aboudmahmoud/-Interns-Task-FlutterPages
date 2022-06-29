import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComarialSlider extends StatelessWidget {
  const ComarialSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children:[
        SvgPicture.asset("Images/7Krave.svg",width: 200,),
        SvgPicture.asset("Images/DilveryImage.svg",width: 800,),
        Container(transform: Matrix4.translationValues(0.0, -80.0, 0.0),child:Column(
          children: [
            Text('get food delivery to  your Dream'),
            Text('Get your Dream Ready'),
          ],
        ) ),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SvgPicture.asset("Images/Ellipse 2.svg",width: 10,height: 10),
            SizedBox(width: 20,),
            SvgPicture.asset("Images/Ellipse 1.svg",width: 10,height: 10,),
          ],
        ),
      ],

    );
  }
}
