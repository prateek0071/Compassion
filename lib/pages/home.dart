import 'package:compassion/utilities/drawer.dart';
import 'package:flutter/material.dart';
import 'package:compassion/utilities/homecard.dart';

String cardImage1 = "https://images.unsplash.com/photo-1465173121987-373740a169b3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bGlnaHQlMjBibHVlJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
String cardImage2 = "https://images.unsplash.com/photo-1521133573892-e44906baee46?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fGxpZ2h0JTIwYmx1ZSUyMGJhY2tncm91bmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Compassion")),
      drawer: myDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              homeCard("Get some help"
              , "Get some help by talking tosomeone who is eager to help you on a video call"
              , cardImage1
              ),
              homeCard("Assist someone", 
              "Assist someone get relief by talking to them on phone and assisting them in some mental health care"
              ,cardImage2
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
