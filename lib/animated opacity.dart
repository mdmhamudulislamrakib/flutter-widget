import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedOpacityExample(),
    ),
  );
}

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});
  @override
  _AnimatedOpacityExampleState createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool _visible = true;

  void _toggleVisibility() {
    setState(() {
      _visible = !_visible;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: Container(width: 200, height: 200, color: Colors.green),
            ),
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: Text(_visible ? 'Hide' : 'Show'),
            ),
          ],
        ),
      ),
    );
  }
}
