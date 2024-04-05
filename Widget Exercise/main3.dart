
// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
  title: Row(
    children: [
      Icon(Icons.arrow_back_ios_new_rounded,),
      Expanded(
        child:Container(
        height: 48,
        color:const Color.fromARGB(255, 211, 201, 201),
        child: Container(
          padding: EdgeInsets.all(4.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          ),
        ),)
      ),
      
      Padding(padding:EdgeInsets.all(4),child:Icon(Icons.
      card_travel, ),),
      Padding(padding:EdgeInsets.all(4),child:Icon(Icons.notifications_active_rounded,),)
      
    ],
  ),
)
,
          body: Column(children: [
            Image.asset('panda.jpeg',width: double.infinity,height: 400,fit: BoxFit.cover,),
          Row(children: [
            Padding( padding: EdgeInsets.all(16),child:Text('\$8.6', style: TextStyle(fontSize:24, fontWeight: FontWeight.bold),)),
            Padding( padding: EdgeInsets.all(16),child:Icon(Icons.heart_broken_rounded)),
            
          ],mainAxisAlignment:  MainAxisAlignment.spaceBetween,),
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: EdgeInsets.only(left:16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text('Bard smart ligh bulb Lamp Bohlam LED Wifi',style: TextStyle(fontWeight:FontWeight.bold, fontSize: 16),textAlign: TextAlign.left),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left:16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text('RGBWWWWW    12W Home IoT',style: TextStyle(fontWeight:FontWeight.bold, fontSize: 16), textAlign: TextAlign.start),
      ),
    ),
    
  ],
),
          Row(children: [
            Padding(padding:EdgeInsets.all(8),child:Row(children: [
              Icon(Icons.star),
              Text('5.0(354)'),
            ],)),
            Padding(padding:EdgeInsets.all(8),child:Text('540 Sale')),
            Padding(padding:EdgeInsets.all(8),child:Row(children: [
              Icon(Icons.map_sharp),
              Text('Brooklyn'),
            ],)),
            
          ],),
          Padding(padding:EdgeInsets.only(bottom:16),child:Container(
            color: Color.fromARGB(255, 240, 239, 239),
            width: MediaQuery.of(context).size.width,
            height: 20,
            
          )),
          Text('Variant',),
          Text('Size'),

          Row(children: [
            Icon(Icons.book),
            
            ButtonBar()
          ],)
          

          ],
          ),
        )
    );
    
  }
}



