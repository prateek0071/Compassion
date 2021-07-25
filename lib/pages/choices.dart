import 'dart:ffi';

import 'package:flutter/material.dart';

//global variables required for declaration of values
dynamic chosenValues = [];
late bool isChoosed;


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
    return Scaffold(
      appBar: AppBar(title: Text("Compassion"),),
      body: ListView(
        children: <Widget>[
          //remember to add leading check box in this
          CheckboxListTile(title: Text("relationship problems"), value: isChoosed,
           secondary: Icon(Icons.favorite, color:Colors.red) ,onChanged: (bool? value) {
             var _checked = value;
             String val = "rel_problems";
             if (_checked ==  true){
               chosenValues.add(val);
             }else{chosenValues.remove(val);}
           },),
          CheckboxListTile(title: Text(""), value: isChoosed,
           secondary: Icon(Icons.favorite, color:Colors.red) ,onChanged: (bool? value) {},),
          CheckboxListTile(title: Text(""), value: isChoosed,
           secondary: Icon(Icons.favorite, color:Colors.red) ,onChanged: (bool? value) {},)


        ],
      ),
      
    );
  }
}


//------------------------------------------------checkbox----------------------------
// Widget checkboxTile(String title){
//   return MaterialButton(onPressed: (){});
// }