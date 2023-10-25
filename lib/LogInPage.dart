import 'package:flutter/material.dart';

import 'SignUpPage.dart';
import 'main.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50)
    );
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              labelText: 'Username or Email'),
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