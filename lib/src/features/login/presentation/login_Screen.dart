import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constans.dart';
import '../../../routing/app_router.dart';
import '../../dashboard/presentation/home_screen.dart';
import 'textfield_Widget.dart';

class Login_Screen extends StatefulWidget {
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // return Login();
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return Login();
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('invalid Email'),
            );
          } else {
            return Homepage_Screen();
          }
        },
      ),
    );
  }

  Container Login() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Firstgradient,
            Secondgradient,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          FutureBuilder(
            future: _initializeFirebase(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return TextFieldLogin();
              } else {
                return Flushbar(
                  backgroundColor: Firstgradient,
                  duration: const Duration(seconds: 4),
                  flushbarPosition: FlushbarPosition.BOTTOM,
                  borderRadius: BorderRadius.circular(10),
                  icon: const Icon(Icons.done, color: Colors.white),
                  leftBarIndicatorColor: Colors.green,
                  // margin: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                  // title: 'Email',
                  message: 'Login Successfully',
                  barBlur: 20,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
