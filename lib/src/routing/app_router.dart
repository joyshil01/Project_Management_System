import 'package:get/get_navigation/get_navigation.dart';
import '../common_widgets/drawerMain/mainPage.dart';
import '../features/add_Report/presentation/addReport_Screen.dart';
import '../features/add_member/presentation/addMember_Screen.dart';
import '../features/all_Project/presentation/projectDetails_Screen.dart';
import '../features/create_Project/presentation/createProject_Screen.dart';
import '../features/login/presentation/login_Screen.dart';
import '../features/profile/presentation/editScree.dart';
import '../features/profile/presentation/profile_screen.dart';
import '../features/signup/presentation/signup_Screen.dart';
import '../features/task_detalis/presentation/component/chatBox_Screen.dart';
import '../features/task_detalis/presentation/taskDetails_Screen.dart';

class RoutesClass {
  static String login = '/';
  static String loginRoute() => login;
  static String signup = '/signup';
  static String signupRoute() => signup;
  static String drawer = '/login/drawer';
  static String drawerRoute() => drawer;
  static String project_details = '/all_project/project_details';
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
  static String profile = '/drawer/profile';
  static String profileRoute() => profile;
  static String profileEdit = '/drawer/profile/edit-profile';
  static String profileEditRoute() => profileEdit;

  static List<GetPage> routes = [
    GetPage(
      name: login,
      page: () => Login_Screen(),
    ),
    GetPage(
      transition: Transition.size,
      transitionDuration: const Duration(milliseconds: 500),
      name: signup,
      page: () => Signup_Screen(),
    ),
    GetPage(
      name: drawer,
      page: () => const MainPage(),
    ),
    GetPage(
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 500),
      name: project_details,
      page: () => const projectDetails_Screen(),
    ),
    GetPage(
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 500),
      name: Createproject,
      page: () => const Createproject_Screen(),
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
    GetPage(
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 500),
      name: profile,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 500),
      name: profileEdit,
      page: () => const EditProfile_Screen(),
    ),
  ];
}
