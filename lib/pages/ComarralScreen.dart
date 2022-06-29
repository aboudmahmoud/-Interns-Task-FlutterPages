import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:assigmantone/Consatns/constans.dart';

class ComarialSlider extends StatelessWidget {
  const ComarialSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          Karave,
          width: 200,
        ),
        SvgPicture.asset(
          DilveryImag,
          width: 800,
        ),
        Container(
            transform: Matrix4.translationValues(0.0, -80.0, 0.0),
            child: Column(
              children: [
                Text(ComarialMassge),
                Text(getURDreamReady),
              ],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Ecilpes2, width: 10, height: 10),
            SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              Ecilpes1,
              width: 10,
              height: 10,
            ),
          ],
        ),
      ],
    );
  }
}
