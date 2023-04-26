import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundStyle extends StatelessWidget {
  final Widget child;
  final double? width;

  BackgroundStyle({
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xfffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          bottom: BorderSide(width: 0.06),
          top: BorderSide(width: 0.06),
          right: BorderSide(width: 0.06),
          left: BorderSide(width: 0.06),
        ),
        boxShadow: const [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            color: Color.fromARGB(255, 241, 240, 240),
            offset: Offset(
              2.0,
              2.0,
            ),
            blurRadius: 2.0,
            spreadRadius: 5.10,
          ),
        ],
      ),
      child: child,
    );
  }
}

class ContainerCard extends StatelessWidget {
  final Widget child;
  final double? width;
  ContainerCard({
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xfffF5F5F5),
        border: const Border(
          bottom: BorderSide(width: 0.06),
          top: BorderSide(width: 0.06),
          right: BorderSide(width: 0.06),
          left: BorderSide(width: 0.06),
        ),
        boxShadow: const [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            color: Color(0xfffCBCBCB),
            offset: Offset(
              2.0,
              2.0,
            ),
            blurRadius: 2.0,
            spreadRadius: 1.1,
          ),
        ],
      ),
      child: child,
    );
  }
}

class ContainerNewStyle extends StatelessWidget {
  final Widget child;
  final double? width;
  ContainerNewStyle({
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xfff000000).withAlpha(20),
        border: const Border(
          bottom: BorderSide(width: 0.06),
          top: BorderSide(width: 0.06),
          right: BorderSide(width: 0.06),
          left: BorderSide(width: 0.06),
        ),
        // boxShadow: const [
        //   BoxShadow(
        //     blurStyle: BlurStyle.inner,
        //     color: Color(0xfffCBCBCB),
        //     offset: Offset(
        //       2.0,
        //       2.0,
        //     ),
        //     blurRadius: 2.0,
        //     spreadRadius: 1.1,
        //   ),
        // ],
      ),
      child: child,
    );
  }
}

class TabviewCard extends StatelessWidget {
  final Widget child;
  final double? width;
  TabviewCard({
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xfff000000).withAlpha(30),
        border: const Border(
          bottom: BorderSide(width: 0.06),
          top: BorderSide(width: 0.06),
          right: BorderSide(width: 0.06),
          left: BorderSide(width: 0.06),
        ),
        // boxShadow: const [
        //   BoxShadow(
        //     blurStyle: BlurStyle.inner,
        //     color: Color(0xfffCBCBCB),
        //     offset: Offset(
        //       2.0,
        //       2.0,
        //     ),
        //     blurRadius: 2.0,
        //     spreadRadius: 1.1,
        //   ),
        // ],
      ),
      child: child,
    );
  }
}

class VelocityCard extends StatelessWidget {
  final Widget child;
  final double? width;
  VelocityCard({
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xfff000000).withAlpha(30),
        border: const Border(
          bottom: BorderSide(width: 0.06),
          top: BorderSide(width: 0.06),
          right: BorderSide(width: 0.06),
          left: BorderSide(width: 0.06),
        ),
        // boxShadow: const [
        //   BoxShadow(
        //     blurStyle: BlurStyle.inner,
        //     color: Color(0xfffCBCBCB),
        //     offset: Offset(
        //       2.0,
        //       2.0,
        //     ),
        //     blurRadius: 2.0,
        //     spreadRadius: 1.1,
        //   ),
        // ],
      ),
      child: child,
    );
  }
}
