import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("My Profile", style: TextStyle(color: Colors.blue[300]),),
        elevation: 0,
        backgroundColor: Color(0xFFE0FFFF),
         centerTitle: true,
        leading: GestureDetector(
          onTap: () { /* Write listener code here */ },
          child: Icon(
            Icons.arrow_back_ios,
            semanticLabel: 'Back',
            color: Colors.blue[300] // add custom icons also
          ),
        ),
        actions: <Widget>[
                      FlatButton(
                  textColor: Colors.blue[300],
                  onPressed: () {},
                  child: Text("Save", style: TextStyle(fontSize: 18),),
                  shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white70),
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img/pro.jpg"), fit: BoxFit.cover,)),
              child: Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(75), color: Colors.deepOrange, image: DecorationImage(
            image: AssetImage("assets/img/profile.jpeg"),
            fit: BoxFit.cover,
          ),),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Choose your status on the platform:', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo, fontSize: 17),),
                  SizedBox(height: 10,),
                  Text('Depending on the status the list of possibilities of the platform will be opened for you', style: TextStyle( color: Colors.blue[200], fontSize: 17))
                ],
              ),
            ),
            SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                             Expanded(
                               flex: 5,
                         child: Container(
                          height: 60.0,
                          width: 120,
                          child: Material(
                            borderRadius: BorderRadius.circular(5.0),
                            shadowColor: Colors.greenAccent,
                            color: Colors.indigo[400],
                            elevation: 7.0,
                            child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                          Icons.home,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                      Text('LandLord', style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                            ),
                          )),
                             ),
                             SizedBox(width: 20,),
                    Expanded(
                      flex: 5,
                         child: Container(
                            height: 60.0,
                            width: 120,
                            child: Material(
                              borderRadius: BorderRadius.circular(5.0),
                              shadowColor: Colors.greenAccent,
                              color: Colors.blue[50],
                              elevation: 7.0,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                          Icons.home,
                                          color: Colors.indigo[400],
                                          size: 30.0,
                                        ),
                                      Text('Tenant', style: TextStyle(color: Colors.indigo[400]),),
                                  ],
                                ),
                              ),
                            )
                          ),
                    ),
                    ],         
                  ),
             ),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                  
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0),
                    child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
                     ),
                     SizedBox(height: 0,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0),
                    child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
                     ),
                     SizedBox(height: 0,),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0),
                    child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
                     ),
                     SizedBox(height: 0,),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0),
                    child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Place of interest (city, town, etc)',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
                     ),
                  ],               
                ),
                SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                 child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Notifications', style: TextStyle(color: Colors.blue[900], fontSize: 20, fontWeight: FontWeight.bold ),),
                    new Radio(
                            value: 0,
                          ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                              child: Container(
                  height: 60,
                  decoration: BoxDecoration(color: Colors.green[400], borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text('PLACE AN ADVERT', style: TextStyle(color: Colors.white, fontSize: 20),)) ,
                  ),
              ),
               SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text('MY STATISTICS', style: TextStyle(color: Colors.green[400], fontSize: 20),)) ,
                  ),
              ),
          ],
        ),
      ),
    );
  }
}