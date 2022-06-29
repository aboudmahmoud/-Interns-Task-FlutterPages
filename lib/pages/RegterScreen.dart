import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../CompantsTouse/Compants.dart';
import 'package:assigmantone/Consatns/constans.dart';

class Regster extends StatelessWidget {
  const Regster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ScrrenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SvgPicture.asset(logsignSvg),
          Container(
            transform: Matrix4.translationValues(0.0, -100.0, 0),
            height: ScrrenHeight - (83),
            child: Column(
              children: [
                WalcomMSS(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HadderPageComappants(SignMeaage),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextAndForme(EmailLabel, EmailHintMessage),
                ),
                PhoneNumber(),
                TextAndForme(PassworLabel, PasswordHint, itspass: true),
                ButtonHandMade(context, RegsterBtton, (v) {
                  return Regster();
                }),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 18.0,
                  ),
                  child: bottomMessage(HaveAco, loginhere),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
