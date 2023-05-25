import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import '../../../../../constans.dart';
import '../../../../common_widgets/containerStyle.dart';
import '../../../../routing/app_router.dart';

class TodoTabview extends StatefulWidget {
  @override
  State<TodoTabview> createState() => _TodoTabviewState();
}

class _TodoTabviewState extends State<TodoTabview> {
  List<Map<String, dynamic>> datatodo = [
    {
      'projectName': 'Claimz Admin Panel',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image1': 'assets/img/taskdemo.jpeg',
      'image2': 'assets/img/taskdemo1.jpg',
      'time': '8 hr ago',
      'tile': 'Onboarding',
    },
    {
      'projectName': 'Claimz',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. claimz',
      'image1': 'assets/img/taskdemo.jpeg',
      'image2': 'assets/img/taskdemo1.jpg',
      'time': '1 day ago',
      'tile': 'Location',
    },
    {
      'projectName': 'Vitwo ai',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. vitwo ai',
      'image1': 'assets/img/taskdemo.jpeg',
      'image2': 'assets/img/taskdemo1.jpg',
      'time': '7 hr ago',
      'tile': 'Todo',
    },
    {
      'projectName': 'PMS',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. pms',
      'image1': 'assets/img/taskdemo.jpeg',
      'image2': 'assets/img/taskdemo1.jpg',
      'time': '9 hr ago',
      'tile': 'Task design',
    },
    {
      'projectName': 'Claimz Admin Panel 1',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. claimz admin panel 1',
      'image1': 'assets/img/taskdemo.jpeg',
      'image2': 'assets/img/taskdemo1.jpg',
      'time': '6 hr ago',
      'tile': 'Login Api',
    },
    {
      'projectName': 'Claimz 1',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. claimz 1',
      'image1': 'assets/img/taskdemo.jpeg',
      'image2': 'assets/img/taskdemo1.jpg',
      'time': '2 hr ago',
      'tile': 'Report api',
    },
    {
      'projectName': 'Vitwo ai 1',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. vitwo ai 1',
      'image1': 'assets/img/taskdemo.jpeg',
      'image2': 'assets/img/taskdemo1.jpg',
      'time': '1 hr ago',
      'tile': 'Dashboard api',
    },
    {
      'projectName': 'PMS 1',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Pms 1',
      'image1': 'assets/img/taskdemo.jpeg',
      'image2': 'assets/img/taskdemo1.jpg',
      'time': '3 hr ago',
      'tile': 'Ui not fix',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListView.builder(
        itemCount: datatodo.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.toNamed(RoutesClass.taskdetailsRoute());
            },
            child: TabviewCard(
              child: Container(
                // height: 200,
                padding: EdgeInsets.only(
                  left: SizeVariables.getWidth(context) * 0.07,
                  right: SizeVariables.getWidth(context) * 0.07,
                  top: SizeVariables.getHeight(context) * 0.02,
                  bottom: SizeVariables.getHeight(context) * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: SizeVariables.getWidth(context) * 0.015,
                        right: SizeVariables.getWidth(context) * 0.015,
                        top: SizeVariables.getHeight(context) * 0.005,
                        bottom: SizeVariables.getHeight(context) * 0.005,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xfffD2D5F5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        datatodo[index]['tile'],
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 10,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.01,
                    ),
                    Text(
                      datatodo[index]['projectName'],
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xfffFFFFFF),
                            fontSize: 20,
                          ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.01,
                    ),
                    Text(
                      datatodo[index]['details'],
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xfffFFFFFF),
                            fontSize: 14,
                          ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: SizeVariables.getWidth(context) * 0.2,
                          child: Stack(
                            children: [
                              Positioned(
                                child: CircleAvatar(
                                  radius:
                                      SizeVariables.getHeight(context) * 0.02,
                                  backgroundImage: AssetImage(
                                    datatodo[index]['image1'],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 18,
                                child: CircleAvatar(
                                  radius:
                                      SizeVariables.getHeight(context) * 0.02,
                                  backgroundImage: AssetImage(
                                    datatodo[index]['image2'],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          datatodo[index]['time'],
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xfffFFFFFF),
                                    fontSize: 10,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
