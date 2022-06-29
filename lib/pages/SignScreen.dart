import 'package:assigmantone/Consatns/constans.dart';
import 'package:assigmantone/pages/RegterScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../CompantsTouse/Compants.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ScrrenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              logsignSvg,
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -100.0, 0),
              height: ScrrenHeight - 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(WalcomeMessage)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HadderPageComappants(SignInMasgee),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PhoneNumber(),
                  ButtonHandMade(context, SignInMasgee, (v) {
                    return Regster();
                  }),
                  bottomMessage(Donthave, Rgsterhere),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
