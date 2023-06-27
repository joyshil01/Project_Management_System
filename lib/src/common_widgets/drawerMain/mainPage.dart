import 'package:flutter/material.dart';
import '../../features/dashboard/presentation/home_screen.dart';
import '../../features/drawer/presentation/all_project.dart';
import '../../features/drawer/presentation/help.dart';
import '../../features/drawer/presentation/project_list.dart';
import '../../features/drawer/presentation/project_permission.dart';
import '../../features/drawer/presentation/todo_list.dart';
import 'data/drawerItem.dart';
import 'data/drawer_items.dart';
import 'widget/drawerWidget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDraweropen = false;
  DrawerItem item = DrawerItems.home;
  bool isDagging = false;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1.0;
        isDraweropen = false;
      });

  void openDrawer() => setState(() {
        xOffset = 180;
        yOffset = 150;
        scaleFactor = 0.77;
        isDraweropen = true;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildDrawer() => SafeArea(
        child: DrawerWidget(
          onSelectedItem: (item) {
            setState(() => this.item = item);
            closeDrawer();
          },
        ),
      );

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDraweropen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDagging = true,
        onHorizontalDragUpdate: (details) {
          // if (!isDagging) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDagging = false;
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: isDraweropen ? 1000 : 700),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(isDraweropen ? 45 : 5),
            child: AbsorbPointer(
              absorbing: isDraweropen,
              child: getDrawerPage(),
            ),
          ),
        ),
      ),
    );
  }

  Widget getDrawerPage() {
    switch (item) {
      case DrawerItems.allProject:
        return All_Project_Screen(openDrawer: openDrawer);
      case DrawerItems.projectPermission:
        return Project_Permission_Screen(openDrawer: openDrawer);
      case DrawerItems.toDo:
        return Todo_List_Screen(openDrawer: openDrawer);
      case DrawerItems.projectList:
        return Project_List_Screen(openDrawer: openDrawer);
      case DrawerItems.help:
        return Help_Screen(openDrawer: openDrawer);
      // case DrawerItems.logout:
      //   return LogoutScreen(openDrawer: openDrawer);
      case DrawerItems.home:
      default:
        return Homepage_Screen(openDrawer: openDrawer);
    }
  }
}