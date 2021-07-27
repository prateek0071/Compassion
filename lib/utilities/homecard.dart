
import 'package:flutter/material.dart';

// class homeCard extends StatefulWidget {

//   @override
//   _homeCardState createState() => _homeCardState();
// }

// class _homeCardState extends State<homeCard> {
//   @override
//   Widget build(BuildContext context) {
//     return (); 
   
// }

// }

Widget homeCard(String title, String context1, String image){
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
                Navigator.restorablePushReplacementNamed(context, "/choices");
            },
             color: Colors.pinkAccent)
      ]),
    ),
  );
}