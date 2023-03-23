import 'package:flutter/material.dart';
import '../../../common_widgets/drawer_widget.dart';

class Project_List_Screen extends StatefulWidget {
  @override
  State<Project_List_Screen> createState() => _Project_List_ScreenState();
}

class _Project_List_ScreenState extends State<Project_List_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Container(
            child: Text(
              'Project List',
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
