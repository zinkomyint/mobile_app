// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
 //main*
 //first_Card
 //Second_card
 //four_card_link
//photo_album
//note
//Contact_route*
//Ticket_Route*
//arrival_Deparature

void main() { 
  runApp(MaterialApp( 
    initialRoute: '/', 
    routes: <String, WidgetBuilder>{ 
      '/': (context) => MyApp(), 
      '/second': (BuildContext context) => ContactRoute(),
    }, 
  )); 
}

//main
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Welcome to Flutter',
      home: Scaffold(
        
        //bottomNavigationBar
        bottomNavigationBar: Stack(
          children: [
            new Container(
              // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              height: 50.0,
              color: Colors.red[50],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: new CustomPaint(
              child:Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 2, 5, 5),
              margin: const EdgeInsets.only(top: 1),
              child:Center(
                child:Text('© 2021 Copyright ©2021 All rights reserved | This template is made with  by ZINKOMYINT',
              style: TextStyle(
              letterSpacing: 1.20,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              
                // painter: Painter(),
                // size: Size.infinite,
              ),
              ),
            ),
          ],
        ),
         //bottomNavigationBar

        //drawer
    drawer: Drawer(
    child:Container(
      color: Colors.white,
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
      height: 120,
      child:
      DrawerHeader(
        //profile
        child:Container(
                  child: Row(
                    children:[
                      Column(children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 50,
                        child: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                            child: Icon(Icons.people_rounded),
                      ),
                        )
                      ],),
                        
                        Column(children: [
                        Container(
                          //image_circle
                          child:Text('Welcome \n''ZIN KO MYINT',style: TextStyle(color: Colors.white,letterSpacing: 1,height: 1.25)),
                       //image_circle
                        )
                      ],)
                    ]
                  ),  
        ),
           //profile

        // child: Center(
        //   child: Text('MM-INVESTMENT ( Menu )',style: TextStyle(letterSpacing: 1,fontWeight: FontWeight.bold,fontSize: 20,
        //   color: Colors.white)),
        // ),
        decoration: BoxDecoration(
          color: Colors.green
        ),
      ),
      ),

       ListTile(
        leading: const Icon(Icons.home,color: Colors.green),
        title: Text('Home' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () 
        { 
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new MyApp())
                          ); 
          },
        ),

      ListTile(
        leading: const Icon(Icons.account_balance,color: Colors.green),
        title: Text('Account' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ListRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.credit_card_outlined,color: Colors.green),
        title: Text('Card' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new CardRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.directions_bus,color: Colors.green),
        title: Text('Ticket' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new Ticketroute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.contact_phone,color: Colors.green),
        title: Text('Contact' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ContactRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.settings,color: Colors.green),
        title: Text('Setting' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new SettingRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.logout,color: Colors.green),
        title: Text('Logout' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
              Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new LoginRoute())
                          ); 
        },
      ),



    ],
  ),
    ),
),
//drawer
        backgroundColor: Colors.yellow[50],
        appBar: AppBar(
          title: Text('MM-INVESTMENT'),
        ),
        body:SingleChildScrollView(
          child: Column(
          //  margin: const EdgeInsets.only(top: 10.0),
          children: [ 
             
             //first_Card
             Container(
                //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
                margin: const EdgeInsets.only(top: 10.0),
                width: 350,
            child:Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Column(
              children: [
              Container(
              // margin: const EdgeInsets.only(top: 0.20),
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              width: 160,
              // height: 120,
              child: Image.asset('assets/images/logo.jpg', 
              // height: 50,
              ),
            )
            
            ],
            ),
            Expanded(
            child:Column(
              children: [
              Container(
                color:Colors.white,
            //     decoration: BoxDecoration(
            //       border: Border(
            //       top: BorderSide(width: 1.0, color: Colors.black),
            //       bottom: BorderSide(width: 1.0, color: Colors.black),
            //       right: BorderSide(width: 1.0, color: Colors.black),
            //   ),
            // ),
              // margin: const EdgeInsets.only(top: 10.0),
              // padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              // width: 160,
              height: 100,
              // color: Colors.white,
              child:Center(
                  child: Text('MM-INVESTMENT\n''Thanks For Using',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 15,
                    color: Colors.black,
                  )),
              )
            ),
            ],
            ),
            ),
              ],
            ),
              ),
            //first_Card
          
           //Second_card
           Container(
            //  margin: const EdgeInsets.only(top: 5.0),
             width: 350,
             child:Row(
             children: [
                Expanded(
                child:
                Column(
                  children: [
              Container(
              //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
              margin: const EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              // width: 155,
              child: Center(
                child:Text('Hot-Line',
                style: TextStyle(
                height: 0.5,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
            ),
            ),
              ),
            ),
                  ],
                ),
                ),

                Expanded(child:
                Column(
                  children: [
                     Container(
             //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
                margin: const EdgeInsets.only(top: 10.0,left: 7),
                padding: EdgeInsets.fromLTRB(10, 20, 10, 15),
                height: 60,
                child: Row(
                  children:[
                    Column(
                      children: [
                        Center(child: Icon(Icons.phone_android, color: Colors.white ))
                    ],
                    ),
                     Column(
                      children: [
                       Center(
                       child:Text('(415) 555-222-855',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                         )
                      ],
                    )
                  ]
                ),
            //     child: Center(
            //     child:Text('(415) 555-222-855',
            //     style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 12,
            //     height: 0.5,
            //     fontWeight: FontWeight.bold,
            // ),
            // ),
            //   ),
            ),
                  ],
                ),
                ),
             ],
           ),
           ),
           //Second_Card
           
           //four_card_link
           Container(
           width: 350,
            margin: const EdgeInsets.only(top: 6),
           child:Row(
             children: [
              
                Expanded(child: 
                Column(
                  children: [
                     Container(
            //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
              margin: const EdgeInsets.only(top: 10),
              width: 84,
              child: Column(
                  children: <Widget>[
                    Icon(Icons.account_balance, 
                    color: Colors.green,
                    size: 50,
                     ),
                Container( 
                width: 73,
                decoration: BoxDecoration(
                border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
              
                ),
                ),
                      child:RaisedButton( 
                      child: Text('Account', style: TextStyle(
                      color: Colors.green,
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      )
                      ),
                      onPressed: ()
                      { 
                       Navigator.push(context, new MaterialPageRoute(
                       builder: (context) =>
                          new ListRoute())
                        ); 
                      },
                      color:Colors.grey[200],
                            ),  
                            )
                  ],
                ),
            ),
                  ],
                ),
                ),
                Column(
                  children: [
                     Container(
            //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
              margin: const EdgeInsets.only(top: 10,left:1),
              // padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              width: 82,
              // height: 50,
              // color: Colors.yellow,
              child: Column(
                  children: <Widget>[
                    Icon(Icons.credit_card_outlined, 
                    color: Colors.green,
                    size: 50,
                     ),
                     Container( 
                       width: 65,
                        decoration: BoxDecoration(
                        border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
              
            ),
            ),
                      child:RaisedButton( 
                      child: Text('Card', style: TextStyle(
                      color: Colors.green,
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.bold,
                      )
                      ),
                      onPressed: ()
                      {
                        Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) =>
                                        new CardRoute())
                                      ); 
                      },
                      color:Colors.grey[200],
                            ), 
                            )
                    
                  ],
                ),
            ),
                  ],
                ),
                Expanded
                (
                child: 
                Column(
                  children: [
                     Container(
              //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
              margin: const EdgeInsets.only(top: 10,left:1),
              // padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              width: 82,
               child: Column(
                  children: <Widget>[
                    Icon(Icons.directions_bus, 
                    color: Colors.green,
                    size: 50,
                     ),
                     Container( 
                       width:65,
                        decoration: BoxDecoration(
                        border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
              
            ),
            ),
                      child:new RaisedButton( 
                      child: Text('Ticket', style: TextStyle(
                      color: Colors.green,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      )),
                      onPressed: ()
                      { 
                       Navigator.push(context, new MaterialPageRoute(
                       builder: (context) =>
                          new Ticketroute())
                        ); 
                      },
                      color:Colors.grey[200],
                            ), 
                            )
                    
                  ],
                ),
            ),
                  ],
                ),
                ),

                Column(
                  children: [
                     Container(
              //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
              margin: const EdgeInsets.only(top: 10,left: 1),
              // padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              width: 82,
              child: Column(
                  children: <Widget>[
                    Icon(Icons.contact_phone, 
                    color: Colors.green,
                    size: 50,
                     ),
                    Container(
                      width: 70,
                       decoration: BoxDecoration(
                border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
              
            ),
            ),
                      child:RaisedButton( 
                      child:Text('Contact', style: TextStyle(
                      color: Colors.green,
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                      onPressed: ()
                      { 
                      Navigator.pushNamed(context, '/second'); 
                      },
                      color:Colors.grey[200],
                    //   shape: new RoundedRectangleBorder(
                    //   borderRadius: new BorderRadius.circular(5.0),
                    // ),
                            ), 
                            )
                     
                  ],
                ),
            ),
                  ],
                ),
             ],
           ),
           ),
            //four_card_link

            Container(
              margin: const EdgeInsets.only(top: 15,left: 33),
              child:Row(
                children: [
                  Column(
                    children: [
                        Center(
                        child:Text('Main Partnerships Banks',style:TextStyle(letterSpacing: 1,fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )
                      )
                      )
                      
                    ],
                  )
              ],
              ),
            ),
           
           //photo_album
           Container(
           margin: const EdgeInsets.only(top: 3),
           width: 350,
           child:
           Row(
             children: [
              Expanded(child:
              Column(
                 children: [
                   Container(
                     decoration: BoxDecoration(border:Border.all(width: 0.2, color: Colors.black26)),
                     margin: const EdgeInsets.only(top: 10),
                     child: Image.asset('assets/images/jp2.jpg'),
                   )
                 ],
               ),
              ),
              Expanded(
              child:
              Column(
                 children: [
                   Container(
                     decoration: BoxDecoration(border:Border.all(width: 0.2, color: Colors.black26)),
                     margin: const EdgeInsets.only(top: 10,left: 10),
                     child: Image.asset('assets/images/jap.jpg'),
                   )
                 ],
               ),
              ),
            
             ],
           ),
           ),
         
            //photo_album

            //note
           Row(
             children: [
               Expanded(child:
               Column(
                 children: [
                 Container(
                      width:350,
                      decoration: BoxDecoration(border:Border(
                      left: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    )
                    ),
                      // decoration: BoxDecoration(border:Border.all(width: 1, color: Colors.black),
                      // borderRadius: new BorderRadius.circular(5.0),
                      // // gradient: LinearGradient(
                      // // begin: Alignment.topLeft,
                      // // end: Alignment(0.8, 0.0), 
                      // // colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)], 
                      // // tileMode: TileMode.repeated, 
                      // // ),
                      // ),
                     margin: const EdgeInsets.only(top: 10),
                     padding: EdgeInsets.all(10.0),
                   child:Center(
                     child:Text(
                       'Find More Bank Information & Records on MyHeritage™ - Easy & Free. Learn the meaning and history behind your last name. Start free now! Solve family mysteries. Free family tree software. Start your family tree. Trusted by million users.',
                        style: TextStyle(letterSpacing: 1,height: 1.5
                        ), 
                       ),
                    )
                 )
               ],
               )
               ),
             ],
           ),
           //note

          //ads1
          Container(
            //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
   margin: const EdgeInsets.only(top: 20),
            width: 350,
            child: 
            Row(
            children: 
            [
              Expanded(
              child:
              Column(
                children:[
                  Container(
                     margin: const EdgeInsets.only(right: 10),
                     padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    // width: 150,
                    child: Image.asset('assets/images/saving.jpg'), 
                  ),
                ]
              ),
              ),

               Expanded(
               child: 
               Column(
                children:[
                  Container(
                    child: Text('Keep your money secure and earn interest on your saving.',
                    style: TextStyle(letterSpacing: 1,
                    fontSize: 12,
                    height: 1.5,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    ),
                    ), 
                  ),
                ]
              ),
               ),

            ],
            ),
          ),
          //ads1

          //ads2
            Container(
            //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
   margin: const EdgeInsets.only(top: 20),
            width: 350,
            child: 
            Row(
            children: 
            [
              Expanded(
              child:
              Column(
                children:[
                  Container(
                     margin: const EdgeInsets.only(right: 10),
                     padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    // width: 150,
                    child: Image.asset('assets/images/fix.jpg'), 
                  ),
                ]
              ),
              ),

               Expanded(
               child: 
               Column(
                children:[
                  Container(
                    child: Text('Keep your money secure and earn interest on your saving.',
                    style: TextStyle(letterSpacing: 1,
                    fontSize: 12,
                    height: 1.5,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    ),
                    ), 
                  ),
                ]
              ),
               ),

            ],
            ),
          ),
          //ads2
           
           //footer
          //  Container(
          //    width: 350,
          //    color: Colors.white,
          //    margin: const EdgeInsets.only(top: 30),
          //    child: Row(
          //      children: [
          //        Expanded(child:
          //        Column(
          //          children: [
          //            Container(
          //               alignment: Alignment.bottomCenter,
          //              width: 340,
                       
          //           //  child:Text('© 2021 Copyright ©2021 All rights reserved | This template is made with  by ZINKOMYINT')
          //            ),
          //        ],
          //        ),
          //        ),
          //      ],
          //      ),
          //    )
          //    //footer

          ],
        ),
      
      ),
    ),
    );
  }
}
//main

