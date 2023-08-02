import 'package:flutter/material.dart';

import 'data.dart';
import 'dart:async';


void main() {
 runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
 const DocumentApp({super.key});

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(useMaterial3: true),
     home: DocumentScreen(
       document: Document(),
     ),
   );
 }
}

class DocumentScreen extends StatelessWidget {
 final Document document;

DocumentScreen({
   required this.document,
   Key? key,
 }) : super(key: key);

 var intValue = Random().nextInt(10);
 intValue = Random().nextInt(100) + 50;

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Title goes here'),
     ),
     body: Column(
       children: [
         Center(
           child: intValue('Body goes here'),
         ),
       ],
     ),
   );
 } 
}

utama() {
  runZoned(() {
    // Ends up printing: "Intercepted: in zone".
    print("in zone");
  }, zoneSpecification: new ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
    parent.print(zone, "Intercepted: $line");
  }));
} 