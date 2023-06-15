import 'drawerItem.dart';

class DrawerItems {
  static const home =
      DrawerItem(title: 'Home', image: 'assets/drawer/home.png');
  static const allProject =
      DrawerItem(title: 'All Project', image: 'assets/drawer/all_project.png');
  static const projectPermission = DrawerItem(
      title: 'Project Permission',
      image: 'assets/drawer/project_permission.png');
  static const toDo =
      DrawerItem(title: 'To-Do List', image: 'assets/drawer/todo_list.png');
  static const projectList = DrawerItem(
      title: 'Project List', image: 'assets/drawer/project_list.png');
  static const help =
      DrawerItem(title: 'Help', image: 'assets/drawer/Help.png');
  static const logout =
      DrawerItem(title: 'Logout', image: 'assets/drawer/Help.png');

  static final List<DrawerItem> all = [
    home,
    allProject,
    projectPermission,
    toDo,
    projectList,
    help,
    logout,
  ];
}
