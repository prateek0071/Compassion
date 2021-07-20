import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Compassion")),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: <Widget>[
                  Image.asset(""),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Hi there, let's have a fresh start!!"),
    
    //--------------------------------------------------form for sign in------------
                  Form(
                    child: Column(
                      children: <Widget>[
                        //username field
                        TextFormField(
                            decoration: deco(
                                "Enter your username", "Enter your password")),
                        //password field
                        TextFormField(
                          decoration: deco("Enter your password", "password"),
                          obscureText: true,
                        ),
                        TextFormField(
                          decoration: deco("Confirm password", ""),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    elevation: 9.0,
                  ),
    //-------------------------------------------------Sign In with google------------
                  SizedBox(
                    height: 20,
                  ),
                  Text("OR"),
                  MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.mail_outline, color: Colors.red),
                        Text("Sign Up using google"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Already have an account?"),
                      Text("Sign In", style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

//------------------------------------decoration for text form field--------
dynamic deco(String hint, String label) {
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
