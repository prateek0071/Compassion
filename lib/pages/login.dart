import 'package:compassion/utilities/authentication.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username;
  var password;
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Compassion")),
      body: Center(
        child: SingleChildScrollView(
          child: Padding( padding: EdgeInsets.all(12) ,
          child: Column(
            children: <Widget>[
              Image.asset(""),
              Text("Sign In",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              Text("Hi there Nice to see you again!!"),
    
    //--------------------------------------------------form for sign in------------         
              Form(
                key: formkey,
                child: Column(
                  children: <Widget>[
    
                    //username field
                    TextFormField(
                      decoration : deco("Enter your username", "Enter your password"),
                      onChanged : (usern){
                        setState(() {
                          username = usern;
                        });
                      }
                    ),
                    //password field
                    TextFormField(
                      decoration : deco("Enter your password", "password"),
                      obscureText: true,
                      onChanged: (pass){
                        setState(() {
                          password = pass;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(onPressed:() sync*{
                 try {
                   Signin(username,password);
                 } catch (e) {
                   //to mention an alert dialog if the code works
                 }
                 
                 
                //  Navigator.pushReplacementNamed(context, HomePage());

              }
              , child: Text("Sign In",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              elevation: 9.0,
              ),
    //-------------------------------------------------Sign In with google------------
              SizedBox(height: 20,),
              Text("OR"),
              MaterialButton(
                onPressed: (){
                  googleSignIn;
                },
                child: Row(children: <Widget>[
                  Icon(Icons.mail_outline, color:Colors.red),
                  Text("Log In with google"),  
                ],
                ),
              ),
              SizedBox(height: 10,),
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                Text("Forgot password"),
                Text("Haven't signed up yet?")
              ],),
    
            ],
          )),
        ),
      ),
    );
  }
}

//------------------------------------decoration for text form field--------
dynamic deco(String hint, String label){
  return InputDecoration(
                     hintText: "$hint",
                     hintStyle: TextStyle(color: Colors.pink),
                     labelText: "$label",
                     labelStyle: TextStyle(color: Colors.pink),
                     enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(25.0),
                     borderSide: BorderSide(
                     color: Colors.pink,
                     width: 2.0,
                  ),
                ),
                  
  );
}