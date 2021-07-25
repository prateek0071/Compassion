import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Compassion")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent
                ),
                child: Column(
                  children : <Widget>[
                    Text("Get Some help",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    Text("""Get some help by talking to 
                    someone who is eager to help you on a video call"""),
                    SizedBox(height: 15,),
                    MaterialButton(child: Text("Go"), onPressed: (){},
                    color: Colors.pinkAccent
                    )
                  ]
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent

                ),
                child : Column(
                  children : <Widget>[
                    Text("Assist",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    Text("""Talk to some one and help then relieve their 
                    mental health issues on a video call"""),
                    MaterialButton(child: Text("Go"), onPressed: (){},
                    color: Colors.deepPurpleAccent
                    )
                  ]
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}