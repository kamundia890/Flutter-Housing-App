import 'package:flutter/material.dart';
import 'package:house/profile.dart';
import 'package:house/stats.dart';

import 'adverts/environment.dart';
import 'adverts/facilities.dart';
import 'adverts/images.dart';
import 'adverts/location.dart';


class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
             title: Text("New Advertisement", style: TextStyle(color: Colors.blue[300], fontSize: 15,),),
        backgroundColor: Color(0xFFFFFFFF),
         centerTitle: true,
        leading: GestureDetector(
          onTap: () { /* Write listener code here */ },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue[300], // add custom icons also
          ),
        ),
       actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.blue[300],
                  ),
                  onPressed: () {},
                )
             ],
            bottom: TabBar(
              unselectedLabelColor: Colors.lightBlue[100],
              labelColor: const Color(0xFF3baee7),
              tabs: [
                Tab(text: 'Location'),
                Tab(text: 'Facilities'),
                Tab(text: 'Amenities'),
                Tab(text: 'Images'),
              ],
            ),
            
          ),
          body: TabBarView(
            children: [
              Center(child: Location()),
              Center(child: Facilities()),
              Center(child: Environments()),
              Center(child: Images()),
            ],
          ),
        ),
      ),
    );
  }
}