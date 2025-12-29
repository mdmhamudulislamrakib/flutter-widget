import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rakib(),
    ),
  );
}


class Rakib extends StatefulWidget {
  const Rakib({super.key});

  @override
  State<Rakib> createState() => _RakibState();
}


class _RakibState extends State<Rakib> {
  String title = "home";

  void changeTitle() {
    setState(() {
      title = "Flutter Developer";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            changeTitle();
            
          },
          child: Text('Press Me'),
        ),
      ),
    );
  }
}