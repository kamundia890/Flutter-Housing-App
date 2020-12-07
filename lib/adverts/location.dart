import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';


class Location extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Location', style: TextStyle(color:Colors.indigo[800])),
            TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Address',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
                  SizedBox(height: 20,),
            Text('About Property', style: TextStyle(color:Colors.indigo[800])), 
            TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Floor',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
            TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Number of floors in the house',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),

            SizedBox(height: 20,),
            Text('Area', style: TextStyle(color:Colors.indigo[800])),
            TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Area[general]m2',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Living Area m2',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Kitchen Area m2',
                        labelStyle: TextStyle(
                          color: Colors.green[200]),
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}