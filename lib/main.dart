import 'package:flutter/material.dart';
import 'Homepage/homepage.dart';
import 'Login/login.dart';
import 'Login/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BioFlock',
      theme: ThemeData(
        primaryColor: Color(0xFF123456), 
        fontFamily: 'YourCustomFont', 
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
      ),
      home: HomePage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}