//Contact_route
class ContactRoute extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
        //bottomNavigationBar
        bottomNavigationBar: Stack(
          children: [
            new Container(
              // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              height: 50.0,
              color: Colors.red[50],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: new CustomPaint(
              child:Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 2, 5, 5),
              margin: const EdgeInsets.only(top: 1),
              child:Center(
                child:Text('© 2021 Copyright ©2021 All rights reserved | This template is made with  by ZINKOMYINT',
              style: TextStyle(
              letterSpacing: 1.20,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              
                // painter: Painter(),
                // size: Size.infinite,
              ),
              ),
            ),
          ],
        ),
         //bottomNavigationBar

        //drawer
    drawer: Drawer(
    child:Container(
      color: Colors.white,
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
      height: 120,
      child:
      DrawerHeader(
        
        //profile
        child:Container(
                  child: Row(
                    children:[
                      Column(children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 50,
                        child: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                            child: Icon(Icons.people_rounded),
                      ),
                        )
                      ],),
                        
                        Column(children: [
                        Container(
                          //image_circle
                          child:Text('Welcome \n''ZIN KO MYINT',style: TextStyle(color: Colors.white,letterSpacing: 1,height: 1.25)),
                       //image_circle
                        )
                      ],)
                    ]
                  ),  
        ),
           //profile

        decoration: BoxDecoration(
        color: Colors.green
        ),
      ),
      ),

      ListTile(
        leading: const Icon(Icons.home,color: Colors.green),
        title: Text('Home' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () 
        { 
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new MyApp())
                          ); 
          },
        ),

      ListTile(
        leading: const Icon(Icons.account_balance,color: Colors.green),
        title: Text('Account' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ListRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.credit_card_outlined,color: Colors.green),
        title: Text('Card' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new CardRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.directions_bus,color: Colors.green),
        title: Text('Ticket' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new Ticketroute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.contact_phone,color: Colors.green),
        title: Text('Contact' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ContactRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.settings,color: Colors.green),
        title: Text('Setting' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new SettingRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.logout,color: Colors.green),
        title: Text('Logout' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            //code
        },
      )


    ],
  ),
    ),
),
      backgroundColor: Colors.yellow[50],
      appBar: AppBar( 
        title: Text("MM-INVESTMENT"), 
        backgroundColor: Colors.green, 
      ), 
      body:Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
              child:
              Column(
                children:[
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 350,
                    //data_table
                   child : DataTable(  
                columns: [  
                DataColumn(label: Text(  
                    'No',  
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,letterSpacing: 1)  
                )),  
                DataColumn(label: Text(  
                    'Branch',  
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,letterSpacing: 1)  
                )),  
                DataColumn(label: Text(  
                    'Phone No',  
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,letterSpacing: 0.2)  
                )),  
              ],  
              rows: [  
                DataRow(cells: [  
                  DataCell(Text('1',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                  DataCell(Text('Yangon',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                  DataCell(Text('01-55895' , style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                ]),  
                DataRow(cells: [  
                  DataCell(Text('2',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                  DataCell(Text('Mandalay',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                  DataCell(Text('01-66888' , style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))), 
                ]),  
                DataRow(cells: [  
                  DataCell(Text('3',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                  DataCell(Text('Naypyitaw',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                  DataCell(Text('01-66998' , style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.1))),
                ]),  
                DataRow(cells: [  
                  DataCell(Text('4',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                  DataCell(Text('Taunggyi',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.3))),  
                  DataCell(Text('01-55823' , style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.1))),
                ]),  
              ],  
            ),  
               //data_table
          
                      // child: Table(
                      //   border:TableBorder.all(width: 1.0,color: Colors.black12),
                      //   children:[
                      //     TableRow(children: [
                      //       Center(
                      //       child:Text("No",textScaleFactor: 1.5,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      //       ),
                      //       Center(
                      //       child:Text("Branch",textScaleFactor: 1.5,style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                      //       ),
                      //       Center(
                      //       child:Text("Phone-no",textScaleFactor: 1.5,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                      //       )
                           
                      //     ]),
                      //     TableRow(
                      //       children: [
                      //       Center(
                      //         child:Text("1",textScaleFactor: 1.5,style: TextStyle(fontSize: 10)),
                      //       ),
                      //       Center(
                      //         child:Text("Yangon",textScaleFactor: 1.5,style: TextStyle(fontSize: 10)),
                      //       ),
                      //       Center(
                      //         child:Text("09-55522",textScaleFactor: 1.5,style: TextStyle(fontSize: 10)),
                      //       ),
                      //     ],
                      //     ),

                      //     TableRow(
                      //       children: [
                      //       Center(
                      //         child:Text("2",textScaleFactor: 1.5,style: TextStyle(fontSize: 10)),
                      //       ),
                      //       Center(
                      //         child:Text("Mandalay",textScaleFactor: 1.5,style: TextStyle(fontSize: 10)),
                      //       ),
                      //       Center(
                      //         child:Text("09-55625",textScaleFactor: 1.5,style: TextStyle(fontSize: 10)),
                      //       ),
                      //     ],
                      //     ),
                      //   ],
                      // ),
                     ),
                ]
              ),
              ),
            ],
          )
        ],
      )
    ); 
  } 
} 
//Contact_route

