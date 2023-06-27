import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routing/app_router.dart';
import '../data/drawerItem.dart';
import '../data/drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;
  const DrawerWidget({
    Key? key,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildDrawerProfile(context),
            buildDrawerItem(context),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerProfile(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Get.toNamed(RoutesClass.profileRoute());
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage(
                  'assets/profile.png',
                ),
                radius: MediaQuery.of(context).size.width * 0.075,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Joy Shil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Application Devoloper',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildDrawerItem(BuildContext context) => Column(
        children: DrawerItems.all
            .map(
              (item) => ListTile(
                leading: Image.asset(item.image),
                title: Text(
                  item.title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                ),
                onTap: () => onSelectedItem(item),
              ),
            )
            .toList(),
      );
}
