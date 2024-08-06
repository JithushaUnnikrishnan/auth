
import 'package:auth/loginvalidationoriginal%20email/signup.dart';
import 'package:flutter/material.dart';

import 'home_lof.dart';

class Login_auth extends StatefulWidget {
  const Login_auth({super.key});

  @override
  State<Login_auth> createState() => _Login_authState();
}

class _Login_authState extends State<Login_auth> {
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
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow.shade700,
                          fontSize: 28),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Your Email"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Password"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {}, child: Text("Forgot Password?",style: TextStyle(
                          color: Colors.black,)))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginhome()));},
                      child: Text(
                        "Login",
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
                    TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupauth()));},
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ))
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
