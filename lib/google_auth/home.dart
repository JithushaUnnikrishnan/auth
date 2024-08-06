import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Homeg extends StatefulWidget {
  const Homeg({super.key});

  @override
  State<Homeg> createState() => _HomegState();
}

class _HomegState extends State<Homeg> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white54,
      body: Center(child: Container(child: Text("Home Page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.yellow.shade600),),))

    );
  }
}
