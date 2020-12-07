import 'package:flutter/material.dart';

import 'inbox.dart';

class MessagePage extends StatelessWidget {

 final Function toggleView;
 MessagePage({this.toggleView});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/messages': (BuildContext context) => new Inbox(),
      },
      
      home: new Messages(),
    );
  }
}

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
            appBar: AppBar( 
              title: Text("Messages", style: TextStyle(color: Colors.blue[300]),),
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
            body: Container(
                child: ListView(
                  children: <Widget>[
                        InkWell(
                                    onTap: () {
                              Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => new Inbox()));
                              },
                     child: Container(
                      height: 100,
                      color: Colors.blue[50],
                      child: Container(
                          margin: const EdgeInsets.only( left: 15, top: 10, bottom:10),
                          child: Row(
                            children: <Widget>[
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), image: DecorationImage(
                                    image: AssetImage("assets/img/profile.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15, left: 8, right: 8),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 , fontFamily: 'Roboto')),
                                          Text('1 hour ago', style: TextStyle(color:Colors.black38)),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only( right: 15,),
                                        child: Text('Hello, my name is Helena! My family (me and my husband) are looking...', style: TextStyle(color: Colors.black38),)),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                      ),
                    ),
                        ),
                    SizedBox(height: 2,),
                          Container(
                      height: 100,
                      color: Colors.blue[50],
                      child: Container(
                        margin: const EdgeInsets.only( left: 15, top: 10, bottom:10),
                        child: Row(
                          children: <Widget>[
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), image: DecorationImage(
                                  image: AssetImage("assets/img/profile.jpeg"),
                                  fit: BoxFit.cover,
                                )),
                              ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: EdgeInsets.only(top: 15, left: 8, right: 8),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 , fontFamily: 'Roboto')),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.red,),
                                          child: Center(child: Text('2', style: TextStyle(color: Colors.white))),
                                        ),
                                        Text('1 hour ago', style: TextStyle(color:Colors.black38)),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only( right: 15,),
                                      child: Text('Hello, my name is Helena! My family (me and my husband) are looking...', style: TextStyle(color: Colors.black38),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                            SizedBox(height: 2,),
                          Container(
                      height: 100,
                      color: Colors.white,
                      child: Container(
                        margin: const EdgeInsets.only( left: 15, top: 10, bottom:10),
                        child: Row(
                          children: <Widget>[
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), image: DecorationImage(
                                  image: AssetImage("assets/img/profile2.jpeg"),
                                  fit: BoxFit.cover,
                                )),
                              ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: EdgeInsets.only(top: 15, left: 8, right: 8),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('Mary Jane', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 , fontFamily: 'Roboto', color: Colors.blue[200])),
                                        Text('1 hour ago', style: TextStyle(color:Colors.black38)),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only( right: 15,),
                                      child: Text('Hello, my name is Helena! My family (me and my husband) are looking...', style: TextStyle(color: Colors.black38),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            
    );
  }
}