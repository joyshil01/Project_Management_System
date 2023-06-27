import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../common_widgets/containerStyle.dart';
import '../../../common_widgets/line_Chart.dart';
import '../../../common_widgets/pie_chart.dart';

// ignore: camel_case_types
class Projects_Detalis extends StatefulWidget {
  const Projects_Detalis({super.key});

  @override
  State<Projects_Detalis> createState() => _Projects_DetalisState();
}

// ignore: camel_case_types
class _Projects_DetalisState extends State<Projects_Detalis> {
  final _circle = PageController();
  double _currentValue = 0;
  setEndPressed(double value) {
    setState(() {
      _currentValue = value;
    });
  }

  Widget buildFloatingButton(String text, VoidCallback callback) {
    TextStyle roundTextStyle =
        const TextStyle(fontSize: 16.0, color: Colors.white);
    return FloatingActionButton(
      onPressed: callback,
      child: Text(text, style: roundTextStyle),
    );
  }

  final List<Map<String, dynamic>> _data = [
    {
      'image': 'assets/img/team.jpg',
    },
    {
      'image': 'assets/img/user_2.png',
    },
    {
      'image': 'assets/img/user_3.png',
    },
    {
      'image': 'assets/img/user_4.png',
    },
    {
      'image': 'assets/img/user_5.png',
    },
    {
      'image': 'assets/img/user.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      final height = constraints.maxHeight;
      final width = constraints.maxWidth;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ContainerNewStyle(
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.only(
              left: SizeVariables.getWidth(context) * 0.025,
              right: SizeVariables.getWidth(context) * 0.025,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/img/claimz.png',
                      height: height < 850
                          ? SizeVariables.getHeight(context) * 0.07
                          : SizeVariables.getHeight(context) * 0.09,
                    ),
                    Text(
                      'Pending',
                      style: width < 600
                          ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: const Color(0xfff7E4CF9),
                              )
                          : Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: const Color(0xfff7E4CF9),
                                fontSize: 20,
                              ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height < 800
                      ? SizeVariables.getHeight(context) * 0.004
                      : SizeVariables.getHeight(context) * 0.008,
                ),
                Text(
                  'UI Bug problem is not fix perfectly. Try to fix them.',
                  style: width < 600
                      ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 14,
                          )
                      : Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 22,
                          ),
                ),
                SizedBox(
                  height: height < 800
                      ? SizeVariables.getHeight(context) * 0.01
                      : SizeVariables.getHeight(context) * 0.015,
                ),
                Text(
                  '* CRM    * Lead    * Customer    * VRM',
                  style: width < 600
                      ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 14,
                          )
                      : Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 22,
                          ),
                ),
                SizedBox(
                  height: height < 800
                      ? SizeVariables.getHeight(context) * 0.01
                      : SizeVariables.getHeight(context) * 0.015,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
                  style: width < 600
                      ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 14,
                          )
                      : Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 22,
                          ),
                ),
                SizedBox(
                  height: height < 800
                      ? SizeVariables.getHeight(context) * 0.02
                      : SizeVariables.getHeight(context) * 0.02,
                ),
                Text(
                  'Employee List',
                  style: width < 600
                      ? Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 16,
                          )
                      : Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 24,
                          ),
                ),
                SizedBox(
                  height: height < 800
                      ? SizeVariables.getHeight(context) * 0.01
                      : SizeVariables.getHeight(context) * 0.018,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              color: const Color(0xfff235695),
                              height: height < 800
                                  ? SizeVariables.getHeight(context) * 0.026
                                  : SizeVariables.getHeight(context) * 0.05,
                              width: width < 600
                                  ? SizeVariables.getWidth(context) * 0.06
                                  : SizeVariables.getWidth(context) * 0.08,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.02,
                            ),
                            Text(
                              'UI/UX Designer',
                              style: width < 600
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 14,
                                      )
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 22,
                                      ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              color: const Color(0xfff19BCB0),
                              height: height < 800
                                  ? SizeVariables.getHeight(context) * 0.026
                                  : SizeVariables.getHeight(context) * 0.05,
                              width: width < 600
                                  ? SizeVariables.getWidth(context) * 0.06
                                  : SizeVariables.getWidth(context) * 0.08,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.02,
                            ),
                            Text(
                              'Front-end',
                              style: width < 600
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 14,
                                      )
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 22,
                                      ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              color: const Color(0xfffFDBE39),
                              height: height < 800
                                  ? SizeVariables.getHeight(context) * 0.026
                                  : SizeVariables.getHeight(context) * 0.05,
                              width: width < 600
                                  ? SizeVariables.getWidth(context) * 0.06
                                  : SizeVariables.getWidth(context) * 0.08,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.02,
                            ),
                            Text(
                              'Back-end',
                              style: width < 600
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 14,
                                      )
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 22,
                                      ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              color: const Color(0xfffF47F5A),
                              height: height < 800
                                  ? SizeVariables.getHeight(context) * 0.026
                                  : SizeVariables.getHeight(context) * 0.05,
                              width: width < 600
                                  ? SizeVariables.getWidth(context) * 0.06
                                  : SizeVariables.getWidth(context) * 0.08,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.02,
                            ),
                            Text(
                              'Marketing',
                              style: width < 600
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 14,
                                      )
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 22,
                                      ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Expanded(
                      // width: SizeVariables.getWidth(context) * 0.48,
                      child: PieChartScreen(),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.02,
                ),
                Text(
                  'Project Status',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 16,
                      ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '07-Mar-2023',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xfff588B75),
                            fontSize: 12,
                          ),
                    ),
                    Text(
                      '15-Sep-2023',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xfffEE7777),
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 25,
                        child: FAProgressBar(
                          borderRadius: BorderRadius.circular(20),
                          currentValue: 65,
                          size: 25,
                          maxValue: 100,
                          changeColorValue: 100,
                          changeProgressColor: Colors.green,
                          backgroundColor: Colors.white,
                          progressColor: Color(0xfff5350A2),
                          animatedDuration: const Duration(milliseconds: 300),
                          direction: Axis.horizontal,
                          verticalDirection: VerticalDirection.up,
                          displayText: '%',
                          formatValueFixed: 2,
                        ),
                      ),
                    ),
                    // Container(
                    //   child: Padding(
                    //     padding: EdgeInsets.only(bottom: 10),
                    //     child: Container(
                    //       child: Row(
                    //         children: <Widget>[
                    //           buildFloatingButton(
                    //               "0", () => setEndPressed(0)),
                    //           buildFloatingButton(
                    //               "50", () => setEndPressed(50)),
                    //           buildFloatingButton(
                    //               "80", () => setEndPressed(80)),
                    //           buildFloatingButton(
                    //               "90", () => setEndPressed(90)),
                    //           buildFloatingButton(
                    //               "100", () => setEndPressed(100)),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.03,
                ),
                Container(
                  child: Text(
                    'Project Progress Bar',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 16,
                        ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Line_Chart(),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Container(
                  child: Text(
                    'Team Member',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 16,
                        ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.pink,
                      height: SizeVariables.getHeight(context) * 0.09,
                      child: ListView.builder(
                        controller: _circle,
                        scrollDirection: Axis.horizontal,
                        itemCount: _data.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: SizeVariables.getHeight(context) * 0.04,
                              backgroundImage: AssetImage(
                                _data[index]!['image'],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmoothPageIndicator(
                          controller: _circle,
                          count: 2,
                          effect: const ExpandingDotsEffect(
                            dotColor: Color(0xfffD9D9D9),
                            activeDotColor: Colors.blue,
                            dotHeight: 10,
                            dotWidth: 10,
                            strokeWidth: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.02,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
