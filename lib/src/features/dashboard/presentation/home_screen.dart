import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_management_system/src/common_widgets/containerStyle.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import '../../../common_widgets/drawer_widget.dart';
import '../../../common_widgets/pie_chart.dart';
import '../../../routing/app_router.dart';

class Homepage_Screen extends StatefulWidget {
  @override
  State<Homepage_Screen> createState() => _Homepage_ScreenState();
}

class _Homepage_ScreenState extends State<Homepage_Screen> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xfff0D0336),
                Color(0xfff0D0336),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ),
          const SafeArea(
            child: drawer_widget(),
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: value,
            ),
            duration: Duration(milliseconds: 500),
            builder: (context, double val, child) {
              return (Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                child: Scaffold(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  appBar: AppBar(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    title: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              value == 0 ? value = 1 : value = 0;
                            });
                          },
                        ),
                        Container(
                          child: Text(
                            'Home',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Theme.of(context).buttonColor,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  body: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: BackgroundStyle(
                          child: Container(
                            // height: 500,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: SizeVariables.getWidth(context) *
                                            0.1,
                                      ),
                                      child: Container(
                                        child: Text(
                                          'Project Tasks Status',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 20,
                                              ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.more_vert_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    'Thursday , March 23',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontSize: 14,
                                        ),
                                  ),
                                ),
                                PieChartScreen(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: BackgroundStyle(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      SizeVariables.getHeight(context) * 0.03,
                                  // color: Colors.amber,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.more_vert_outlined,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 197,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemBuilder: (context, index) => InkWell(
                                      onTap: () {
                                        context.pushNamed(
                                            AppRoute.project_details.name);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ContainerCard(
                                          child: Container(
                                            width: 130,
                                            child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            'Pending',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium!
                                                                .copyWith(
                                                                  color: const Color(
                                                                      0xfffFEBE39),
                                                                  fontSize: 8,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      'Clamiz',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                            fontSize: 18,
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      'UI Bug problem is not fix perfectly. Try to fix them.',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium!
                                                          .copyWith(
                                                            fontSize: 12,
                                                            color: const Color(
                                                                0xfff7B7B7B),
                                                          ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 3,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '4 days left',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                            color: const Color(
                                                                0xfff7B7B7B),
                                                            fontSize: 13,
                                                          ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    // width: 100,
                                                    // height: 30,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          height: 30,
                                                          width: 60,
                                                          child: Stack(
                                                            fit: StackFit
                                                                .passthrough,
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                right: 30,
                                                                bottom: 0,
                                                                child:
                                                                    CircleAvatar(
                                                                  radius: SizeVariables
                                                                          .getHeight(
                                                                              context) *
                                                                      0.015,
                                                                  backgroundImage:
                                                                      const AssetImage(
                                                                    'assets/img/demo1.png',
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                right: 0,
                                                                bottom: 0,
                                                                child:
                                                                    CircleAvatar(
                                                                  radius: SizeVariables
                                                                          .getHeight(
                                                                              context) *
                                                                      0.015,
                                                                  backgroundImage:
                                                                      const AssetImage(
                                                                    'assets/img/demo2.png',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 30,
                                                          width: 30,
                                                          child: Stack(
                                                            children: [
                                                              PieChart(
                                                                PieChartData(
                                                                  borderData:
                                                                      FlBorderData(
                                                                          show:
                                                                              false),
                                                                  sectionsSpace:
                                                                      1,
                                                                  centerSpaceRadius:
                                                                      10,
                                                                  sections: [
                                                                    PieChartSectionData(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .secondary,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .secondary,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .secondary,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .secondary,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .secondary,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Colors
                                                                          .grey,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Colors
                                                                          .grey,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Colors
                                                                          .grey,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .secondary,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                    PieChartSectionData(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .secondary,
                                                                      title: '',
                                                                      value: 10,
                                                                      radius: 5,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 2,
                                                                top: 10,
                                                                right: 2,
                                                                bottom: 0,
                                                                child: Column(
                                                                  children: [
                                                                    FittedBox(
                                                                      fit: BoxFit
                                                                          .contain,
                                                                      child:
                                                                          Text(
                                                                        '70%',
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .bodyMedium!
                                                                            .copyWith(
                                                                              fontSize: 6,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
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
                                SizedBox(
                                  height:
                                      SizeVariables.getHeight(context) * 0.02,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
            },
          ),
        ],
      ),
    );
  }
}
