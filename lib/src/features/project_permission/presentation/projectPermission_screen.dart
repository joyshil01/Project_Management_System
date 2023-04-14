import 'package:flutter/material.dart';
import '../../../../constans.dart';
import '../../../utils/media-query.dart';

class ProjectPermission_Screen extends StatefulWidget {
  const ProjectPermission_Screen({super.key});

  @override
  State<ProjectPermission_Screen> createState() =>
      _ProjectPermission_ScreenState();
}

class _ProjectPermission_ScreenState extends State<ProjectPermission_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeVariables.getHeight(context) * 0.8,
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
                      'Joy Shil',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 14,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.08,
                    ),
                    child: Text(
                      'User',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 14,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    padding: EdgeInsets.only(
                      right: SizeVariables.getWidth(context) * 0.1,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: addbuttonColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
