import 'package:flutter/material.dart';

import 'otpfeild.dart';

class Phonefeild extends StatefulWidget {
  const Phonefeild({super.key});

  @override
  State<Phonefeild> createState() => _PhonefeildState();
}

class _PhonefeildState extends State<Phonefeild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white54,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Enter your Phone number"),)
           ,
              SizedBox(height: MediaQuery.of(context).size.height*.09,),
              ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp()));
              },
              child: Text("Next"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16), backgroundColor: Colors.yellow.shade600,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ), // Button color
              ),
            ), ],),
        ),
      ),
    );
  }
}
