// import 'dart:ffi';

import 'package:flutter/material.dart';

//global variables required for declaration of values
dynamic chosenValues = [];
bool randomvalue = true;

class Choices extends StatefulWidget {
  @override
  _ChoicesState createState() => _ChoicesState();
}
  
class _ChoicesState extends State<Choices> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initForAgora();
  }

  Future<void> initForAgora() async{

  }

  @override
  Widget build(BuildContext context) {  
    bool relationship = false;
    bool career = false;
    bool medical = false;
    bool parental = false;

    return Scaffold(
      appBar: AppBar(title: Text("Compassion"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Choose the topics you wanna talk about to someone",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  //remember to add leading check box in this
                  CheckboxListTile(title: Text("relationship problems"), value: relationship,
                   secondary: Icon(Icons.favorite, color:Colors.red) ,onChanged: (bool? value) {
                     setState(){
                       relationship == true?relationship=false:relationship=true;
                     }
                   },),
      //----------------------------------------------------------------------------------                 
      
                  CheckboxListTile(title: Text("clinical/neurological problems"), value: career, 
                   secondary: Icon(Icons.local_hospital, color:Colors.brown) ,onChanged: (bool? value) {
                    setState(() {
                       career==false?career=true:career=false;
                    });
                   },
                   ),
      //----------------------------------------------------------------------------------                 
                  
                  CheckboxListTile(title: Text("poverty/financial problems"), value: randomvalue,
                   secondary: Icon(Icons.account_balance, color:Colors.green) ,onChanged: (bool? value) {},),
      //----------------------------------------------------------------------------------
                  CheckboxListTile(title: Text("Social Anxiety related problems"), value: career, 
                   secondary: Icon(Icons.groups, color:Colors.brown) ,onChanged: (bool? value) {
                    setState(() {
                       career==false?career=true:career=false;
                    });
                   },),
      //----------------------------------------------------------------------------------                 
      
                   CheckboxListTile(title: Text("Existential problems"), value: career, 
                   secondary: Icon(Icons.sentiment_dissatisfied, color:Colors.red) ,onChanged: (bool? value) {
                    setState(() {
                       career==false?career=true:career=false;
                    });
                   },),
                   CheckboxListTile(title: Text("career related problems"), value: career, 
                   secondary: Icon(Icons.trending_up, color:Colors.black) ,onChanged: (bool? value) {
                    setState(() {
                       career==false?career=true:career=false;
                    });
                   },),
      //----------------------------------------------------------------------------------                 
      
                   CheckboxListTile(title: Text("parental problems"), value: career, 
                   secondary: Icon(Icons.supervisor_account, color:Colors.indigo) ,onChanged: (bool? value) {
                    setState(() {
                       career==false?career=true:career=false;
                    });
                   },),
      //----------------------------------------------------------------------------------                 
      
                  CheckboxListTile(title: Text("casually talk to someone compassionaite"), value: career, 
                   secondary: Icon(Icons.self_improvement, color:Colors.blue) ,onChanged: (bool? value) {
                    setState(() {
                       career==false?career=true:career=false;
                    });
                   },),
      //----------------------------------------------------------------------------------                 
                  
                ],
              ),
            ),
      //----------------------------------------------------------------------------------                 
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                padding: EdgeInsets.all(13),
                onPressed: (){},
                elevation: 15,
                child: Text("Go"),
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}