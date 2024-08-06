import 'package:flutter/material.dart';

class Loginhome extends StatefulWidget {
  const Loginhome({super.key});

  @override
  State<Loginhome> createState() => _LoginhomeState();
}

class _LoginhomeState extends State<Loginhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white54,
        body: Center(
            child: Container(
          child: Text(
            "Home Page",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.yellow.shade600),
          ),
        )));
  }
}
