import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar( 
              title: Text("John Doe", style: TextStyle(color: Colors.blue[300]),),
             backgroundColor: Color(0xFFFFFFFF),
             elevation: 0.0,
              centerTitle: true,
              leading: GestureDetector(
                onTap: () { /* Write listener code here */ },
                child: Icon(
                  Icons.arrow_back_ios,
                  semanticLabel: 'Back',
                  color: Colors.blue[300], // add custom icons also
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue[300],
                  ),
                  onPressed: () {},
                )
             ],
            ),
            body: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration( image: DecorationImage(
                      image: AssetImage("assets/img/wallpaper.jpeg"),
                      fit: BoxFit.cover,
                    ),),
                ),
                Container(
                  color: Colors.transparent,
                   child: ListView(
                    children: <Widget>[
                      Row(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left:0, top: 30,),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(75), color: Colors.deepOrange, image: DecorationImage(
                              image: AssetImage("assets/img/profile.jpeg"),
                              fit: BoxFit.cover,
                            ),),
                          ),
                           Container(
                          padding: EdgeInsets.only(left: 0, top: 0,),     
                          width: 200,
                          decoration: BoxDecoration( borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0),
                                bottomLeft: Radius.circular(25.0)
                             ) ),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0),
                                bottomLeft: Radius.circular(25.0)),
                                    ),
                              child: Container(
                               padding: EdgeInsets.only(left: 30, top: 30, right: 20, bottom: 40),
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0),
                                bottomLeft: Radius.circular(25.0)
                                ) ),
                              child: Text('ext of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has',),
                            ),
                          ),
                        ),
                        ],
                            
                      ),
                  
                      Container(
                        padding: EdgeInsets.only(left: 100, top: 0, right: 20),    
                        width: 100,
                        decoration: BoxDecoration( borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0)
                           ) ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0)),
                                  ),
                            child: Container(
                             padding: EdgeInsets.only(left: 30, top: 30, right: 20, bottom: 40),
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0)
                              ) ),
                            child: Text(' scrambled it to make a type specimen book it has',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                    child: Container(
                    height: 60,
                    margin: const EdgeInsets.only(bottom:0),
                    decoration: BoxDecoration(color: Colors.white,),
                    child: Row(
                      children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.mic, color: Colors.grey,)),
                      Expanded(
                        flex: 5,
                       child: TextField(
                         decoration: InputDecoration(
                          labelText: 'Type something',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                             border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                        ),
                        ),
                      ),
                      Icon(Icons.attach_file,  color: Colors.grey,),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.send, color: Colors.green,)),
                    ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}