import 'package:flutter/material.dart';
import '../../../../constans.dart';
import '../../../common_widgets/drawerMain/widget/drawerMenu_widget.dart';
import '../../../utils/media-query.dart';
import '../../todo_List/presentation/todoList_Screen.dart';

// ignore: camel_case_types
class Todo_List_Screen extends StatelessWidget {
  final VoidCallback openDrawer;
  const Todo_List_Screen({
    required this.openDrawer,
    super.key,
  });

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
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DrawerMenuWidget(
                      onClicked: openDrawer,
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
            TodoList_Screen(),
          ],
        ),
      ),
    );
  }
}
