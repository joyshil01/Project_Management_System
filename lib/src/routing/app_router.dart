import 'package:get/get_navigation/get_navigation.dart';
import '../features/add_Report/presentation/addReport_Screen.dart';
import '../features/add_member/presentation/addMember_Screen.dart';
import '../features/all_Project/presentation/projectDetails_Screen.dart';
import '../features/create_Project/presentation/createProject_Screen.dart';
import '../features/dashboard/presentation/home_screen.dart';
import '../features/drawer/presentation/all_project.dart';
import '../features/drawer/presentation/help.dart';
import '../features/drawer/presentation/project_list.dart';
import '../features/drawer/presentation/project_permission.dart';
import '../features/drawer/presentation/todo_list.dart';
import '../features/task_detalis/presentation/component/chatBox_Screen.dart';
import '../features/task_detalis/presentation/taskDetails_Screen.dart';

class RoutesClass {
  static String home = '/';
  static String getHomeRoute() => home;
  static String all_project = '/all_project';
  static String all_projectRoute() => all_project;
  static String project_permission = '/project_permission';
  static String project_permissionRoute() => project_permission;
  static String todo_list = '/todo_list';
  static String todo_listRoute() => todo_list;
  static String project_list = '/project_list';
  static String project_listRoute() => project_list;
  static String help = '/help';
  static String helpRoute() => help;
  static String project_details = '/project_details';
  static String project_detailsRoute() => project_details;
  static String Createproject = '/create_project';
  static String CreateprojectRoute() => Createproject;
  static String addreport = '/add_report';
  static String addreportRoute() => addreport;
  static String addmember = '/add_member';
  static String addmemberRoute() => addmember;
  static String taskdetails = '/taskdetails';
  static String taskdetailsRoute() => taskdetails;
  static String chatbox = '/chatbox';
  static String chatboxRoute() => chatbox;

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => Homepage_Screen(),
    ),
    GetPage(
      name: all_project,
      page: () => All_Project_Screen(),
    ),
    GetPage(
      name: project_permission,
      page: () => Project_Permission_Screen(),
    ),
    GetPage(
      name: todo_list,
      page: () => Todo_List_Screen(),
    ),
    GetPage(
      name: project_list,
      page: () => Project_List_Screen(),
    ),
    GetPage(
      name: help,
      page: () => Help_Screen(),
    ),
    GetPage(
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 500),
      name: project_details,
      page: () => projectDetails_Screen(),
    ),
    GetPage(
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 500),
      name: Createproject,
      page: () => Createproject_Screen(),
    ),
    GetPage(
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 500),
      name: addreport,
      page: () => AddReport_Screen(),
    ),
    GetPage(
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 500),
      name: addmember,
      page: () => Addmember_Screen(),
    ),
    GetPage(
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 500),
      name: taskdetails,
      page: () => TaskDetails_Screen(),
    ),
    GetPage(
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 500),
      name: chatbox,
      page: () => chatBox_Screen(),
    ),
  ];
}
