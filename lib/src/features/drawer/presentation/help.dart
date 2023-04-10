import 'dart:math';
import 'package:flutter/material.dart';
import '../../../../constans.dart';
import '../../../common_widgets/drawer_widget.dart';
import '../../../utils/media-query.dart';

class Help_Screen extends StatefulWidget {
  @override
  State<Help_Screen> createState() => _Help_ScreenState();
}

class _Help_ScreenState extends State<Help_Screen> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xfff0D0336),
                Color(0xfff0D0336),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ),
          const SafeArea(
            child: drawer_widget(),
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: value,
            ),
            duration: Duration(milliseconds: 500),
            builder: (context, double val, child) {
              return (Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                child: Scaffold(
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
                      children: [
                        SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        value == 0 ? value = 1 : value = 0;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        left: SizeVariables.getWidth(context) *
                                            0.01,
                                      ),
                                      child: Image.asset(
                                        'assets/drawer/menu 1.png',
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        top: SizeVariables.getHeight(context) *
                                            0.005,
                                        right: SizeVariables.getWidth(context) *
                                            0.02,
                                      ),
                                      child: Image.asset(
                                        'assets/drawer/bell.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
            },
          ),
        ],
      ),
    );
  }
}
