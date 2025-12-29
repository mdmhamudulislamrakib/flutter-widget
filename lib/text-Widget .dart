import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Text('hello worlld mkmmnm,.mkn m , m m m m m ,',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        color: Colors.red,
        wordSpacing: 10,
        backgroundColor: Colors.yellow,
       ),   
     ),
    );
  }
}