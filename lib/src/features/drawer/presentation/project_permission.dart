import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import '../../../../constans.dart';
import '../../../common_widgets/drawer_widget.dart';
import '../../project_permission/presentation/projectPermission_screen.dart';

class Project_Permission_Screen extends StatefulWidget {
  @override
  State<Project_Permission_Screen> createState() =>
      _Project_Permission_ScreenState();
}

class _Project_Permission_ScreenState extends State<Project_Permission_Screen> {
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
          const SafeArea(child: drawer_widget()),
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
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Project Permission',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 24,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: SizeVariables.getHeight(context) * 0.05,
                            decoration: BoxDecoration(
                              color: Color(0xfff000000).withAlpha(24),
                              border: Border.all(
                                color: Color.fromARGB(255, 94, 94, 94),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Name',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Theme.of(context).hintColor,
                                          ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Permissions',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Theme.of(context).hintColor,
                                          ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    child: Text(
                                      'Action',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Theme.of(context).hintColor,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ProjectPermission_Screen(),
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
