import 'package:flutter/material.dart';
import 'package:house/models/house.dart';

class HouseTile extends StatelessWidget {

  final House house;
  HouseTile({this.house});
  @override
  Widget build(BuildContext context) {
    return Container( 
                child: Card(
                 child: Container( 
                   child: Column(
                     children: <Widget>[
                       Container(
                         padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                         child: Column(
                           children: <Widget>[
                             Row(
                               children: <Widget>[
                                 Text(house.price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                               ],
                             ),
                             SizedBox(height: 10),
                             Row(
                               children: <Widget>[
                                 Text(house.location, style: TextStyle(color: Colors.black54)),
                               ],
                             ),
                           ],
                         ),
                       )
                     ],
                    ),
                   ),
                ) ,
    );
  }
}