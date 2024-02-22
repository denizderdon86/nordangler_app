import 'package:flutter/material.dart';

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text(
                  'Mo Jo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text('mojo@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  foregroundColor: Colors.lightBlue,
                  backgroundImage: AssetImage('assets/images/mo.jpg'),
                ),
              ),
              ListTile(
                title: const Text(
                  'Startseite',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                title: const Text(
                  'Einstellungen',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  'Abmelden',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                onTap: () {
                  // Handle menu item tap
                },
              ),
            ],
          ),
        ),
        body: const Center(),
      ),
    );
  }
}
