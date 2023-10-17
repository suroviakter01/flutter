import 'dart:io';

import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  MySnackBar(message,context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
   MyAlertDiialog(context) {
    return showDialog(context: context,
     builder:(BuildContext context) {
      return Expanded(child: AlertDialog(
        title: Text('Alert !'),
        content: Text('Do you want to add a new foundation?'),
        actions: [
          TextButton(onPressed: () {
            MySnackBar('Added Successfully',context);
          },child: Text('Yes'),
          ),
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          },child: Text('No'),
          )
        ],
        ));}
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blood Bank +'),
      centerTitle: true,
      elevation: 5,
      backgroundColor: Colors.red,
      actions: [ IconButton(onPressed: () {MySnackBar('You have no calls', context);},
       icon: Icon(Icons.call)),
      SizedBox(width: 10),
       IconButton(onPressed: () {MySnackBar('You have no messages', context);},
       icon: Icon(Icons.message)),
      SizedBox(width: 10),
      
      ],
      
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      backgroundColor: Colors.black,
      onPressed: () {MyAlertDiialog(context);},
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(color: Colors.blueAccent),)
            ],
    ),
    
   bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
      BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),

    ],
    onTap: (int Index) {
      if(Index==0) {
        MySnackBar('WELCOME',context); 
      }
      if(Index==0) {
        MySnackBar('This is Surovi',context); 
      }
      if(Index==0) {
        MySnackBar('Change settings',context); 
      }
      
    },
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3xi83KuFSyqx7m3e5OLmrfJfwwpYxQp5K1w&usqp=CAU'),
             ) ,
            accountName: Text('Blood Bank +'),
            accountEmail: Text('bloodbank@gmail.com'), ),
          ),
          ListTile(
            title: Text('Profiles'),
            leading: Icon(Icons.person),
            onTap: () {
            MySnackBar('Blood Bank',context);
            },),
          ListTile(
            title: Text('Contacts'),
            leading: Icon(Icons.call),
            onTap: () {
            MySnackBar('013566554',context);},),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
            MySnackBar('Change the settings',context);},),
          ListTile(
            title: Text('locations'),
            leading: Icon(Icons.location_city),
            onTap: () {
            MySnackBar('Dhaka',context);},),
          ListTile(
            title: Text('Foundations'),
            leading: Icon(Icons.home),
            onTap: () {
            MySnackBar('Chandrabindu blood bank foundations',context);
            },
            ),
        ],
      ),
    ),
    );
  }
}