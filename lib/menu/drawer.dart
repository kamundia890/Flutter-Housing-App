import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
          child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                height: 300,
                decoration: BoxDecoration(color: Colors.white, image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/img/logo1.jpg'))),
               
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue[300],),
              title: Text('My Profile', style: TextStyle(color: Colors.blue[200]),),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.message, color: Colors.blue[300]),
              title: Text('Messages', style: TextStyle(color: Colors.blue[200]),),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.graphic_eq, color: Colors.blue[300]),
              title: Text('Statistics', style: TextStyle(color: Colors.blue[200]),),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.blue[300]),
              title: Text('Favorite', style: TextStyle(color: Colors.blue[200]),),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.search, color: Colors.blue[300]),
              title: Text('Look for a place', style: TextStyle(color: Colors.blue[200]),),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }
}