//Account
class ListRoute extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 

         //bottomNavigationBar
        bottomNavigationBar: Stack(
          children: [
            new Container(
              // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              height: 50.0,
              color: Colors.red[50],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: new CustomPaint(
              child:Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 2, 5, 5),
              margin: const EdgeInsets.only(top: 1),
              child:Center(
                child:Text('© 2021 Copyright ©2021 All rights reserved | This template is made with  by ZINKOMYINT',
              style: TextStyle(
              letterSpacing: 1.20,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              
                // painter: Painter(),
                // size: Size.infinite,
              ),
              ),
            ),
          ],
        ),
         //bottomNavigationBar

        //drawer
    drawer: Drawer(
    child:Container(
      color: Colors.white,
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
      height: 120,
      child:
      DrawerHeader(
        
        //profile
        child:Container(
                  child: Row(
                    children:[
                      Column(children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 50,
                        child: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                            child: Icon(Icons.people_rounded),
                      ),
                        )
                      ],),
                        
                        Column(children: [
                        Container(
                          //image_circle
                          child:Text('Welcome \n''ZIN KO MYINT',style: TextStyle(color: Colors.white,letterSpacing: 1,height: 1.25)),
                       //image_circle
                        )
                      ],)
                    ]
                  ),  
        ),
           //profile

        decoration: BoxDecoration(
           color: Colors.green
        ),
      ),
      ),

     ListTile(
        leading: const Icon(Icons.home,color: Colors.green),
        title: Text('Home' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () 
        { 
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new MyApp())
                          ); 
          },
        ),

      ListTile(
        leading: const Icon(Icons.account_balance,color: Colors.green),
        title: Text('Account' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ListRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.credit_card_outlined,color: Colors.green),
        title: Text('Card' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new CardRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.directions_bus,color: Colors.green),
        title: Text('Ticket' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new Ticketroute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.contact_phone,color: Colors.green),
        title: Text('Contact' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ContactRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.settings,color: Colors.green),
        title: Text('Setting' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new SettingRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.logout,color: Colors.green),
        title: Text('Logout' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            //code
        },
      )

    ],
  ),
    ),
),


      backgroundColor: Colors.yellow[50],
      appBar: AppBar( 
        title: Text("MM-INVESTMENT"), 
        backgroundColor: Colors.green, 
      ), 
     body: Column(
      children: [
        Row(
          children:[
            Expanded(
            child:Column(
              children:[
                Container(
                  margin:const EdgeInsets.only(top: 5),
                  width:350,
                    child: Image.asset('assets/images/sa.jpg'), 
                ),
                Container(
                  margin:const EdgeInsets.only(top: 1),
                  width:350,
                  child:Card(
                    color: Colors.green[300],
                    child:Column(
                      children: [
                          const ListTile(
                          // leading: Icon(Icons.monetization_on_sharp,size: 50),
                          leading: Text('Account',style: TextStyle(letterSpacing: 1)),
                          title: Text('003-558555888' , style: TextStyle(letterSpacing: 2 ,fontWeight: FontWeight.bold,)),
                          subtitle: Text('saving account',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.5)),
                        ),
	                    ],)
                  ),
                ),

                Container(
                  margin:const EdgeInsets.only(top: 1),
                  width:350,
                  child:Card(
                    color: Colors.green[300],
                    child:Column(
                      children: [
                          const ListTile(
                          // leading: Icon(Icons.monetization_on_sharp,size: 50),
                          leading: Text('Name\n' 'Balance\n' 'Date',style: TextStyle(height: 1.2 , letterSpacing: 1)),
                          // title: Text('ジンコミント'),
                          subtitle: Text('Zin Ko Myint\n' '20,000,000 MMK\n''20/04/2021',
                          style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,  height: 1.3,
                          ),
                          ),
                        ),
	                    ],)
                  ),
                ),

                Container(
                  margin:const EdgeInsets.only(top: 1),
                  width:350,
                  child:Card(
                    color: Colors.green[300],
                    child:Column(
                      children: [
                          const ListTile(
                          leading: Icon(Icons.mail,size: 50),
                          title: Text('MM-INVESTMENT'),
                          subtitle: Text('MM-INVESTMENT@gmail.com\n' '09-885-852-528' , 
                          style: TextStyle(letterSpacing: 1,
                          height: 1.3,
                          )
                          ),
                        ),
	                    ],)
                  ),
                )
              ]
            )
            ),
          ]
        )
      ],
     ),
    ); 
  } 
}
//Account

