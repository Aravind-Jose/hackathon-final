import 'package:flutter/material.dart';

class PerformanceHomePage extends StatefulWidget {
  @override
  _PerformanceHomePageState createState() => _PerformanceHomePageState();
}

class _PerformanceHomePageState extends State<PerformanceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Not Completed",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
