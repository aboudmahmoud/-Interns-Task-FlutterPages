
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Consatns/constans.dart';

Expanded SkipButton() {
  return Expanded(
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding:  EdgeInsets.symmetric(vertical:50.0,horizontal: 10.0),
            child:MaterialButton(onPressed: (){},
              elevation:20.8 ,
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)) ,
              color: Modlitting,
              child:   Text('Skip',),
            )),
      )
  );
}


Row helQusteionComppants() {
  return Row(
    children: [
      Text("Help"),
      SizedBox(width: 5,),
      SvgPicture.asset("Images/quste.svg",width: 20,height: 20,)
    ],
  );
}

Row HadderPageComappants(String TextToShow) {
  return Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,

    children: [
      Text(TextToShow),
      helQusteionComppants(),
    ],);
}

Row ActionTextScreenCommponets() {
  return Row(
      children:[
        Text("Doesn't has any acount? "),
        Text("Regster Here ")
      ]

  );
}

Padding ButtonHandMade(BuildContext context,String TextHere,WidgetBuilder builderert) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: MaterialButton(minWidth: double.infinity,onPressed: (){  Navigator.of(context).push(
        MaterialPageRoute(builder:builderert )
    );},
      elevation:5.1 ,
      shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)) ,
      color: LightBl,
      child:   Text(TextHere,),
    ),
  );
}


Padding HandMadeTextFeild( String HintMessage) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextFormField(

      cursorColor: Colors.black,
      style: TextStyle(
          color: Colors.black
      ),
      decoration: InputDecoration(
        hintText: HintMessage,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    ),
  );
}


Column PhoneNumber() {
  return Column(
    children: [
      Row(children: [SizedBox(width: 20,),Text("Phone Number"),],),
      Align(alignment: Alignment.centerLeft,
        child: CountryCodePicker(
          showFlag:false,
          onChanged: print,
          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
          initialSelection: 'EG',
          favorite: ['+20', 'eg'],
          countryFilter: ['eg', 'AE'],
          showFlagDialog: false,
          comparator: (a, b) => b.name!.compareTo(a.name!),
          //Get the country information relevant to the initial selection
          onInit: (code) =>
              print("on init ${code!.name} ${code.dialCode} ${code.name}"),
        ),
      ),
    ],
  );
}


Column TextAndForme(String ForText,String Hint,{bool itspass=false}) {
  return Column(
    children: [  Text(ForText),

      HandMadeTextFeild( Hint),
    ],
  );
}


