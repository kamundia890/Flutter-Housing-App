import 'package:flutter/material.dart';



class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text('Add Photos', style: TextStyle(color: Colors.indigo[800]),),
            SizedBox(height: 20),
            Container(
              height: 200,
              decoration: BoxDecoration(border: Border.all(color: Colors.indigo[800], width: 2)),
              child: Padding(
                padding: EdgeInsets.only(top: 70),
                              child: Center(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25), color: Colors.red
                        ),
                        child: Center(
                          child: Icon(Icons.add, color:Colors.white),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('Up to 5 photos or a Video upto 10 mbs', style: TextStyle(color: Colors.blueGrey),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}