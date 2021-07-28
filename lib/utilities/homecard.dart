import 'package:flutter/material.dart';



class homeCard1 extends StatefulWidget {
//   
  @override
  _homeCard1State createState() => _homeCard1State();
}

class _homeCard1State extends State<homeCard1> {
  // creating the constructor
  late String title;
  late String context1; 
  late String image;
  homeCard23(String title, String context1, String image){
    title = title;
    context1 = context1;
    image = image;
  }
  
  @override
  Widget build(BuildContext context) {
    return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(44)),
    elevation: 14,
    child: Container(
      padding: EdgeInsets.all(85),
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),
      image: DecorationImage(image: NetworkImage("$image")
      ,fit: BoxFit.cover
      ),
      ),
      child: Column(children: <Widget>[
        Text(
          "$title",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text("$context1", textAlign: TextAlign.center),
        ),
        SizedBox(
          height: 15,
        ),
        MaterialButton(
            child: Text("Go"), onPressed: () {
              //figure out how to pass parameteres into stateful widget towmmorow
                Navigator.restorablePushReplacementNamed(context, "/choices");
            },
             color: Colors.pinkAccent)
      ]),
    ),
  );
  }
}


Widget homeCard(String title, String context1, String image, context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(44)),
    elevation: 14,
    child: Container(
      padding: EdgeInsets.all(85),
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),
      image: DecorationImage(image: NetworkImage("$image")
      ,fit: BoxFit.cover
      ),
      ),
      child: Column(children: <Widget>[
        Text(
          "$title",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text("$context1", textAlign: TextAlign.center),
        ),
        SizedBox(
          height: 15,
        ),
        MaterialButton(
            child: Text("Go"), onPressed: () {
              //figure out how to pass parameteres into stateful widget towmmorow
                Navigator.restorablePushReplacementNamed(context, "/choices");
            },
             color: Colors.pinkAccent)
      ]),
    ),
  );
}