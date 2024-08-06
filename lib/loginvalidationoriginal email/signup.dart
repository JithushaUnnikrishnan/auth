import 'package:flutter/material.dart';

class Signupauth extends StatefulWidget {
  const Signupauth({super.key});

  @override
  State<Signupauth> createState() => _SignupauthState();
}

class _SignupauthState extends State<Signupauth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white54,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Signup",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow.shade700,
                          fontSize: 28),
                    ),
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter Your Name"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter Your Phone"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter your Email"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Enter your Password"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Submit",
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 80, vertical: 16),
                        backgroundColor: Colors.yellow.shade200,foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ), // Button color
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
