import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../CompantsTouse/Compants.dart';

class Regster extends StatelessWidget {
  const Regster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              SvgPicture.asset("Images/DilveryImage.svg"),
              Column(
                children: [
                  Text('Walcom to fasihon factory'),
                  HadderPageComappants("Log in"),
                  TextAndForme("Email", "ex Abder@gmail.com"),

                  PhoneNumber(),

                  TextAndForme("Password", "entar your BacnkAcount Password dont Worry there no any kind of database or storing methods",itspass: true),
                  ButtonHandMade(context,"Regster",(v){
                    return Regster();
                  }),
                ],
              )
            ]
        ),
      ),
    );
  }

}
