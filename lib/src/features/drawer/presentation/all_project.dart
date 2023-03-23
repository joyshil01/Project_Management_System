import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/drawer_widget.dart';
import '../../../routing/app_router.dart';

class All_Project_Screen extends StatefulWidget {
  @override
  State<All_Project_Screen> createState() => _All_Project_ScreenState();
}

class _All_Project_ScreenState extends State<All_Project_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Container(
            child: Text(
              'All project',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                  ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Theme.of(context).buttonColor,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: drawer_widget(),
      ),
    );
  }
}
