import 'package:flutter/material.dart';
import 'package:project_management_system/src/common_widgets/containerStyle.dart';
import 'package:project_management_system/src/utils/media-query.dart';

class HomepageCard extends StatefulWidget {
  @override
  State<HomepageCard> createState() => _HomepageCardState();
  final List<Map<String, dynamic>> _data = [
    {
      'name': 'Claimz',
      'status': 'Pending',
      'description': 'UI Bug problem is not fix perfectly. Try to fix them.',
      'time': '4 days left',
      'image': 'assets/drawer/pro1.jpg',
      'color': const Color(0xfff7E4CF9),
      'dayColor': const Color(0xfff7B7B7B),
    },
    {
      'name': 'Vitwo.ai',
      'status': 'Completed',
      'description':
          'UI Bug problem is not fix perfectly.Last week, I finished my first professional Flutter project. I had the honour to build ',
      'time': 'Done',
      'image': 'assets/img/taskdemo1.jpg',
      'color': Colors.green,
      'dayColor': Colors.green,
    },
    {
      'name': 'Claimz Admin',
      'status': 'Pending',
      'description': 'UI Bug problem is not fix perfectly. Try to fix them.',
      'time': '10 days left',
      'image': 'assets/img/taskdemo.jpeg',
      'color': const Color(0xfff7E4CF9),
      'dayColor': const Color(0xfff7B7B7B),
    },
    {
      'name': 'Admin',
      'status': 'Pending',
      'description': 'UI Bug problem is not fix perfectly. Try to fix them.',
      'time': '30 days left',
      'image': 'assets/img/user.png',
      'color': const Color(0xfff7E4CF9),
      'dayColor': const Color(0xfff7B7B7B),
    },
  ];
}

class _HomepageCardState extends State<HomepageCard> {
  @override
  Widget build(BuildContext context) {
    final Widget _homeCard = Container(
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.2
          : MediaQuery.of(context).size.width * 0.3,
      child: ListView.builder(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemCount: widget._data.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            right: SizeVariables.getWidth(context) * 0.04,
          ),
          child: ContainerNewStyle(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.only(top: 10, left: 10),
              margin: EdgeInsets.only(
                right: SizeVariables.getWidth(context) * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget._data[index]['name'],
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Color(0xfff50BFE3),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                            ),
                      ),
                      Text(
                        widget._data[index]['status'],
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: widget._data[index]['color'],
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Text(
                    widget._data[index]['description'],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: MediaQuery.of(context).size.width * 0.042,
                        ),
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Text(
                    widget._data[index]['time'],
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: widget._data[index]['dayColor'],
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget._data.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(
                            right: SizeVariables.getWidth(context) * 0.02,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              widget._data[index]['image'],
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    return LayoutBuilder(builder: (ctx, constraints) {
      final width = constraints.maxWidth;
      final height = constraints.maxHeight;
      Widget child;
      if (height >= 800) {
        child = _homeCard;
      } else {
        child = _homeCard;
      }
      return child;
    });
  }
}