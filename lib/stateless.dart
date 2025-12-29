import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rakib(),
    ),
  );
}

class Rakib extends StatelessWidget {
  const Rakib({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('home'),
        centerTitle: true,
      ),

      body: const Center(child: Text('Hello World')),
    );
  }
}