import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:house/services/auth.dart';
import 'package:house/services/database.dart';
import 'package:provider/provider.dart';
import 'menu/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:house/services/houses.dart';

import 'models/house.dart';


void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 
 final AuthService _auth = AuthService();
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<House>>.value(
      value: DatabaseService().houses,
          child: MaterialApp(
        home: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar( 
                title: Text("Map", style: TextStyle(color: Colors.blue[300]),),
               backgroundColor: Color(0xFFFFFFFF),
               elevation: 0.0,
                centerTitle: true,
                leading: GestureDetector(
                  onTap: () { /* Write listener code here */ },
                  child: Icon(
                    Icons.menu,
                    semanticLabel: 'Back',
                    color: Colors.blue[300], // add custom icons also
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.notifications_active,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  )
               ],
              ),
          body: Container(
           child: ListView(
             children: <Widget>[
              Container(
                height: 300,
                child:  GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                  myLocationButtonEnabled: false,
                ),
              ),
              Houses(),
             ],
           ),
          ),
           
        floatingActionButton: FloatingActionButton(
        onPressed: () async{
          await _auth.signOut();
        },
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
        ),
      ),
    );
  }
}

