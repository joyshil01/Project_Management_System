import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_management_system/src/features/dashboard/presentation/home_screen.dart';
import 'package:project_management_system/src/features/drawer/presentation/all_project.dart';
import 'package:project_management_system/src/features/drawer/presentation/help.dart';
import 'package:project_management_system/src/features/drawer/presentation/project_list.dart';
import 'package:project_management_system/src/features/drawer/presentation/project_permission.dart';
import 'package:project_management_system/src/features/drawer/presentation/todo_list.dart';

enum AppRoute {
  home,
  all_project,
  project_permission,
  todo_list,
  project_list,
  help,
}

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => Homepage_Screen(),
    ),
    GoRoute(
      path: '/all_project',
      name: AppRoute.all_project.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          child: All_Project_Screen(),
        );
      },
    ),
    GoRoute(
      path: '/project_permission',
      name: AppRoute.project_permission.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          child: Project_Permission_Screen(),
        );
      },
    ),
    GoRoute(
      path: '/todo_list',
      name: AppRoute.todo_list.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          child: Todo_List_Screen(),
        );
      },
    ),
    GoRoute(
      path: '/project_list',
      name: AppRoute.project_list.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          child: Project_List_Screen(),
        );
      },
    ),
    GoRoute(
      path: '/help',
      name: AppRoute.help.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          child: Help_Screen(),
        );
      },
    ),
  ],
);
