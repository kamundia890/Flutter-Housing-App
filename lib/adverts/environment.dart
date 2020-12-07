import 'package:flutter/material.dart';



class Environments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text('Please choose parts of the environment that can be found in the nearby area:', style: TextStyle(color: Colors.blueGrey),),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Column(
                    children: <Widget>[
                    Card(
                      child: 
                    Container(
                      width: 150,
                      height: 150,
                    color: Colors.cyan[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: 
                        Icon(Icons.network_wifi, color: Colors.green, size: 20.0,)
                        ),
                        Icon(Icons.watch, color: Colors.green, size: 40.0,),
                        Column(
                          children: <Widget>[
                        Text('Furnished', style: TextStyle(color: Colors.blueGrey),),
                        Text('Apartment', style: TextStyle(color: Colors.blueGrey),),
                          ],
                        )
                        
                      ],
                    ),
                    ),
                    ),
                    Card(
                      child: 
                    Container(
                      width: 150,
                      height: 150,
                    color: Colors.cyan[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: 
                        Icon(Icons.network_wifi, color: Colors.green, size: 20.0,)
                        ),
                        Icon(Icons.watch, color: Colors.green, size: 40.0,),
                        Column(
                          children: <Widget>[
                        Text('Furnished', style: TextStyle(color: Colors.blueGrey),),
                        Text('Apartment', style: TextStyle(color: Colors.blueGrey),),
                          ],
                        )
                        
                      ],
                    ),
                    ),
                    ),
                    Card(
                      child: 
                    Container(
                      width: 150,
                      height: 150,
                    color: Colors.cyan[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: 
                        Icon(Icons.network_wifi, color: Colors.green, size: 20.0,)
                        ),
                        Icon(Icons.watch, color: Colors.green, size: 40.0,),
                        Column(
                          children: <Widget>[
                        Text('Furnished', style: TextStyle(color: Colors.blueGrey),),
                        Text('Apartment', style: TextStyle(color: Colors.blueGrey),),
                          ],
                        )
                        
                      ],
                    ),
                    ),
                    ),
                  ],),
                ),
                 Expanded(
                   flex: 5,
                   child: Column(children: <Widget>[
                    Card(
                      child: 
                    Container(
                      width: 150,
                      height: 150,
                    color: Colors.cyan[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: 
                        Icon(Icons.network_wifi, color: Colors.green, size: 20.0,)
                        ),
                        Icon(Icons.watch, color: Colors.green, size: 40.0,),
                        Column(
                          children: <Widget>[
                        Text('Furnished', style: TextStyle(color: Colors.blueGrey),),
                        Text('Apartment', style: TextStyle(color: Colors.blueGrey),),
                          ],
                        )
                        
                      ],
                    ),
                    ),
                    ),
                    Card(
                      child: 
                    Container(
                      width: 150,
                      height: 150,
                    color: Colors.cyan[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: 
                        Icon(Icons.network_wifi, color: Colors.green, size: 20.0,)
                        ),
                        Icon(Icons.watch, color: Colors.green, size: 40.0,),
                        Column(
                          children: <Widget>[
                        Text('Furnished', style: TextStyle(color: Colors.blueGrey),),
                        Text('Apartment', style: TextStyle(color: Colors.blueGrey),),
                          ],
                        )
                        
                      ],
                    ),
                    ),
                    ),
                    Card(
                      child: 
                    Container(
                      width: 150,
                      height: 150,
                    color: Colors.cyan[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: 
                        Icon(Icons.network_wifi, color: Colors.green, size: 20.0,)
                        ),
                        Icon(Icons.watch, color: Colors.green, size: 40.0,),
                        Column(
                          children: <Widget>[
                        Text('Furnished', style: TextStyle(color: Colors.blueGrey),),
                        Text('Apartment', style: TextStyle(color: Colors.blueGrey),),
                          ],
                        )
                        
                      ],
                    ),
                    ),
                    ),
                ],),
                 )
              ],
            )
          ],
        ),
      ),
    );
  }
}