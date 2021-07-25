import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
final googleSignIn = GoogleSignIn();

googleSignin() async{
  GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();

  if (googleSignInAccount != null){
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
    //We get some auth credential after this
    AuthCredential credential = GoogleAuthProvider.credential(idToken: googleSignInAuthentication.idToken, 
    accessToken: googleSignInAuthentication.accessToken);

    UserCredential result = await _auth.signInWithCredential(credential);

    User user = await _auth.currentUser;
    print(user.uid);

    Future.value(true);

}
}


 Future<dynamic> Signin(String email ,String password) async{
  try {
    UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, 
    password: password);
    User user = result.user;
    return Future.value(true);
  } catch (e) {
    switch (e) {
      case 'ERROR_EMAIL_ALREADY_IN_USE':
      print("serror"); 
        
        break;
      default:
    }
  } finally{
   /*
   IF USER IS AUTHENTICATED : 
      PUSH USER TO HOMESCREEN
      */
  }


}

Future<bool> SignOutUser() async{

  User user = await _auth.currentUser;

  if(user.providerData[1].providerId == 'google.com'){
    await googleSignIn.disconnect();

  }

  
  await _auth.signOut();
  return Future.value(true);
}