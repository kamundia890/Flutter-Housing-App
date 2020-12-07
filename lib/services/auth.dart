import 'package:firebase_auth/firebase_auth.dart';


import 'package:house/models/user.dart';
import 'package:house/services/database.dart';

class AuthService {

final FirebaseAuth _auth = FirebaseAuth.instance;

  //create a user object based on firebaseUser
   User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid): null; 
  } 
  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  //sign in anon
Future signinAnon() async {
  try{
    AuthResult result = await _auth.signInAnonymously();
    FirebaseUser user = result.user;
    return _userFromFirebaseUser(user);
  }catch(e){
    print(e.toString());
    return null;
  }
}
  //sign in with email and pass
   Future login(String email, String password) async {
    try{
       AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
       FirebaseUser user = result.user;
       return _userFromFirebaseUser(user);
    }catch (e){
     print(e.toString());
     return null;
    }
  } 
  //register with email and pass
   Future register(String email, String password) async {
    try{
       AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
       FirebaseUser user = result.user;
       await DatabaseService(uid: user.uid).updateUserData('0', 'your location');
       return _userFromFirebaseUser(user);
    }catch (e){
     print(e.toString());
     return null;
    }
  } 

  //sign out
   Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
     print(e.toString());
     return null;
    }
  } 
}