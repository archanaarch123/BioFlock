import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Column(
                   children: [


                    Container(
                      height: 150, // Set height
                      width: 375, // Take full width
                      decoration: BoxDecoration(
                        color: Color.fromARGB(193, 152, 155, 238),
                         borderRadius: BorderRadius.circular(10),
                      ),
                     ),

                    SizedBox(
                      height: 25,
                    ),


                     Container(
                      height: 150, // Set height
                      width: 375, // Take full width
                      decoration: BoxDecoration(
                        color: Color.fromARGB(193, 215, 244, 210),
                         borderRadius: BorderRadius.circular(10),
                      ),
                     ),
                    SizedBox(
                      height: 25,
                    ),
                     Container(
                      height: 300, // Set height
                      width: 375, // Take full width
                      decoration: BoxDecoration(
                        color: Color.fromARGB(193, 0, 0, 0),
                         borderRadius: BorderRadius.circular(10),
                      ),
                     ),
                   ],
                 )
              ],
        ),
      ),
    );
  }
}