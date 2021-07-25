import 'package:flutter/material.dart';

import 'pages/login.dart';

//Indexpage is the video calling page 

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      home: Container(),
      routes: {
        "/" : (context) => LoginPage(),
        // "/homepage" : (context) => HomePage(),
        // "/signup" : (context) => SignupPage(),
      },
      theme: ThemeData(
       primarySwatch: Colors.purple,
       accentColor:Colors.lightBlue 
      ),
    );
  }
}