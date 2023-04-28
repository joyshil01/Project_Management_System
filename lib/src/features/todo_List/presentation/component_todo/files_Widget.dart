import 'package:flutter/material.dart';
import 'package:project_management_system/constans.dart';

import '../../../../utils/media-query.dart';

class Files_Widget extends StatefulWidget {
  @override
  State<Files_Widget> createState() => _Files_WidgetState();
}

class _Files_WidgetState extends State<Files_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeVariables.getHeight(context) * 0.8,
      padding: EdgeInsets.only(
        // left: SizeVariables.getWidth(context) * 0.03,
        right: SizeVariables.getWidth(context) * 0.03,
      ),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'File ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 20,
                        ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Upload',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xfff48ADDC),
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  bottomsheetUpload(context);
                },
                icon: const Icon(
                  Icons.backup,
                  color: backiconColor,
                  size: 35,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future bottomsheetUpload(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      isScrollControlled: true,
      builder: (context) => Container(
        height: SizeVariables.getHeight(context) * 0.15,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xfff4BB6DF),
              Color(0xfff3A87D1),
            ],
          ),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(
            left: SizeVariables.getWidth(context) * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(
                  Icons.camera_alt,
                  color: backiconColor,
                ),
                title: Text(
                  'Camera',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 18,
                      ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.file_copy,
                  color: backiconColor,
                ),
                title: Text(
                  'Choose File',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 18,
                      ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
