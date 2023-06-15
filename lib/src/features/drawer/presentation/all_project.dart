import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import '../../../../constans.dart';
import '../../../common_widgets/drawerMain/widget/drawerMenu_widget.dart';
import '../../../routing/app_router.dart';
import '../../../utils/media-query.dart';
import '../../all_Project/presentation/project_list.dart';

// ignore: camel_case_types
class All_Project_Screen extends StatelessWidget {
  final VoidCallback openDrawer;
  const All_Project_Screen({
    required this.openDrawer,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        shape: const CircleBorder(
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        overlayOpacity: 0.5,
        spacing: 12,
        overlayColor: Colors.black12,
        animatedIcon: AnimatedIcons.add_event,
        children: [
          SpeedDialChild(
            shape: const CircleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            labelWidget: Container(
              padding: EdgeInsets.only(
                right: SizeVariables.getWidth(context) * 0.03,
              ),
              child: Text(
                'Create Project',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 16,
                    ),
              ),
            ),
            child: const Icon(
              Icons.engineering_outlined,
              color: backiconColor,
            ),
            onTap: () {
              Get.toNamed(RoutesClass.CreateprojectRoute());
            },
          ),
        ],
      ),
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
                    child: Padding(
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
            Project_List(),
          ],
        ),
      ),
    );
  }
}
