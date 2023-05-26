import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:get/get.dart';
import 'package:project_management_system/constans.dart';
import 'package:project_management_system/src/routing/app_router.dart';
import '../../../../utils/media-query.dart';

class List_widget extends StatefulWidget {
  @override
  State<List_widget> createState() => _List_widgetState();
}

class _List_widgetState extends State<List_widget> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  String add = '';
  DateTime? _dateTimeStart;
  DateTime? _dateTimeEnd;
  // DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  ExpandedTileController _recentlyAssigned = new ExpandedTileController();
  ExpandedTileController _Dolater = new ExpandedTileController();
  ExpandedTileController _addbutton = new ExpandedTileController();
  ExpandedTileController _doNext = new ExpandedTileController();
  ExpandedTileController _doToday = new ExpandedTileController();
  bool isChecked = true;
  bool isChecked1 = true;
  bool isChecked2 = true;
  bool isChecked3 = true;
  bool isShow = true;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return Colors.green;
  }

  Color getColor1(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return Colors.white;
  }

  TextEditingController _projectName = new TextEditingController();
  TextEditingController _taskName = new TextEditingController();
  TextEditingController _startDate = new TextEditingController();
  TextEditingController _endDate = new TextEditingController();

  String buttonName = 'Create Task';

  void changeButtonName() {
    setState(() {
      if (buttonName == 'Create Task') {
        buttonName = 'Add';
      } else {
        buttonName = 'Create Task';
      }
    });
  }

  List<Map<String, dynamic>> dataTask = [
    {
      'projectName': 'Claimz Admin Panel',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum',
      'progressColor': Color(0xfff5350A2),
      'changeProgressColor': Colors.green,
      'maxValue': '100',
      'backgroundColor': Colors.white,
      'startDate': '07-Mar-2023',
      'endDate': '15-Sep-2023',
    },
    {
      'projectName': 'Claimz',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum claimz',
      'maxValue': '75',
      'progressColor': Color(0xfff5350A2),
      'changeProgressColor': Colors.green,
      'backgroundColor': Colors.white,
      'startDate': '15-Apr-2023',
      'endDate': '20-Nov-2023',
    },
    {
      'projectName': 'Vitwo ai',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum vitwo ai',
      'maxValue': '45',
      'progressColor': Color(0xfff5350A2),
      'changeProgressColor': Colors.green,
      'backgroundColor': Colors.white,
      'startDate': '01-Jan-2023',
      'endDate': '30-Nov-2023',
    },
    {
      'projectName': 'PMS',
      'details':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum project management system',
      'maxValue': '25',
      'progressColor': Color(0xfff5350A2),
      'changeProgressColor': Colors.green,
      'backgroundColor': Colors.white,
      'startDate': '05-May-2023',
      'endDate': '31-Dec-2023',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeVariables.getHeight(context) * 0.8,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: SizeVariables.getHeight(context) * 0.01,
              ),
              child: ExpandedTile(
                trailing: null,
                theme: const ExpandedTileThemeData(
                  headerRadius: 0,
                  headerColor: Colors.transparent,
                  headerPadding: EdgeInsets.all(0.0),
                  titlePadding: EdgeInsets.symmetric(horizontal: 0),
                  trailingPadding: EdgeInsets.symmetric(horizontal: 0),
                  headerSplashColor: Colors.grey,
                  contentBackgroundColor: Colors.transparent,
                  contentPadding: EdgeInsets.all(0.0),
                  contentRadius: 0,
                ),
                controller: _recentlyAssigned,
                title: Column(
                  children: [
                    Container(
                      height: SizeVariables.getHeight(context) * 0.07,
                      decoration: BoxDecoration(
                        color: Color(0xfffD2D5F5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: SizeVariables.getWidth(context) * 0.05,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: const Icon(
                                Icons.apps,
                              ),
                            ),
                            Container(
                              child: const Icon(
                                Icons.arrow_right,
                                size: 30,
                              ),
                            ),
                            Container(
                              child: Text(
                                'Recently assigned',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                content: Scrollbar(
                  isAlwaysShown: true,
                  radius: Radius.circular(20),
                  child: Container(
                    height: 500,
                    child: ListView.builder(
                      itemCount: dataTask.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(RoutesClass.taskdetailsRoute());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xfff000000).withAlpha(25),
                              //color: Colors.red,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                child: const Icon(
                                                  Icons.apps,
                                                  color: backiconColor,
                                                ),
                                              ),
                                              Checkbox(
                                                checkColor: Colors.white,
                                                fillColor: MaterialStateProperty
                                                    .resolveWith(getColor),
                                                value: isChecked,
                                                shape: CircleBorder(),
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                              ),
                                              Container(
                                                child: Text(
                                                  dataTask[index]
                                                      ['projectName'],
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .hintColor,
                                                        fontSize: 18,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        PopupMenuButton(
                                          color: Color(0xfff374A83),
                                          icon: const Icon(
                                            Icons.more_vert,
                                            color: backiconColor,
                                            size: 18,
                                          ),
                                          itemBuilder: (context) => [
                                            PopupMenuItem(
                                              value: 1,
                                              // row with 2 children
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.edit,
                                                    color: backiconColor,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Edit Task",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            PopupMenuItem(
                                              value: 2,
                                              // row with two children
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.add_business,
                                                    color: backiconColor,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Duplicate Task",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            PopupMenuItem(
                                              value: 2,
                                              // row with two children
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.task_outlined,
                                                    color: backiconColor,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Uncomplete Task",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                          offset: Offset(-30, 20),
                                          elevation: 2,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width:
                                              SizeVariables.getWidth(context) *
                                                  0.7,
                                          padding: EdgeInsets.only(
                                            left: SizeVariables.getWidth(
                                                    context) *
                                                0.05,
                                          ),
                                          child: Text(
                                            dataTask[index]['details'],
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .hintColor,
                                                  fontSize: 10,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        SizeVariables.getHeight(context) * 0.02,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width:
                                              SizeVariables.getWidth(context) *
                                                  0.72,
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    dataTask[index]
                                                        ['startDate'],
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff588B75),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    dataTask[index]['endDate'],
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfffEE7777),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        SizeVariables.getHeight(context) * 0.01,
                                  ),
                                  Container(
                                    width:
                                        SizeVariables.getWidth(context) * 0.76,
                                    child: Column(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Container(
                                            height: 18,
                                            child: FAProgressBar(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              currentValue: 75,
                                              size: 25,
                                              maxValue: 100,
                                              changeColorValue: 100,
                                              changeProgressColor: Colors.green,
                                              backgroundColor: Colors.white,
                                              progressColor: dataTask[index]
                                                  ['progressColor'],
                                              animatedDuration: const Duration(
                                                milliseconds: 300,
                                              ),
                                              direction: Axis.horizontal,
                                              verticalDirection:
                                                  VerticalDirection.up,
                                              displayText: '%',
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
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  debugPrint("tapped!!");
                },
                onLongTap: () {
                  debugPrint("looooooooooong tapped!!");
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: SizeVariables.getHeight(context) * 0.01,
            ),
            child: ExpandedTile(
              trailing: null,
              theme: const ExpandedTileThemeData(
                headerRadius: 0,
                headerColor: Colors.transparent,
                headerPadding: EdgeInsets.all(0.0),
                titlePadding: EdgeInsets.symmetric(horizontal: 0),
                trailingPadding: EdgeInsets.symmetric(horizontal: 0),
                headerSplashColor: Colors.grey,
                contentBackgroundColor: Colors.transparent,
                contentPadding: EdgeInsets.all(0.0),
                contentRadius: 0,
              ),
              controller: _Dolater,
              title: Column(
                children: [
                  Container(
                    height: SizeVariables.getHeight(context) * 0.07,
                    decoration: BoxDecoration(
                      color: Color(0xfffDBC2C6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: SizeVariables.getWidth(context) * 0.05,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: const Icon(
                              Icons.apps,
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.arrow_right,
                              size: 30,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Do later',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 20,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              content: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      height: SizeVariables.getHeight(context) * 0.2,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xfff000000).withAlpha(25),
                        //color: Colors.red,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Container(
                        child: Row(
                          children: [],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                debugPrint("tapped!!");
              },
              onLongTap: () {
                debugPrint("looooooooooong tapped!!");
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: SizeVariables.getHeight(context) * 0.01,
            ),
            child: ExpandedTile(
              trailing: null,
              theme: const ExpandedTileThemeData(
                headerRadius: 0,
                headerColor: Colors.transparent,
                headerPadding: EdgeInsets.all(0.0),
                titlePadding: EdgeInsets.symmetric(horizontal: 0),
                trailingPadding: EdgeInsets.symmetric(horizontal: 0),
                headerSplashColor: Colors.grey,
                contentBackgroundColor: Colors.transparent,
                contentPadding: EdgeInsets.all(0.0),
                contentRadius: 0,
              ),
              controller: _doNext,
              title: Column(
                children: [
                  Container(
                    height: SizeVariables.getHeight(context) * 0.07,
                    decoration: BoxDecoration(
                      color: Color(0xfffC2EDEA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: SizeVariables.getWidth(context) * 0.05,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: const Icon(
                              Icons.apps,
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.arrow_right,
                              size: 30,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Do next week',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 20,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              content: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      height: SizeVariables.getHeight(context) * 0.2,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xfff000000).withAlpha(25),
                        //color: Colors.red,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Container(
                        child: Row(
                          children: [],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                debugPrint("tapped!!");
              },
              onLongTap: () {
                debugPrint("looooooooooong tapped!!");
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: SizeVariables.getHeight(context) * 0.01,
            ),
            child: ExpandedTile(
              trailing: null,
              theme: const ExpandedTileThemeData(
                headerRadius: 0,
                headerColor: Colors.transparent,
                headerPadding: EdgeInsets.all(0.0),
                titlePadding: EdgeInsets.symmetric(horizontal: 0),
                trailingPadding: EdgeInsets.symmetric(horizontal: 0),
                headerSplashColor: Colors.grey,
                contentBackgroundColor: Colors.transparent,
                contentPadding: EdgeInsets.all(0.0),
                contentRadius: 0,
              ),
              controller: _doToday,
              title: Column(
                children: [
                  Container(
                    height: SizeVariables.getHeight(context) * 0.07,
                    decoration: BoxDecoration(
                      color: Color(0xfffC5E3F4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: SizeVariables.getWidth(context) * 0.05,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: const Icon(
                              Icons.apps,
                            ),
                          ),
                          Container(
                            child: const Icon(
                              Icons.arrow_right,
                              size: 30,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Do today',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 20,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              content: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      height: SizeVariables.getHeight(context) * 0.2,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xfff000000).withAlpha(25),
                        //color: Colors.red,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Container(
                        child: Row(
                          children: [],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                debugPrint("tapped!!");
              },
              onLongTap: () {
                debugPrint("looooooooooong tapped!!");
              },
            ),
          ),
        ],
      ),
    );
  }
}
