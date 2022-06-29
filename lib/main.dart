import 'package:assigmantone/Consatns/constans.dart';
import 'package:assigmantone/pages/SignScreen.dart';
import 'package:flutter/material.dart';

import 'CompantsTouse/Compants.dart';
import 'pages/ComarralScreen.dart';


void main() {
  runApp(MaterialApp(home:MyApp(),debugShowCheckedModeBanner: false ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      body: Column(
        children: [
          //SkipButton have Expande widget and algin to top right
          // it should find another way to align to top end not right in caes of app supporting multible lang
          // but I coulndint find it or take time to serach and find antoher way to do it
          //its Comppant (method) type of Widget
          SkipButton(),
          //ComarialSlider Have the Comarial add or info or what ever what is it in our spalsh screen
          //its Class not Comppant like SkipButton
          // Why ? mmm I thought it will be batter if use class in case we want change type of widget like if its stales or other
          ComarialSlider(),
        ButtonHandMade(context,"GetStarted",(v){
          return Login();
        }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ActionTextScreenCommponets(),
          )

        ],
      ),
    );

  }






}

