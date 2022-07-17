import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final int first = 1;
  final double value = 2;
  final String name = "Nikhil";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Nikhil's app"),
      ),
      body: Center(
          child: Container(
            child: Text("Hello Welcome To the $first $value app made by $name"),
          ),
        ),
      drawer: Drawer(),
    );
  }

}