import 'package:flutter/material.dart';

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