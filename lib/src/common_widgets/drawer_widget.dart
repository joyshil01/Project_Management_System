import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../routing/app_router.dart';
import '../utils/media-query.dart';

class drawer_widget extends StatelessWidget {
  const drawer_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      width: SizeVariables.getWidth(context) * 0.68,
      child: ListView(
        children: <Widget>[
          Container(
            height: SizeVariables.getHeight(context) * 0.12,
            color: Color(0xfff130649),
            child: Container(
              // height: 5,
              padding: EdgeInsets.only(
                left: SizeVariables.getWidth(context) * 0.01,
              ),
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: SizeVariables.getHeight(context) * 0.035,
                      backgroundImage: const AssetImage(
                        'assets/profile.png',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: SizeVariables.getHeight(context) * 0.038,
                      left: SizeVariables.getWidth(context) * 0.03,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Joy Shil',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'EMP109/JWAD',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              context.goNamed(AppRoute.home.name);
            },
            title: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/drawer/home.png',
                    ),
                  ),
                  SizedBox(
                    width: SizeVariables.getWidth(context) * 0.03,
                  ),
                  Container(
                    child: Text(
                      'Home',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff7B7B7B),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              context.goNamed(AppRoute.all_project.name);
            },
            title: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/drawer/all_project.png',
                    ),
                  ),
                  SizedBox(
                    width: SizeVariables.getWidth(context) * 0.03,
                  ),
                  Container(
                    child: Text(
                      'All Project',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff7B7B7B),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              context.goNamed(AppRoute.project_permission.name);
            },
            title: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/drawer/project_permission.png',
                    ),
                  ),
                  SizedBox(
                    width: SizeVariables.getWidth(context) * 0.03,
                  ),
                  Container(
                    child: Text(
                      'Project Permission',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff7B7B7B),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              context.goNamed(AppRoute.todo_list.name);
            },
            title: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/drawer/todo_list.png',
                    ),
                  ),
                  SizedBox(
                    width: SizeVariables.getWidth(context) * 0.03,
                  ),
                  Container(
                    child: Text(
                      'To-Do List',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff7B7B7B),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              context.goNamed(AppRoute.project_list.name);
            },
            title: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/drawer/project_list.png',
                    ),
                  ),
                  SizedBox(
                    width: SizeVariables.getWidth(context) * 0.03,
                  ),
                  Container(
                    child: Text(
                      'Project List',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff7B7B7B),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              context.goNamed(AppRoute.help.name);
            },
            title: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/drawer/Help.png',
                    ),
                  ),
                  SizedBox(
                    width: SizeVariables.getWidth(context) * 0.03,
                  ),
                  Container(
                    child: Text(
                      'Help',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff7B7B7B),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              context.goNamed(AppRoute.home.name);
            },
            title: Container(
              child: Row(
                children: [
                  Container(
                    child: const Icon(
                      Icons.logout_outlined,
                      color: Colors.grey,
                    )
                  ),
                  SizedBox(
                    width: SizeVariables.getWidth(context) * 0.03,
                  ),
                  Container(
                    child: Text(
                      'Logout',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff7B7B7B),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
