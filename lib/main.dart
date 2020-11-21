import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(Ajeenkya());
}

class Ajeenkya extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Attendance app',
      home: AttendanceApp(),
    );
  }
}

class AttendanceApp extends StatefulWidget {
  @override
  _AttendanceAppState createState() => _AttendanceAppState();
}

class _AttendanceAppState extends State<AttendanceApp> {
  String numberResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('College Attendance'),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () async {
                String newValue = await Api.getSomething();

                setState(() {
                  numberResult = newValue;
                });
              }),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Student',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '274',
                      style:
                          TextStyle(fontSize: 60, color: Colors.blue.shade900),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Teachers',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '50',
                      style:
                          TextStyle(fontSize: 60, color: Colors.blue.shade900),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 40,
          ),
          Text(
            numberResult ?? '{No data available}',
            style: TextStyle(fontSize: 30, color: Colors.blue.shade900),
          )
        ],
      ),
    );
  }
}

class Api {
  static Future<String> getSomething() async {
    print('calling api');
    http.Response result = await http.get('http://numbersapi.com/42');
    return result.body;
  }
}
