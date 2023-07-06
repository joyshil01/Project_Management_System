import 'package:flutter/material.dart';
import '../../../features/signup/presentation/textfieldSignup.dart';
import '../../../../constans.dart';

class Signup_Screen extends StatefulWidget {
  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            TextFieldSignup(),
          ],
        ),
      ),
    );
  }
}
