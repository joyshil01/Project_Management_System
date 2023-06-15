// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../../../../constans.dart';
import 'textfield_Widget.dart';

class Login_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _log = Scaffold(
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
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            TextFieldLogin(),
            // FutureBuilder(
            //   future: _initializeFirebase(),
            //   builder: (context, snapshot) {
            //     if (snapshot.connectionState == ConnectionState.done) {
            //       return TextFieldLogin();
            //     } else {
            //       return Flushbar(
            //         backgroundColor: Firstgradient,
            //         duration: const Duration(seconds: 4),
            //         flushbarPosition: FlushbarPosition.BOTTOM,
            //         borderRadius: BorderRadius.circular(10),
            //         icon: const Icon(Icons.done, color: Colors.white),
            //         leftBarIndicatorColor: Colors.green,
            //         // margin: const EdgeInsets.fromLTRB(100, 10, 100, 0),
            //         // title: 'Email',
            //         message: 'Login Successfully',
            //         barBlur: 20,
            //       );
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );

    return LayoutBuilder(builder: (ctx, constraints) {
      final width = constraints.maxHeight;
      print(constraints);
      Widget child;
      if (width < 600) {
        child = _log;
      } else {
        child = _log;
      }
      return child;
    });
  }
}
