import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Center(
        child: Hero(
          tag: 'imageHero',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0), // Ensure consistent design
            child: Image.network(
              'https://picsum.photos/200',
              width: 300,
              height: 300,
            ),
          ),
        ),
      ),
    );
  }
}

