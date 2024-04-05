

// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar( 
            backgroundColor: Colors.blue,
            title: const Row(
              children: [
                Icon(Icons.question_mark_rounded,color: Colors.white,),
                Text("iJTracker"),
                Row(children: [
                  Icon(Icons.notifications_active_rounded,color: Colors.white,),
                  Icon(Icons.settings,color: Colors.white,),
                ],mainAxisAlignment:MainAxisAlignment.end,)
              ], mainAxisAlignment:MainAxisAlignment.spaceEvenly
              )
          ),
          body: Column(
            children: [ Row(
            children: [

              Image.asset('panda.jpeg',width: 64,height:64,),
              Row(children: [

                Column(children: [
                  Text('Robert Steven'),
                  Row(children: [
                    Icon(Icons.car_crash_rounded,color: Colors.blue,),
                    Text('B 2455 UJD| 701u8847983'),
                  ],mainAxisAlignment:MainAxisAlignment.center)
                ],),
              Text('Log Out'),], mainAxisAlignment: MainAxisAlignment.spaceBetween,
              )
              // 
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ), 

          Container(
            color: Colors.blue, // <-- Red color provided to below Row
          child: Text('Online| Battery:90%'), 
             ),
          Column(
            children: [
              Row(
                children: [
                  Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                ], mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
              Row(
                children: [
                  Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                ], mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),Row(
                children: [
                  Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                ], mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),Row(
                children: [
                  Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                Container(decoration: BoxDecoration( border: Border. all( width: 5, color: Colors.grey)), child:Column(children:[
                Icon(Icons.map,color: Colors.blue,), Text("Map")]), padding:EdgeInsets.all(54), ),
                ], mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
              
            ],
          ),
          ],
          )
        )
    );
    
  }
}
