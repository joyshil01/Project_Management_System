// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widgets/string_hardcoded.dart';
import '../../../routing/app_router.dart';

class profileWidget extends StatelessWidget {
  const profileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage(
                'assets/profile.png',
              ),
              radius: MediaQuery.of(context).size.width * 0.1,
            ),
            const SizedBox(height: 3),
            Text(
              'Joy Shil'.hardcoded,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(height: 2),
            Text(
              'Application developer'.hardcoded,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                  ),
            ),
            const SizedBox(height: 2),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              icon: const Icon(
                Icons.edit,
                size: 16,
              ),
              label: Text(
                'Edit Profile'.hardcoded,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
              onPressed: () {
                Get.toNamed(RoutesClass.profileEdit);
              },
            ),
          ],
        ),
      ],
    );
  }
}
