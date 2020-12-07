import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
              child: ListView(
          children: <Widget>[
            Text('Photos/Videos', style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 340,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Container(
                         decoration: BoxDecoration( image: DecorationImage(
                                      image: AssetImage("assets/img/living.jpeg"),
                                      fit: BoxFit.cover,
                                    ),borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    ),
                    SizedBox(width: 10),
                    Container(
                    width: 300,
                    child: Card(
                      child: Container(
                         decoration: BoxDecoration( image: DecorationImage(
                                      image: AssetImage("assets/img/living2.jpeg"),
                                      fit: BoxFit.cover,
                                    ), borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    )
                ],
              ),
            ),
            SizedBox(height: 20,),
           Text('Description', style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),),
           SizedBox(height: 0),
           Container(
             
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               
             ),
                      child: Card(
               shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text('Paint your app to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to,Paint your app to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to ', style: TextStyle(
                            color: Colors.indigo[800]
               ),)),
             ),
           ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
            Text('Children Allowed', style: TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.bold),),
             AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              height: 30,
              width: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: toggleValue ? Colors.green: Colors.redAccent[100].withOpacity(0.5)),
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeIn,
                    top: 3.0,
                    left: toggleValue ? 35.0 : 0.0,
                    right: toggleValue ? 0.0 : 35.0,
                    child: InkWell(
                      onTap: toggleButton,
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 1000),
                        transitionBuilder: (Widget child, Animation<double> animation){
                          return ScaleTransition(child: child, scale: animation);
                        },
                        child: toggleValue ? Icon(Icons.check_circle, color: Colors.white, size: 25.0,
                        key: UniqueKey()):
                        Icon(Icons.remove_circle_outline, color: Colors.white, size: 25.0,
                        key: UniqueKey()),
                      ),
                    ),
                  )
                ],
              ),
            )
           ],),
           SizedBox(height: 10,),
                 Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
            Text('Pets Allowed', style: TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.bold),),
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              height: 30,
              width: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: toggleValue ? Colors.green: Colors.redAccent[100].withOpacity(0.5)),
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeIn,
                    top: 3.0,
                    left: toggleValue ? 35.0 : 0.0,
                    right: toggleValue ? 0.0 : 35.0,
                    child: InkWell(
                      onTap: toggleButton,
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 1000),
                        transitionBuilder: (Widget child, Animation<double> animation){
                          return ScaleTransition(child: child, scale: animation);
                        },
                        child: toggleValue ? Icon(Icons.check_circle, color: Colors.white, size: 25.0,
                        key: UniqueKey()):
                        Icon(Icons.remove_circle_outline, color: Colors.white, size: 25.0,
                        key: UniqueKey()),
                      ),
                    ),
                  )
                ],
              ),
            )
           ],),
           SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               Text('Rental Conditions', style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),),
               Text('450ksh', style: TextStyle(fontSize: 15, color: Colors.indigo, fontWeight: FontWeight.bold),)
              ],
              ),
              SizedBox(height: 20,),
              Text('Utilities are included:', style: TextStyle(fontSize: 15, color: Colors.indigo[200],),),
              SizedBox(height: 10,),
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(15)),
                      child: Center(child: Text('Gas', style: TextStyle(color: Colors.white), ))
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.indigo[100], borderRadius: BorderRadius.circular(15)),
                      child: Center(child: Text('Wifi', style: TextStyle(color: Colors.white), ))
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
                    Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
            Text('Utilities are Separately', style: TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.bold),),
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              height: 30,
              width: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: toggleValue ? Colors.green: Colors.redAccent[100].withOpacity(0.5)),
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeIn,
                    top: 3.0,
                    left: toggleValue ? 35.0 : 0.0,
                    right: toggleValue ? 0.0 : 35.0,
                    child: InkWell(
                      onTap: toggleButton,
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 1000),
                        transitionBuilder: (Widget child, Animation<double> animation){
                          return ScaleTransition(child: child, scale: animation);
                        },
                        child: toggleValue ? Icon(Icons.check_circle, color: Colors.white, size: 25.0,
                        key: UniqueKey()):
                        Icon(Icons.remove_circle_outline, color: Colors.white, size: 25.0,
                        key: UniqueKey()),
                      ),
                    ),
                  )
                ],
              ),
            )
           ],),
          ],
        ),
      ),
    );
  
  }
 toggleButton(){
   setState(() {
        toggleValue = ! toggleValue;
      });
 }
}