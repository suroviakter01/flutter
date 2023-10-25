import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),
    );
    return Scaffold(
      backgroundColor: Colors.grey,
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
            labelText: 'District'),),),
             Padding(padding: EdgeInsets.all(20),
        child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Phone Or Mail'),),),
             Padding(padding: EdgeInsets.all(20),
        child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Blood Group (optional)'),),),
             Padding(padding: EdgeInsets.all(20),
        child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Bio'),),),
            Padding(padding: EdgeInsets.all(20),
        child: ElevatedButton(onPressed: () {
           Navigator.of(context).pop();
        }, 
        child: Text('Add'),style: buttonStyle,),),
        ],
      ),
    );
  }
}