//card
  //Account
class CardRoute extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 

        //bottomNavigationBar
        bottomNavigationBar: Stack(
          children: [
            new Container(
              // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              height: 50.0,
              color: Colors.red[50],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: new CustomPaint(
              child:Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 2, 5, 5),
              margin: const EdgeInsets.only(top: 1),
              child:Center(
                child:Text('© 2021 Copyright ©2021 All rights reserved | This template is made with  by ZINKOMYINT',
              style: TextStyle(
              letterSpacing: 1.20,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              
                // painter: Painter(),
                // size: Size.infinite,
              ),
              ),
            ),
          ],
        ),
         //bottomNavigationBar

        //drawer
    drawer: Drawer(
    child:Container(
      color: Colors.white,
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
      height: 120,
      child:
      DrawerHeader(
        
        //profile
        child:Container(
                  child: Row(
                    children:[
                      Column(children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 50,
                        child: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                            child: Icon(Icons.people_rounded),
                      ),
                        )
                      ],),
                        
                        Column(children: [
                        Container(
                          //image_circle
                          child:Text('Welcome \n''ZIN KO MYINT',style: TextStyle(color: Colors.white,letterSpacing: 1,height: 1.25)),
                       //image_circle
                        )
                      ],)
                    ]
                  ),  
        ),
           //profile

        decoration: BoxDecoration(
        color: Colors.green
        ),
      ),
      ),

     ListTile(
        leading: const Icon(Icons.home,color: Colors.green),
        title: Text('Home' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () 
        { 
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new MyApp())
                          ); 
          },
        ),

      ListTile(
        leading: const Icon(Icons.account_balance,color: Colors.green),
        title: Text('Account' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ListRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.credit_card_outlined,color: Colors.green),
        title: Text('Card' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new CardRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.directions_bus,color: Colors.green),
        title: Text('Ticket' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new Ticketroute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.contact_phone,color: Colors.green),
        title: Text('Contact' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ContactRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.settings,color: Colors.green),
        title: Text('Setting' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new SettingRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.logout,color: Colors.green),
        title: Text('Logout' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            //code
        },
      )


    ],
  ),
    ),
),

      backgroundColor: Colors.yellow[50],
      appBar: AppBar( 
        title: Text("MM-INVESTMENT"), 
        backgroundColor: Colors.green, 
      ), 
     body: SingleChildScrollView(
      child:Column(
      children: [
        Row(
          children:[
            Expanded(
            child:Column(
              children:[

                Container(
                  margin:const EdgeInsets.only(top: 5),
                  width:350,
                    child: Image.asset('assets/images/atm2.jpg'), 
                ),

                 Container(
                  margin:const EdgeInsets.only(top: 2),
                  width:350,
                  child:Card(
                    color: Colors.green[300],
                    child:Column(
                      children: [
                          const ListTile(
                          // leading: Icon(Icons.monetization_on_sharp,size: 50),
                          leading: Text('ATM Number',style: TextStyle(letterSpacing: 1)),
                          title: Text('003-155-855-588' , style: TextStyle(letterSpacing: 2 ,fontWeight: FontWeight.bold)),
                          subtitle: Text('MPU',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1)),
                        ),
	                    ],)
                  ),
                ),

                Container(
                  margin:const EdgeInsets.only(top: 2),
                  width:350,
                  child:Card(
                    color: Colors.green[300],
                    child:Column(
                      children: [
                          const ListTile(
                          // leading: Icon(Icons.monetization_on_sharp,size: 50),
                          leading: Text('Saving Account',style: TextStyle(letterSpacing: 1)),
                          title: Text('003-558555888' , style: TextStyle(letterSpacing: 2 ,fontWeight: FontWeight.bold,)),
                          // subtitle: Text('003558555888',style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
	                    ],)
                  ),
                ),

                Container(
                  margin:const EdgeInsets.only(top: 2),
                  width:350,
                  child:Card(
                    color: Colors.green[300],
                    child:Column(
                      children: [
                          const ListTile(
                          // leading: Icon(Icons.monetization_on_sharp,size: 50),
                          leading: Text('Name\n' 'Balance\n' 'Date',style: TextStyle(height: 1.2 , letterSpacing: 1)),
                          // title: Text('ジンコミント'),
                          subtitle: Text('Zin Ko Myint\n' '20,000,000 MMK\n''20/04/2021',
                          style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,  height: 1.3,
                          ),
                          ),
                        ),
	                    ],)
                  ),
                ),

                Container(
                 margin:const EdgeInsets.only(top: 2),
                  width:350,
                  child:Card(
                    color: Colors.green[300],
                    child:Column(
                      children: [
                          const ListTile(
                          leading: Icon(Icons.mail,size: 50),
                          title: Text('MM-INVESTMENT'),
                          subtitle: Text('MM-INVESTMENT@gmail.com\n' '09-885-852-528' , 
                          style: TextStyle(letterSpacing: 1,
                          height: 1.3,
                          )
                          ),
                        ),
	                    ],)
                  ),
                )
              ]
            )
            ),
          ]
        )
      ],
     ),
     ),
    ); 
  } 
}
//Account
//card

