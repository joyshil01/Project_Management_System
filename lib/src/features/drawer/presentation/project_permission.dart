import 'package:flutter/material.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import '../../../../constans.dart';
import '../../../common_widgets/drawerMain/widget/drawerMenu_widget.dart';
import '../../project_permission/presentation/projectPermission_screen.dart';

class Project_Permission_Screen extends StatelessWidget {
  final VoidCallback openDrawer;
  const Project_Permission_Screen({
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Project Permission',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 24,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: SizeVariables.getHeight(context) * 0.05,
                decoration: BoxDecoration(
                  color: Color(0xfff000000).withAlpha(24),
                  border: Border.all(
                    color: Color.fromARGB(255, 94, 94, 94),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          'Name',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).hintColor,
                                  ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          'Permissions',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).hintColor,
                                  ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Text(
                          'Action',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).hintColor,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ProjectPermission_Screen(),
          ],
        ),
      ),
    );
  }
}
