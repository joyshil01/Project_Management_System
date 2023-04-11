import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:project_management_system/src/common_widgets/indicator.dart';
import 'package:project_management_system/src/utils/media-query.dart';

class PieChartScreen extends StatefulWidget {
  const PieChartScreen({super.key});

  @override
  State<StatefulWidget> createState() => PieChartScreenState();
}

class PieChartScreenState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      // color: Colors.amber,
      child: AspectRatio(
        aspectRatio: 3,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: [
                  PieChart(
                    swapAnimationCurve: Curves.linear,
                    swapAnimationDuration: const Duration(milliseconds: 500),
                    PieChartData(
                      pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                          setState(() {
                            if (!event.isInterestedForInteractions ||
                                pieTouchResponse == null ||
                                pieTouchResponse.touchedSection == null) {
                              touchedIndex = -1;
                              return;
                            }
                            touchedIndex = pieTouchResponse
                                .touchedSection!.touchedSectionIndex;
                          });
                        },
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      // centerSpaceColor: Colors.amber,

                      sectionsSpace: 0.5,
                      centerSpaceRadius: 50,
                      sections: showingSections(),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 59,
                    right: 0,
                    bottom: 0,
                    child: Column(
                      children: [
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            '200',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 26,
                                      color: Theme.of(context).hintColor,
                                    ),
                          ),
                        ),
                        Text(
                          'Employee list',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 10,
                                    color: Theme.of(context).hintColor,
                                  ),
                        )
                      ],
                    ),
                  ),
                  // Positioned(
                  //   left: 10,
                  //   top: 197,
                  //   right: 0,
                  //   bottom: 0,
                  //   child: Row(
                  //     // mainAxisAlignment: MainAxisAlignment.end,
                  //     // crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: const <Widget>[
                  //       Indicator(
                  //         color: Color(0xfff5350A2),
                  //         text: 'To Do',
                  //         isSquare: true,
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Indicator(
                  //         color: Color(0xfffFEBE39),
                  //         text: 'In Progress',
                  //         isSquare: true,
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Indicator(
                  //         color: Color(0xfffF47F5A),
                  //         text: 'In Review',
                  //         isSquare: true,
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Indicator(
                  //         color: Color(0xfff48B869),
                  //         text: 'Complete',
                  //         isSquare: true,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 40.0 : 25.0;
      const shadows = [Shadow(color: Colors.white, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xfffFDBE39),
            value: 40,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xfffF47F5A),
            value: 40,
            title: '',
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xfff235695),
            value: 40,
            title: '',
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            color: Color(0xfff19BCB0),
            value: 40,
            title: '',
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }
}
