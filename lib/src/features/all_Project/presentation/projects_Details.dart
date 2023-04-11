import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../common_widgets/containerStyle.dart';
import '../../../common_widgets/line_Chart.dart';
import '../../../common_widgets/pie_chart.dart';

class Projects_Detalis extends StatefulWidget {
  @override
  State<Projects_Detalis> createState() => _Projects_DetalisState();
}

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
    return new FloatingActionButton(
        child: new Text(text, style: roundTextStyle), onPressed: callback);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.amber,
                        child: Image.asset(
                          'assets/img/claimz.png',
                          height: SizeVariables.getHeight(context) * 0.07,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Pending',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xfff7E4CF9),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.004,
                ),
                Container(
                  child: Text(
                    'UI Bug problem is not fix perfectly. Try to fix them.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 14,
                        ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Container(
                  child: Text(
                    '* CRM    * Lead    * Customer    * VRM',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 14,
                        ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Container(
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 14,
                        ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.02,
                ),
                Container(
                  child: Text(
                    'Employee List',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 16,
                        ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    color: Color(0xfff235695),
                                    height: SizeVariables.getHeight(context) *
                                        0.026,
                                    width:
                                        SizeVariables.getWidth(context) * 0.06,
                                  ),
                                  SizedBox(
                                    width:
                                        SizeVariables.getWidth(context) * 0.02,
                                  ),
                                  Container(
                                    child: Text(
                                      'UI/UX Designer',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Theme.of(context).hintColor,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeVariables.getHeight(context) * 0.02,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    color: Color(0xfff19BCB0),
                                    height: SizeVariables.getHeight(context) *
                                        0.026,
                                    width:
                                        SizeVariables.getWidth(context) * 0.06,
                                  ),
                                  SizedBox(
                                    width:
                                        SizeVariables.getWidth(context) * 0.02,
                                  ),
                                  Container(
                                    child: Text(
                                      'Front-end',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Theme.of(context).hintColor,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeVariables.getHeight(context) * 0.02,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    color: Color(0xfffFDBE39),
                                    height: SizeVariables.getHeight(context) *
                                        0.026,
                                    width:
                                        SizeVariables.getWidth(context) * 0.06,
                                  ),
                                  SizedBox(
                                    width:
                                        SizeVariables.getWidth(context) * 0.02,
                                  ),
                                  Container(
                                    child: Text(
                                      'Back-end',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Theme.of(context).hintColor,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeVariables.getHeight(context) * 0.02,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    color: Color(0xfffF47F5A),
                                    height: SizeVariables.getHeight(context) *
                                        0.026,
                                    width:
                                        SizeVariables.getWidth(context) * 0.06,
                                  ),
                                  SizedBox(
                                    width:
                                        SizeVariables.getWidth(context) * 0.02,
                                  ),
                                  Container(
                                    child: Text(
                                      'Marketing',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Theme.of(context).hintColor,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: SizeVariables.getWidth(context) * 0.48,
                        child: PieChartScreen(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.02,
                ),
                Container(
                  child: Text(
                    'Project Status',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 16,
                        ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          '07-Mar-2023',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xfff588B75),
                                    fontSize: 12,
                                  ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '15-Sep-2023',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Color(0xfffEE7777),
                                    fontSize: 12,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.01,
                ),
                Container(
                  child: Column(
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
                        itemCount: 13,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: SizeVariables.getHeight(context) * 0.04,
                              backgroundImage: const AssetImage(
                                'assets/img/team.jpg',
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
                          count: 3,
                          effect: const ExpandingDotsEffect(
                            dotColor: Color(0xfffD9D9D9),
                            activeDotColor: Colors.blue,
                            dotHeight: 10,
                            dotWidth: 10,
                            strokeWidth: 5,
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
      ),
    );
  }
}
