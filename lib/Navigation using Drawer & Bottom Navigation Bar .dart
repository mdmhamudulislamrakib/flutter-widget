import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerAndBottomNavigationBar(),
    ),
  );
}

class DrawerAndBottomNavigationBar extends StatelessWidget {
  const DrawerAndBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 50),
            FlutterLogo(size: 100),
            SizedBox(height: 20),

            ListTile(
              title:  Text('Home'),
              leading: Icon(Icons.home,)
            ),

            ListTile(
              title:  Text('Profile'),
              leading: Icon(Icons.person),
            ),

            ListTile(
              title:  Text('Setting'),
              leading: Icon(Icons.settings),
            )

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],)






    );
  }
}

