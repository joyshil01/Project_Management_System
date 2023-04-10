import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management_system/src/features/all_Project/presentation/projects_Details.dart';
import '../../../../constans.dart';
import '../../../utils/media-query.dart';

class projectDetails_Screen extends StatefulWidget {
  @override
  State<projectDetails_Screen> createState() => _projectDetails_ScreenState();
}

class _projectDetails_ScreenState extends State<projectDetails_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // child: Icon(
        //   icons
        // ),
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
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getWidth(context) * 0.01,
                          ),
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
                        child: Container(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Project Diagram',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).hintColor,
                              fontSize: 23,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Projects_Detalis(),
          ],
        ),
      ),
    );
  }
}
