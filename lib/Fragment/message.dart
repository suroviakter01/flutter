import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Padding(padding: EdgeInsets.all(20),
        child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Foundation Name'),
        ),),
        Padding(padding: EdgeInsets.all(20),
        child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Write message'),),),
            Padding(padding: EdgeInsets.all(20),
        child: ElevatedButton(onPressed: () {}, 
        child: Text('Send'),style: buttonStyle,),),
        ],
      ),
      );
    
  }
}