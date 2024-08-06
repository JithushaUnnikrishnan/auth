import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    Future<void> _signInWithGoogle() async {
      try {
        final GoogleSignInAccount? googleSignInAccount =
            await _googleSignIn.signIn();
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount!.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        if (userCredential.user != null) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          String userId = userCredential.user!.uid;
          prefs.setString('userId', userId);

          String name = userCredential.user!.displayName ?? "";
          String email = userCredential.user!.email ?? "";
          String imageUrl = userCredential.user!.photoURL ?? "";

          await FirebaseFirestore.instance
              .collection('Googleuser')
              .doc(userId)
              .set({
            'name': name,
            'email': email,
            'imageUrl': imageUrl,
            'userId': userId,
            'phonenumber': null,
            'pincode': null,
            'address': null,
          });

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Homeg(),
            ),
          );
        }
      } catch (error) {
        print("Google sign-in error: $error");
      }
    }

    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipOval(
              child: Image(
                image: AssetImage(
                  "lib/assets/google-Logo-42.png",
                ),
                height: 120,
                width: 120,
                fit: BoxFit.fill,
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                _signInWithGoogle();
              },
              icon: Icon(
                Icons.arrow_right_alt_sharp,
                color: Colors.white,
                size: 50,
              ))
        ],
      ),
    );
  }
}
