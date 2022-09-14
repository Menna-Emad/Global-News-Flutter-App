import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsapp/homescreen/homescreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: "Josefin",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartScreen(),
    );
  }
}
class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  void initState() {
  super.initState();
  Timer(
    Duration(milliseconds: 2200),
        () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    },
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
        image: AssetImage("assets/images/pattern.jpg"),
        fit: BoxFit.cover,
      ),),
        child: Center(
          child:Text('News',style: TextStyle(fontFamily: 'sigmar',color: Colors.black,fontSize: 50),),
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