//setting
  class SettingRoute extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 

        //bottomNavigationBar
        bottomNavigationBar: Stack(
          children: [
            new Container(
              // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              height: 50.0,
              color: Colors.red[50],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: new CustomPaint(
              child:Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 2, 5, 5),
              margin: const EdgeInsets.only(top: 1),
              child:Center(
                child:Text('© 2021 Copyright ©2021 All rights reserved | This template is made with  by ZINKOMYINT',
              style: TextStyle(
              letterSpacing: 1.20,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              
                // painter: Painter(),
                // size: Size.infinite,
              ),
              ),
            ),
          ],
        ),
         //bottomNavigationBar

        //drawer
    drawer: Drawer(
    child:Container(
      color: Colors.white,
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
      height: 120,
      child:
      DrawerHeader(
        
        //profile
        child:Container(
                  child: Row(
                    children:[
                      Column(children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 50,
                        child: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                            child: Icon(Icons.people_rounded),
                      ),
                        )
                      ],),
                        
                        Column(children: [
                        Container(
                          //image_circle
                          child:Text('Welcome \n''ZIN KO MYINT',style: TextStyle(color: Colors.white,letterSpacing: 1,height: 1.25)),
                       //image_circle
                        )
                      ],)
                    ]
                  ),  
        ),
           //profile
        
        decoration: BoxDecoration(
           color: Colors.green
        ),
      ),
      ),

    ListTile(
        leading: const Icon(Icons.home,color: Colors.green),
        title: Text('Home' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () 
        { 
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new MyApp())
                          ); 
          },
        ),

      ListTile(
        leading: const Icon(Icons.account_balance,color: Colors.green),
        title: Text('Account' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ListRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.credit_card_outlined,color: Colors.green),
        title: Text('Card' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new CardRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.directions_bus,color: Colors.green),
        title: Text('Ticket' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new Ticketroute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.contact_phone,color: Colors.green),
        title: Text('Contact' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ContactRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.settings,color: Colors.green),
        title: Text('Setting' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new SettingRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.logout,color: Colors.green),
        title: Text('Logout' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            //code
        },
      )

    ],
  ),
    ),
 ),


      backgroundColor: Colors.yellow[50],
      appBar: AppBar( 
        title: Text("MM-INVESTMENT"), 
        backgroundColor: Colors.green, 
      ), 
    body: SingleChildScrollView(
    //setting_icons
    
    child:Column(
      children: [
        
          // width: 350,
          // margin: const EdgeInsets.only(top: 20),
          // decoration: BoxDecoration(border:Border.all(width: 1, color: Colors.black26)),
          Row(
            children:<Widget> [
            
            //user_setting
           
            Expanded(child:
            Column(
              children:<Widget> [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                   width: 100,
                    //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                ),
                //boxshadow
                child: Column(
                  children:[
                    Icon(Icons.people, 
                    color: Colors.green,
                    size: 70),
                    Container( 
                width: 90,
                decoration: BoxDecoration(
                border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
              
                ),
                ),
                      child:RaisedButton( 
                      child: Text('Profile', style: TextStyle(
                      color: Colors.green,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      )
                      ),
                      onPressed: ()
                      { 
                        //code
                      },
                      color:Colors.grey[200],
                            ),  
                            )
                  ]
                ),
                ),
            ],
            ),
            ),
            

            //Password_setting
            //user_setting
            Expanded(child: 
            Column(
              children:<Widget> [
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: 100,
                    //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                ),
                //boxshadow
                child: Column(
                  children:[
                    Icon(Icons.integration_instructions, 
                    color: Colors.green,
                    size: 70),
                    Container( 
                width: 90,
                decoration: BoxDecoration(
                border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
              
                ),
                ),
                      child:RaisedButton( 
                      child: Text('Account', style: TextStyle(
                      color: Colors.green,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      )
                      ),
                      onPressed: ()
                      { 
                        //code
                      },
                      color:Colors.grey[200],
                            ),  
                            )
                  ]
                ),
                ),
            ],
            ),
            ),

            //print
            Expanded(child: 
            Column(
              children:<Widget> [
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: 100,
                    //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                ),
                //boxshadow
                child: Column(
                  children:[
                    Icon(Icons.privacy_tip, 
                    color: Colors.green,
                    size: 70),
                    Container( 
                width: 90,
                decoration: BoxDecoration(
                border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
              
                ),
                ),
                      child:RaisedButton( 
                      child: Text('Privacy', style: TextStyle(
                      color: Colors.green,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      )
                      ),
                      onPressed: ()
                      { 
                        //code
                      },
                      color:Colors.grey[200],
                            ),  
                            )
                  ]
                ),
                ),
            ],
            ),
            ),

          ],
          ),

          //second_setting
          Row(
            children:<Widget> [
            
            //user_setting
           
            Expanded(child:
            Column(
              children:<Widget> [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                   width: 100,
                    //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                ),
                //boxshadow
                child: Column(
                  children:[
                    Icon(Icons.local_grocery_store_rounded, 
                    color: Colors.green,
                    size: 70),
                    Container( 
                width: 90,
                decoration: BoxDecoration(
                border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
              
                ),
                ),
                      child:RaisedButton( 
                      child: Text('Market', style: TextStyle(
                      color: Colors.green,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      )
                      ),
                      onPressed: ()
                      { 
                        //code
                      },
                      color:Colors.grey[200],
                            ),  
                            )
                  ]
                ),
                ),
            ],
            ),
            ),
            

            //Password_setting
            //user_setting
            Expanded(child: 
            Column(
              children:<Widget> [
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: 100,
                    //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                ),
                //boxshadow
                child: Column(
                  children:[
                    Icon(Icons.find_in_page, 
                    color: Colors.green,
                    size: 70),
                    Container( 
                width: 90,
                decoration: BoxDecoration(
                border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
              
                ),
                ),
                      child:RaisedButton( 
                      child: Text('Files', style: TextStyle(
                      color: Colors.green,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      )
                      ),
                      onPressed: ()
                      { 
                        //code
                      },
                      color:Colors.grey[200],
                            ),  
                            )
                  ]
                ),
                ),
            ],
            ),
            ),

            //print
            Expanded(child: 
            Column(
              children:<Widget> [
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: 100,
                    //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                ),
                //boxshadow
                child: Column(
                  children:[
                    Icon(Icons.language, 
                    color: Colors.green,
                    size: 70),
                    Container( 
                width: 90,
                decoration: BoxDecoration(
                border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
              
                ),
                ),
                      child:RaisedButton( 
                      child: Text('language', style: TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      )
                      ),
                      onPressed: ()
                      { 
                        //code
                      },
                      color:Colors.grey[200],
                            ),  
                            )
                  ]
                ),
                ),
            ],
            ),
            ),

          ],
          )
        
      ],
    ),
    ) 
    ); 
  } 
} 
//setting


