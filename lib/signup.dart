import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';
import 'services/auth.dart';
import 'models/user.dart';


class Signuppage extends StatefulWidget {
  
  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final _formkey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String username = '';
  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
          padding: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(color: Colors.white70,  ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 150,
                height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/logo1.jpg'),
                  fit: BoxFit.fill
                ),
              ),
            
            ),
            Text('Registration', style: TextStyle(
            color: Colors.blueAccent[200],
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 30,
          ),),
          Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(),
            child: Form(
               key: _formkey,
                child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))
                    ),
                    validator: (val) =>
                    val.isEmpty ? 'Email cannot be blank' : null,
                    onChanged: (val) {
                         setState(()=> email = val);
                        },
                  ),
                  
                  
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))
                    ),
                    validator: (val) =>
                    val.length < 6 ? 'Enter a password 6+ chars long' : null,
                    onChanged: (val) {
                         setState(()=> password = val);
                        },
                  ),
                  SizedBox(height: 50.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                             InkWell(
                               onTap: () async{
                                
                               },
                         child: Container(
                          height: 40.0,
                          width: 100,
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            shadowColor: Colors.greenAccent,
                            color: Colors.green,
                            elevation: 7.0,
                            child: GestureDetector(
                                onTap: () async{
                                  if(_formkey.currentState.validate()){
                                   dynamic result = await _auth.register(email, password);
                                   if(result == null){
                                     setState(()=> error = 'please supply a valid email');
                                   }
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    'REGISTER',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                            ),
                          )),
                
                             ),
                          Container(
                          height: 40.0,
                          width: 100,
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            shadowColor: Colors.greenAccent,
                            color: Colors.white,
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Loginpage()),
                                );
                             },
                              child: Center(
                                child: Text(
                                  'CANCEL',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          )
                          ),
              
                    ],         
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  )
                ],
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}