import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:project_management_system/src/features/all_Project/presentation/projects_Details.dart';
import '../../../../constans.dart';
import '../../../routing/app_router.dart';
import '../../../utils/media-query.dart';

class projectDetails_Screen extends StatefulWidget {
  @override
  State<projectDetails_Screen> createState() => _projectDetails_ScreenState();
}

class _projectDetails_ScreenState extends State<projectDetails_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        shape: const CircleBorder(
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        overlayOpacity: 0.5,
        spacing: 12,
        overlayColor: Colors.black12,
        animatedIcon: AnimatedIcons.add_event,
        children: [
          SpeedDialChild(
            shape: const CircleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            labelWidget: Padding(
              padding: EdgeInsets.only(
                right: SizeVariables.getWidth(context) * 0.03,
              ),
              child: Text(
                'Edit Project',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 16,
                    ),
              ),
            ),
            child: const Icon(
              Icons.engineering_outlined,
              color: backiconColor,
            ),
            onTap: () {},
          ),
          SpeedDialChild(
            shape: const CircleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            labelWidget: Padding(
              padding: EdgeInsets.only(
                right: SizeVariables.getWidth(context) * 0.03,
              ),
              child: Text(
                'Add Member',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 16,
                    ),
              ),
            ),
            child: const Icon(
              Icons.group,
              color: backiconColor,
            ),
            onTap: () {
              Get.toNamed(RoutesClass.addmemberRoute());
            },
          ),
          SpeedDialChild(
            shape: const CircleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            labelWidget: Padding(
              padding: EdgeInsets.only(
                right: SizeVariables.getWidth(context) * 0.03,
              ),
              child: Text(
                'Add Reports',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 16,
                    ),
              ),
            ),
            child: const Icon(
              Icons.difference_outlined,
              color: backiconColor,
            ),
            onTap: () {
              Get.toNamed(RoutesClass.addreportRoute());
            },
          ),
        ],
      ),
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
                padding: const EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: backiconColor,
                              size: 18,
                            ),
                            Text(
                              'Back',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: SizeVariables.getHeight(context) * 0.005,
                          right: SizeVariables.getWidth(context) * 0.02,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Project Diagram',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 23,
                        ),
                  ),
                ],
              ),
            ),
            Projects_Detalis(),
          ],
        ),
      ),
    );
  }
}
