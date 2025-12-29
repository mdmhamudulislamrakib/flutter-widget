
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ),
  );
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Navigation Drawer'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all (15),
          children: [
            FlutterLogo(size: 100),
            const SizedBox(height: 20),
            Text('App title', textAlign:TextAlign.center, style: TextStyle(fontSize: 24),),
            const SizedBox(height: 20),

            ListTile(
              onTap: () {
                print('Home tapped');
              },
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),

            ListTile(
              onTap: () {
                print('Setting tapped');
              },
              title: Text('Setting'),
              leading: Icon(Icons.settings),
            ),

            ListTile(
              onTap: () {
                print('About tapped');
              },
              title: Text('About'),
              leading: Icon(Icons.info),
            ),

            ListTile(
              onTap: () {
                print('Help tapped');
              },
              title: Text('Help'),
              leading: Icon(Icons.help),
            ),

            ListTile(
              onTap: () {
                print('logout tapped');
              },
              title: Text('logout'),
              leading: Icon(Icons.logout),
            ),

            
          ],
        ),
      ),
      );
  }
}