import 'package:flutter/material.dart';
import 'placelist.dart';

void main() {
  return runApp(
    MaterialApp(
      title: "HW_1",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Monuments"),
          backgroundColor: Colors.amberAccent,
        ),
        body: PlacesList(),
        backgroundColor: Colors.amberAccent,
      ),
    ),
    
  );
}

