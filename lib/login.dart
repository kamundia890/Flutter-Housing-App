import 'package:flutter/material.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:house/services/auth.dart';
import 'package:house/shared/loading.dart';
import 'package:house/signup.dart';



class Loginpage extends StatefulWidget {

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;

  String email = '';

  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
          body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          padding: EdgeInsets.only(top: 40),
                  child: ListView(
                                      children:<Widget>[ Column(
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
              Text('Welcome back!', style: TextStyle(
              color: Colors.indigo[600],
              
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 25,
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
                          labelText: 'Username',
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
                      InkWell(
                        onTap: () async{
                                 if(_formkey.currentState.validate()){
                                   setState(()=> loading = true);
                                    dynamic result = await _auth.login(email, password);
                                    if(result == null){
                                      setState((){ 
                                        error = 'Could not sign in with those credentials';
                                        loading = false;
                                        });
                                    }
                                 }
                                 },
                         
                              child: Container(
                              height: 50.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                shadowColor: Colors.greenAccent,
                                color: Colors.green[400],
                                elevation: 7.0,
                                child: GestureDetector(
                                  onTap: () async{
                                 if(_formkey.currentState.validate()){
                                   setState(()=> loading = true);
                                    dynamic result = await _auth.login(email, password);
                                    if(result == null){
                                      setState((){ 
                                        error = 'Could not sign in with those credentials';
                                        loading = false;
                                        });
                                    }
                                 }
                                 },
                                  child: Center(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat', fontSize: 16),
                                    ),
                                  ),
                                ),
                              )),
                      ),
                            SizedBox(height: 12.0),
                              Text(
                                error,
                                style: TextStyle(color: Colors.red, fontSize: 14.0),
                              ),
                            SizedBox(height: 20,),
                            Container(
                              child: Center(
                                child: Text('Forgot password?', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),))),
                                SizedBox(height: 30.0,),
                            Container(
                              child: Center(
                                child: Text('Login In With', style: TextStyle(color: Colors.indigo[600],),))),
                                SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget>[
                                Container(height: 50,
                                width: 50,
                                child: Material(
                              borderRadius: BorderRadius.circular(25),
                              shadowColor: Colors.greenAccent,
                              color: Colors.green,
                              elevation: 7.0,
                              child: Center(child: Icon(Icons.favorite, color: Colors.white,),),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                               height: 50,
                                width: 50,
                                child: Material(
                              borderRadius: BorderRadius.circular(25),
                                  shadowColor: Colors.greenAccent,
                                  color: Colors.green,
                                  elevation: 7.0,
                                  child: Center(child: Icon(
                                                        Icons.favorite,
                                                        color: Colors.white,
                                                           ),),
                                                    ),
                                         ),
                                         SizedBox(width: 10),
                              Container(
                                height: 50,
                                width: 50,
                                child: Material(
                              borderRadius: BorderRadius.circular(25),
                              shadowColor: Colors.greenAccent,
                              color: Colors.green,
                              elevation: 7.0,
                              child: Center(child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ),),
                                ),
                              ),
                              ]
                            ),
                          SizedBox(height:40),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Text('Don/t have an account', style:TextStyle(color:Colors.blueAccent)),
                           SizedBox(width: 10,),
                           InkWell(
                             onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Signuppage()),
                                );
                             },
                             child: Text('Register now', style:TextStyle(color:Colors.red, fontWeight: FontWeight.bold))),
                         ],
                       )   
                  ],
                ),
              ),
            )
            ],
          ),
                                      ],
                  ),
        ),
      ),
    );
  }
}