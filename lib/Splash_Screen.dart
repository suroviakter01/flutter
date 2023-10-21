import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'dart:async'; // Import the dart:async library

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  double percent = 0.0;
  int timeInSeconds = 10; // Set your desired timer duration in seconds

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if (timeInSeconds < 1) {
          timer.cancel();
          // Navigate to the login page when the timer is up
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LogInPage()),
          );
        } else {
          timeInSeconds = timeInSeconds - 1;
          percent = (timeInSeconds / 10).toDouble();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3xi83KuFSyqx7m3e5OLmrfJfwwpYxQp5K1w&usqp=CAU'),
          SizedBox(height:50,),
          CircularProgressIndicator()
         ],
        ),
      ),
    );
  }
}
