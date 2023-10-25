
import 'package:flutter/material.dart';
import 'Fragment/call.dart';
import 'Fragment/message.dart';
import 'Fragment/search.dart';
import 'LogInPage.dart';
import 'ProfilePage.dart';
import 'Splash_Screen.dart';
import 'add.dart';

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
 class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
  bool _iconBool=true;
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
    return showDialog(context: context,
     builder:(BuildContext context) {
      return Expanded(child: AlertDialog(
        title: Text('Alert !'),
        content: Text('Do you want to add a new foundation?'),
        actions: [
          TextButton(onPressed: () {
           Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const AddScreen()),));
          },
          child: Text('Yes'),
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
              Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: ((context) => ProfilePage ()),));
            },),
          ListTile(
            title: Text('Contacts'),
            leading: Icon(Icons.call),
            onTap: () {
            },),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
           },),
          ListTile(
            title: Text('locations'),
            leading: Icon(Icons.location_city),
            onTap: () {
            },),
          ListTile(
            title: Text('Foundations'),
            leading: Icon(Icons.home),
            onTap: () {
            },
            )],
      ),
    ),
    bottomNavigationBar: Container(
      child: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
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
        if(Index==1) {
         Navigator.pushReplacement(context, 
         MaterialPageRoute(builder: ((context) => ProfilePage ()),));
        }
        if(Index==2) {
          MySnackBar('Change settings',context); 
        }
       },
    ),
    ),
    )
    );
  }
}