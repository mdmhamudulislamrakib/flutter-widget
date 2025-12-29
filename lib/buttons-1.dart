import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20,),],
        title: Text('home'),
        backgroundColor: Colors.green,
      ),


      body: ElevatedButton.icon(
        onPressed: () {
          print('button pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.yellowAccent,
          iconColor:Colors.green
        ),
          icon: Icon(Icons.home),
          label: Text('My Button'),
      ),
    );
  }
}