import 'package:flutter/material.dart';
import 'details.dart';
import 'inbox.dart';
import 'newAdvert.dart';
import 'profile.dart';
import 'stats.dart';
import 'messages.dart';
import 'map.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Home()),
    Center(child: MessagePage()),
    Center(child: Stats()),
    Center(child: Profile()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text('Home'),
            backgroundColor: Colors.blue[300]
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
            backgroundColor: Colors.greenAccent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            title: Text('Stats'),
            backgroundColor: Colors.pinkAccent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: Colors.blueAccent
          ),
        ],
        onTap: (index){
          setState(() {
                      _currentIndex = index;
                    });
        },
      ),
    );
  }
}