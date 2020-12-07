import 'package:flutter/material.dart';
import 'package:house/models/house.dart';
import 'package:house/models/house_tile.dart';
import 'package:provider/provider.dart';

class Houses extends StatefulWidget {
  @override
  _HousesState createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  @override
  Widget build(BuildContext context) {
    final houses = Provider.of<List<House>>(context);
    
    return ListView.builder(
      itemCount: houses.length,
      itemBuilder: (context, index){
        return HouseTile(house: houses[index]); 
      },
    );
  }
}