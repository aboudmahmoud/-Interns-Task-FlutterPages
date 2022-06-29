import 'package:assigmantone/pages/RegterScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../CompantsTouse/Compants.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(transform: Matrix4.translationValues(0.0, -80.0, 0.0)
                ,child: SvgPicture.asset("Images/logsign.svg",)),
            Container(transform: Matrix4.translationValues(0.0, -180.0, 0.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
              alignment: Alignment.topLeft,
                        child: Text('Walcom to fasihon factory')),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HadderPageComappants("Sign In"),
                  ),
                  SizedBox(height: 20,),


                  PhoneNumber(),


              ButtonHandMade(context,"Sign In",(v){
                return Regster();
              }),
                  Container(transform: Matrix4.translationValues(0.0, -20.0, 0.0),child: Column(
                    children: [
                      SvgPicture.asset("Images/OrMessage.svg",),
                      ActionTextScreenCommponets()
                    ],
                  ) ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }





}
