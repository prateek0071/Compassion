import 'package:flutter/material.dart';


Widget myDrawer(){
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          DrawerHeader(child: Text("name")),
          ListTile(title: Text("My Points"), leading: Icon(Icons.star, color: Colors.yellow),),
          ListTile(title: Text("Profile"), leading: Icon(Icons.account_box, color: Colors.black),),


        ],
      ),
    ),
  );
}