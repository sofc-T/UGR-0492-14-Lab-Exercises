


// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            backgroundColor: Colors.blue,
            title: const Row(
              children: [
                Icon(Icons.question_mark_rounded,color: Colors.white,),
                Text("iJTracker"),
                
                  Row(children: [
                  Padding( 
                  padding:EdgeInsets.all(12),
                  child:Icon(Icons.notifications_active_rounded,color: Colors.white,),),
                  Padding( 
                  padding:EdgeInsets.all(12),
                  child:Icon(Icons.settings,color: Colors.white,),),
                ],mainAxisAlignment:MainAxisAlignment.end,)
              ], mainAxisAlignment:MainAxisAlignment.spaceBetween
              )
          ),
          body: Column(
            children: [ Row(children: [Row( children:[
              Padding(
                padding:EdgeInsets.all(20),
                child:ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child:Image.asset('panda.jpeg',
                fit:BoxFit.cover,
                width:100,
                height:100,),
              )), 
              Column(children: [
                  Text('Robert Steven'),
                  Row(
                    children:[
                      Icon(Icons.car_crash_rounded),
                      Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.blue,),
                          borderRadius: BorderRadius.circular(4),
                         ),
                        child:Text('B 12124| fadsd78asd'),
                      )
                    ]
                  )
                ],),
              
                 
              
              ],mainAxisAlignment: MainAxisAlignment.start,) ,Padding(padding:EdgeInsets.all(20),child:Text("LOg Out")),],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),

          
          Padding(padding:EdgeInsets.only(bottom:16),child:Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            height: 20,
            child: Center(child:Text('Online| Battery:90%')), 
          )),
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