//Ticket_Route
class Ticketroute extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 

        //bottomNavigationBar
        bottomNavigationBar: Stack(
          children: [
            new Container(
              // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              height: 50.0,
              color: Colors.red[50],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: new CustomPaint(
              child:Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 2, 5, 5),
              margin: const EdgeInsets.only(top: 1),
              child:Center(
                child:Text('© 2021 Copyright ©2021 All rights reserved | This template is made with  by ZINKOMYINT',
              style: TextStyle(
              letterSpacing: 1.20,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              ),
              ),
            ),
          ],
        ),
         //bottomNavigationBar

        //drawer
    drawer: Drawer(
    child:Container(
      color: Colors.white,
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
      height: 120,
      child:
      DrawerHeader(
        
        //profile
        child:Container(
                  child: Row(
                    children:[
                      Column(children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 50,
                        child: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                            child: Icon(Icons.people_rounded),
                      ),
                        )
                      ],),
                        
                        Column(children: [
                        Container(
                          //image_circle
                          child:Text('Welcome \n''ZIN KO MYINT',style: TextStyle(color: Colors.white,letterSpacing: 1,height: 1.25)),
                       //image_circle
                        )
                      ],)
                    ]
                  ),  
        ),
           //profile
        
        decoration: BoxDecoration(
           color: Colors.green
        ),
      ),
      ),

    ListTile(
        leading: const Icon(Icons.home,color: Colors.green),
        title: Text('Home' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () 
        { 
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new MyApp())
                          ); 
          },
        ),

      ListTile(
        leading: const Icon(Icons.account_balance,color: Colors.green),
        title: Text('Account' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ListRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.credit_card_outlined,color: Colors.green),
        title: Text('Card' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new CardRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.directions_bus,color: Colors.green),
        title: Text('Ticket' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new Ticketroute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.contact_phone,color: Colors.green),
        title: Text('Contact' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new ContactRoute())
                          ); 
        },
      ),

       ListTile(
        leading: const Icon(Icons.settings,color: Colors.green),
        title: Text('Setting' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
           Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                            new SettingRoute())
                          ); 
        },
      ),

      ListTile(
        leading: const Icon(Icons.logout,color: Colors.green),
        title: Text('Logout' , style:TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold)),
        onTap: () {
            //code
        },
      )

    ],
  ),
    ),
 ),


      backgroundColor: Colors.yellow[50],
      appBar: AppBar( 
        title: Text("MM-INVESTMENT"), 
        backgroundColor: Colors.green, 
      ), 
    body: SingleChildScrollView(
    
    child:Column(
      children: [
        Row(
          children: [
            Expanded(child:
            Column(
              children:[
                Container(
                   margin:const EdgeInsets.only(top: 10),
                  // width: 100,
                  child: Image.asset('assets/images/bus.jpg'), 
                )
              ]
            )
            ),
          ],
        ),
        //search_box
        Row(
          children: [
            Expanded(child:
            Column(
             children: [
              Container(
              decoration: BoxDecoration(border:Border.all(width: 1, color: Colors.black26),
              borderRadius: new BorderRadius.circular(5.0),
              color: Colors.grey[200],
              ),
              margin:const EdgeInsets.only(left: 5,top: 10),
              alignment: Alignment.bottomCenter,
              width: 350,
              height: 45,
              child: TextField(
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  hintText: 'Search Bus Ticket',
                   hintStyle: TextStyle(
                        height: 2.8,
                      ),
                ),
              ),
            ),
             ],
            ),
            ),
          ],
        ),
         //search_box

        //city
        Container(
          margin:const EdgeInsets.only(top: 10),
          width: 350,
          height: 92,
          // decoration: BoxDecoration(border:Border.all(width: 1, color: Colors.black)),
          child: Row(
            children:[
              Expanded(child: 
              Column(
                children: [
                  Container(
                    height: 80,
                    //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
                      child: Center(
                        child: PlayerPreferences(),
                     ),
                  ),
                ],
              ),
              ),
              
             Column(
                children:<Widget> [
                  Container(
                     height: 80,
                     margin:const EdgeInsets.only(left: 5,right: 5),
                     child: Center(
                       child:Icon(Icons.minimize), 
                     ),
                  ),
                ],
              ),

              Expanded(child:
              Column(
                children: [
                  Container(
                     height: 80,
                      //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
                     child: Center(
                       child: PlayerPreferences(),
                     ),
                  ),
                ],
              ),
              ),
              ]
          ),
        ),
      //city

      //arrival_Deparature
        Container(
          width: 350,
          height: 65,
          //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  //boxshadow
          child: Row(
            children: [
                Expanded(child:
                Column(
                  children: [
                    Container(
                      margin:const EdgeInsets.only(top: 23),
                      child: Center(
                        child: Text('Deparature', 
                        style: TextStyle(fontWeight: FontWeight.bold,
                        letterSpacing: 0.9,
                        fontSize: 14,
                        )
                        )
                        ),
                    )
                  ],
                ),
                ),
                
                Expanded(child:
                Column(
                  children: [
                    Container(
                      margin:const EdgeInsets.only(top: 23),
                      child: Center(
                        child: Text('July 10th , Friday',
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 14,
                        ),
                        )
                      ),
                    ),
                  ],
                ),
                ),
            ],
            ),
        ),
      //arrival_Deparature

      Container(
        width: 350,
         margin:const EdgeInsets.only(top: 15),
        child: Row(
        children: 
        [
          Column(
            children: [
              Text('Nationality'  ,style: TextStyle(letterSpacing: 0.9,fontWeight: FontWeight.bold)),
              Container(
              height: 50,
              margin:const EdgeInsets.only(top: 8),
              padding: EdgeInsets.fromLTRB(10, 10, 4, 7),
              //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            //boxshadow
              child: Center(
                child: Localstate(),  
                ),
              )
            ],
          ),

            Expanded(child:
            Column(
            children: [
              Text('Travellers' , style: TextStyle(letterSpacing: 0.9,fontWeight: FontWeight.bold)),
              Container(
              height: 50,
              margin:const EdgeInsets.only(top: 8,left: 10),
              //boxshadow
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  ),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          //boxshadow
              child: Center(
                child: Tester(),  
                  ),
                )
              ],
            ),
              ),
          ],),
        ),

        //search
          Container(
            margin:const EdgeInsets.only(top: 18),
            // width: 200,
            child:Row(
              children: [
                Expanded(
                  child:
                Column(
                  children: [
                    Container(
                      width: 250,
                      height: 42,
                      child:RaisedButton(
                      color: Colors.green,
                      onPressed: () { 
                        Navigator.pop(context); 
                      }, 
                      elevation:5.0,
                      hoverColor: Colors.red,
                      splashColor: Colors.red,
                      child: Text('Search Now',style:TextStyle(color: Colors.white,letterSpacing: 1)), 
                      ),
                      )
                  ],
                    ),
                ),
                    ],
                    ),
          
          ),
        //search

      ],
    ),
    ) 
    ); 
  } 
} 

