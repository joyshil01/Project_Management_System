import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import '../../../common_widgets/drawer_widget.dart';
import '../../../routing/app_router.dart';
import '../../project_permission/presentation/pro_permission.dart';

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
          const SafeArea(
            child: drawer_widget()
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
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  appBar: AppBar(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    title: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              value == 0 ? value = 1 : value = 0;
                            });
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: Text(
                            'Project Permissions',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Theme.of(context).buttonColor,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  body: ProjectPermission_Screen(),
                ),
              ));
            },
          ),
          
        ],
      ),
    );
  }
}
