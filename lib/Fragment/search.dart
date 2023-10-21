import 'package:flutter/material.dart';

class MySearchPage extends StatelessWidget {
  const MySearchPage({super.key});

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
            labelText: 'District'),
        ),),
        Padding(padding: EdgeInsets.all(20),
        child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Blood Group'),),),
            Padding(padding: EdgeInsets.all(20),
        child: ElevatedButton(onPressed: () {}, child: Text('Submit'),style: buttonStyle,),),
        ],
      ),
      );
    
  }
}