//login
  class LoginRoute extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 

        //bottomNavigationBar
        bottomNavigationBar: Stack(
          children: [
            new Container(
              // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              height: 50.0,
              color: Colors.red[50],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: new CustomPaint(
              child:Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 2, 5, 5),
              margin: const EdgeInsets.only(top: 1),
              child:Center(
                child:Text('© 2021 Copyright ©2021 All rights reserved | This template is made with  by ZINKOMYINT',
              style: TextStyle(
              letterSpacing: 1.20,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              ),
              ),
            ),
          ],
        ),
         //bottomNavigationBar


      backgroundColor: Colors.yellow[50],
      appBar: AppBar( 
        title: Text("MM-INVESTMENT"), 
        backgroundColor: Colors.green, 
      ), 
    body: SingleChildScrollView(
    //login_setting
    child:Column(
     children: [
      //  Container(
      //  color: Colors.red, 
      // //   decoration: BoxDecoration(border:Border.all(width: 0.2, color: Colors.black26)),
      //  width: 250, 
      //  margin: const EdgeInsets.only(top: 35),
       
       Row(
         children: [
           Expanded(child:
           Container(
             width: 350,
            color:Colors.green,
          child:
           Column(
             children:[
               //login_test
               Container(
                 width: 200,
                 color: Colors.red,
                child:Center(
                child: TextField(
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.arrow_right),
                  hintText: 'User Name',
                   hintStyle: TextStyle(
                        height: 1,
                      ),
                ),
              ),
                 )
               ),

               
             ]
           )
           ),
           ),
         ],
        )
       
     ],
    ),
    ) 
    ); 
  } 
} 
//login

