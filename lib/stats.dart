import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("My Statistics", style: TextStyle(color: Colors.blue[300], fontSize: 15,),),
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
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white10),
        child: ListView(
          children: <Widget>[
            Container(
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.fromLTRB(5,10,5,0),
                    height: 220,
                    width: double.maxFinite,
                    child: Card(
                       shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                topLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0)),
                                    ),
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                             child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),     image: DecorationImage(
                                image: AssetImage("assets/img/living.jpeg"),
                                fit: BoxFit.cover,
                              ),),
                            ),
                          ),
                           Expanded(
                            flex: 4,
                             child: Padding(
                               padding: EdgeInsets.symmetric(vertical:24.0),
                                    child: Column(
              
                                 children: <Widget>[
                                   Container(
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text('Apartment', style: TextStyle(color: Colors.black38)),
                                         SizedBox(height: 5,),
                                         Text('Kahawa, Nairobi', style: TextStyle(color: Colors.black)),
                                       ],
                                     ),
                                   ), 
                                   SizedBox(height: 15,),
                                    Container(
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text('Active Tenant', style: TextStyle(color: Colors.black38)),
                                         SizedBox(height: 5,),
                                         Text('John Doe', style: TextStyle(color: Colors.black)),
                                       ],
                                     ),
                                   ), 
                                   SizedBox(height: 15,),
                                    Container(
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text('Agreement', style: TextStyle(color: Colors.black38)),
                                         SizedBox(height:5,),
                                         Text('3rd Oct 2015', style: TextStyle(color: Colors.black)),
                                       ],
                                     ),
                                   ), 
                                 ],
                               ),
                             )
                          )
                        ],
                      ),
                    ),),
                    SizedBox(height: 10,),
             Container(
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.fromLTRB(5,10,5,0),
                    height: 220,
                    width: double.maxFinite,
                    child: Card(
                       shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                topLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0)),
                                    ),
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                             child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),     image: DecorationImage(
                                image: AssetImage("assets/img/living2.jpeg"),
                                fit: BoxFit.cover,
                              ),),
                            ),
                          ),
                           Expanded(
                            flex: 4,
                             child: Padding(
                               padding: EdgeInsets.symmetric(vertical:24.0),
                                    child: Column(
              
                                 children: <Widget>[
                                   Container(
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text('Apartment', style: TextStyle(color: Colors.black38)),
                                         SizedBox(height: 5,),
                                         Text('Kahawa, Nairobi', style: TextStyle(color: Colors.black)),
                                       ],
                                     ),
                                   ), 
                                   SizedBox(height: 15,),
                                    Container(
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text('Active Tenant', style: TextStyle(color: Colors.black38)),
                                         SizedBox(height: 5,),
                                         Text('John Doe', style: TextStyle(color: Colors.black)),
                                       ],
                                     ),
                                   ), 
                                   SizedBox(height: 15,),
                                    Container(
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text('Agreement', style: TextStyle(color: Colors.black38)),
                                         SizedBox(height:5,),
                                         Text('3rd Oct 2015', style: TextStyle(color: Colors.black)),
                                       ],
                                     ),
                                   ), 
                                 ],
                               ),
                             )
                          )
                        ],
                      ),
                    ),
                  ), 
              SizedBox(height: 10,),
                Padding(
                   padding: EdgeInsets.only(left: 10, right: 10),
                 child: Container(
                  height: 60,
                  decoration: BoxDecoration(color: Colors.green[400], borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text('PLACE AN ADVERT', style: TextStyle(color: Colors.white, fontSize: 20),)) ,
                  ),
              ),
          ],
        ),
      ),
    );
  }
}