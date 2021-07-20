import 'package:flutter/material.dart';

class Choices extends StatefulWidget {
  @override
  _ChoicesState createState() => _ChoicesState();
}
 int mainee = 45;
class _ChoicesState extends State<Choices> {
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(title: Text("Compassion"),),
      body: ListView(
        children: <Widget>[
          //remember to add leading check box in this
          ListTile(leading: checkVal(), trailing: Icon(Icons.favorite, color: Colors.black), title: Text("Relationship Issues"),),
          ListTile(leading: checkVal(), trailing: Icon(Icons.drive_file_rename_outline, color: Colors.blue), title: Text("Academics/Career Issues"),),
          ListTile(leading: checkVal(), trailing: Icon(Icons.mood_bad, color: Colors.black), title: Text("Life"),),
          ListTile(leading: checkVal(), trailing: Icon(Icons.local_atm, color: Colors.green), title: Text("Poverty/ Financial condition"),),
          ListTile(leading: checkVal(), trailing: Icon(Icons.supervisor_account, color: Colors.black), title: Text("parenting/family problems"),),
          ListTile(leading: checkVal(), trailing: Icon(Icons.local_hospital, color: Colors.red), title: Text("Clinical depression"),),
          ListTile(leading: checkVal(), trailing: Icon(Icons.sentiment_very_dissatisfied, color: Colors.red), title: Text("Anxiety"),),
          ListTile(leading: checkVal(), trailing: Icon(Icons.support, color: Colors.yellow), title: Text("Existential Crisis"),)




        ],
      ),
      
    );
  }
}


//------------------------------------------------checkbox----------------------------
Widget checkVal(){ return Checkbox(onChanged: (bool? value) {  }, value: null,  
);  }