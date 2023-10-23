import 'dart:io';
import 'package:flutter/material.dart';
import 'Fragment/call.dart';
import 'Fragment/message.dart';
import 'Fragment/search.dart';
import 'Splash_Screen.dart';

main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( initialRoute: '/timer',
      routes: {
        '/timer': (context) => TimerPage(),
        '/login': (context) => LogInPage(),
      },
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: TimerPage(),
      );
  }
}
class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50)
    );
    return Scaffold(backgroundColor: Colors.grey,
      body: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              labelText: 'UserName or Email'),
          ),),
                Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(fillColor: Color(0),
              border: OutlineInputBorder(),
              icon: Icon(Icons.password),
              labelText: 'Password'),),),
              Padding(padding: EdgeInsets.all(20),
          child: ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) =>MyHomePage(),) );
          },
          
          child: Text('Log In'),style:buttonStyle,),),
         
          Text('Dont have an account ?'),
            Padding(padding: EdgeInsets.all(20),
         child: TextButton (child: Text('Sign Up'),onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) =>SignUpPage(),) );
          },)
          ),
          ],
      
      ),
    );
  }         
}
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
 Widget build(BuildContext context) {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),);
  return Scaffold(
  backgroundColor: Colors.grey,
      body: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              labelText: 'First Name'),
          ),),
                Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(fillColor: Color(0),
              border: OutlineInputBorder(),
              icon: Icon(Icons.password),
              labelText: 'Last Name'),),),
              Padding(padding: EdgeInsets.all(20),),
               Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(fillColor: Color(0),
              border: OutlineInputBorder(),
              icon: Icon(Icons.password),
              labelText: 'Email or Phone number'),),),
              Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(fillColor: Color(0),
              border: OutlineInputBorder(),
              icon: Icon(Icons.password),
              labelText: 'Password'),),),
              Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              labelText: 'Retype Password'),),
              ),
               Padding(padding: EdgeInsets.all(20),
        child: ElevatedButton(onPressed: () {}, 
        child: Text('Send'),style: buttonStyle,),),
         ],
        ),
        );
  }
}
 class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
  bool _iconBool=false;
  IconData _iconLight = Icons.wb_sunny;
  IconData _iconDark = Icons.nights_stay;

  ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.light,
  );
  ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    brightness: Brightness.dark,
  );
class _MyHomePageState extends State<MyHomePage> {
  MySnackBar(message,context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
   MyAlertDiialog(context) {
    return MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
    );
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
      title: Text('Blood Bank +'),
      centerTitle: true,
      elevation: 2,
      backgroundColor: Colors.blueAccent,
      actions: [
        IconButton(onPressed: () {
          setState(() {
            _iconBool = !_iconBool;
          });
        }, icon: Icon(_iconBool ? _iconDark : _iconLight))
      ],
      bottom: TabBar(
        tabs: [
        Tab(icon: Icon(Icons.message),text: 'Message',),
        Tab(icon: Icon(Icons.call),text: 'Call',),
        Tab(icon: Icon(Icons.search),text: 'Search',),
        ]
      )),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      backgroundColor: Colors.black,
      onPressed: () {MyAlertDiialog(context);},
      ),
    body: TabBarView(children: [
      MyMessage(),
      MyCallPage(),
      MySearchPage(),
      ],
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
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
      BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings')
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
    )
    );
  }
}