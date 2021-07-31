import 'package:flutter/material.dart';
import 'pages/choices.dart';
import 'pages/home.dart';
// import 'pages/login.dart';
//Indexpage is the video calling page 

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
 
      routes: {
        "/" : (context) => HomePage(),
        "/choices" : (context) => Choices(),
      },
      theme: ThemeData(
       primarySwatch: Colors.indigo,
       accentColor:Colors.lightBlue 
      ),
    );
  }
}