//dropdown_all_________________________________________________________________________
//dropdown_stateful
class PlayerPreferences extends StatefulWidget {
  final int numPlayers;
  PlayerPreferences({this.numPlayers});

  @override
  _PlayerPreferencesState createState() => _PlayerPreferencesState();
}

class _PlayerPreferencesState extends State<PlayerPreferences> {
  int dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: dropDownValue,
        onChanged: (int newVal){
          setState(() {
            dropDownValue = newVal;
          });
        },
        items: [
          DropdownMenuItem(
            value: 0,
            child: Text('Yangon' , style:TextStyle( 
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 0.9,
                       )
                       ),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('Mandalay' , style:TextStyle( 
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 0.9,
                       )
                       ),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('Naypyitaw' , style:TextStyle( 
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 0.9,
                       )
                       ),
          ),
          DropdownMenuItem(
            value: 3,
            child:Text('Sagin' , style:TextStyle( 
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 0.9,
                       )
                       ),
          ),
        ],
      ),
    );
  }
}
//dropdown_stateful

//Local_stateful
class Tester extends StatefulWidget {
  final int seat;
  Tester({this.seat});

  @override
  _Tester createState() => _Tester();
}

class _Tester extends State<Tester> {
  int dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: dropDownValue,
        onChanged: (int newVal){
          setState(() {
            dropDownValue = newVal;
          });
        },
       items: [
          DropdownMenuItem(
            value: 0,
            child: Text('1'),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('2'),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('3'),
          ),
          DropdownMenuItem(
            value: 3,
            child: Text('4'),
          ),
        ],
      ),
    );
  }
}
//Local_stateful

//Seat_stateful
class Localstate extends StatefulWidget {
  final int localseat;
  Localstate({this.localseat});

  @override
  _Localstate createState() => _Localstate();
}

class _Localstate extends State<Localstate> {
  int dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: dropDownValue,
        onChanged: (int newVal){
          setState(() {
            dropDownValue = newVal;
          });
        },
       items: [
          DropdownMenuItem(
            value: 0,
            child: Text('Local ( myanmar )'),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('china'),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('japan'),
          ),
          DropdownMenuItem(
            value: 3,
            child: Text('korea'),
          ),
        ],
      ),
    );
  }
}
//Seat_stateful

// body: Center( 
      //   child: RaisedButton( 
      //     onPressed: () { 
      //       Navigator.pop(context); 
      //     }, 
      //     child: Text('Back!'), 
      //   ), 
      // ), 

