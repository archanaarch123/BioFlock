import 'package:bioflock/navigationbar.dart';
import 'package:flutter/material.dart';
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
      home: NavigationMenu(), // Set NavigationMenu as the home widget
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}