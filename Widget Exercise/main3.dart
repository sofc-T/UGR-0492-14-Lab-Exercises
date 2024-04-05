
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
            
            title: Row(
              children: [
                Icon(Icons.arrow_back_ios_new_rounded,color: Colors.blue,),
                Container(
                width: 160.0, 
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
              ),
              
                Row(children: [
                  Icon(Icons.card_travel,color: Colors.blue,),
                  Icon(Icons.notifications_active_rounded,color: Colors.blue,),
                ],mainAxisAlignment:MainAxisAlignment.end,)
              ], mainAxisAlignment:MainAxisAlignment.spaceEvenly
              )
          ),
          body: Column(children: [
            Image.asset('panda.jpeg',width: 240,),
          Row(children: [
            Text('\$8.6'),
            Icon(Icons.heart_broken_rounded)
          ],),
          Text('Bard smart ligh bulb Lamp Bohlam LED Wifi'),
          Text('RGBWWWWW    12W Home IoT'),
          Row(children: [
            Icon(Icons.star),
            Text('540 Sale'),
            Row(children: [
              Icon(Icons.pin_end_outlined),
              Text('Brooklyn'),
            ],)
          ],),
          Text('Variant'),
          Text('Size'),
          // Size
          // Color

          Row(children: [
            Icon(Icons.book),
            // Button Bar
            ButtonBar()
          ],)
          

          ],
          ),
        )
    );
    
  }
}

