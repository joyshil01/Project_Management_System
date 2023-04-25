import 'package:flutter/material.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Calender_Widget extends StatefulWidget {
  @override
  State<Calender_Widget> createState() => _Calender_WidgetState();
}

class _Calender_WidgetState extends State<Calender_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) => SizedBox(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: SizeVariables.getHeight(context) * 0.17,
                ),
                child: SfCalendar(
                  viewHeaderHeight: -1,
                  headerHeight: SizeVariables.getHeight(context) * 0.07,
                  view: CalendarView.month,
                  monthViewSettings: MonthViewSettings(
                    agendaItemHeight: 20,
                    monthCellStyle: MonthCellStyle(
                      textStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).hintColor,
                                fontSize: 18,
                              ),
                      trailingDatesTextStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                      leadingDatesTextStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                    ),
                  ),
                  // allowDragAndDrop: true,
                  // allowedViews: const [
                  //   CalendarView.day,
                  //   CalendarView.schedule,
                  //   CalendarView.week,
                  //   CalendarView.month,
                  //   CalendarView.workWeek,
                  //   CalendarView.timelineDay,
                  //   CalendarView.timelineWeek,
                  //   CalendarView.timelineWorkWeek,
                  // ],

                  cellBorderColor: null,
                  todayTextStyle:
                      Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                          ),
                  headerStyle: CalendarHeaderStyle(
                    textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 20,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  viewHeaderStyle: ViewHeaderStyle(
                    dayTextStyle:
                        Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                              fontSize: 16,
                            ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 700,
            child: DraggableScrollableSheet(
              // expand: true,
              initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 0.6,
              builder: (context, scrollController) => Container(
                decoration: const BoxDecoration(
                  color: Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                // color: Colors.white,
                child: ListView.builder(
                  itemCount: 1,
                  physics: const ClampingScrollPhysics(),
                  controller: scrollController,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      top: SizeVariables.getHeight(context) * 0.03,
                      left: SizeVariables.getWidth(context) * 0.05,
                      right: SizeVariables.getWidth(context) * 0.02,
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        '24',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 30,
                                            ),
                                      ),
                                      Text(
                                        'Mon',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 14,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: SizeVariables.getWidth(context) * 0.03,
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Today',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 30,
                                            ),
                                      ),
                                      Text(
                                        '2 events and 2 task',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 8,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeVariables.getWidth(context) * 0.01,
                              right: SizeVariables.getWidth(context) * 0.05,
                            ),
                            child: Container(
                              height: SizeVariables.getHeight(context) * 0.1,
                              child: TimelineTile(
                                isFirst: true,
                                indicatorStyle: const IndicatorStyle(
                                  color: Color(0xfff7962EE),
                                  height: 20,
                                  width: 16,
                                ),
                                beforeLineStyle: const LineStyle(
                                  color: Color(0xfffD2D5F5),
                                  thickness: 2,
                                ),

                                // alignment: TimelineAlign.start,
                                endChild: Padding(
                                  padding: EdgeInsets.only(
                                    left: SizeVariables.getHeight(context) *
                                        0.025,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xfffD2D5F5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height:
                                        SizeVariables.getHeight(context) * 0.07,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: SizeVariables.getWidth(context) *
                                            0.04,
                                        top: SizeVariables.getHeight(context) *
                                            0.014,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    '09.00 - 09.30',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff7B7B7B),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right:
                                                        SizeVariables.getWidth(
                                                                context) *
                                                            0.04,
                                                  ),
                                                  child: Text(
                                                    '30 Minutes',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff7B7B7B),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeVariables.getHeight(
                                                    context) *
                                                0.002,
                                          ),
                                          Container(
                                            child: Text(
                                              'Coffee with Mr. Josh',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 16,
                                                  ),
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
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeVariables.getWidth(context) * 0.01,
                              right: SizeVariables.getWidth(context) * 0.05,
                            ),
                            child: Container(
                              height: SizeVariables.getHeight(context) * 0.1,
                              child: TimelineTile(
                                indicatorStyle: const IndicatorStyle(
                                  color: Color(0xfff58B2E4),
                                  height: 20,
                                  width: 16,
                                ),
                                beforeLineStyle: const LineStyle(
                                  color: Color(0xfffD9D9D9),
                                  thickness: 2,
                                ),

                                // alignment: TimelineAlign.start,
                                endChild: Padding(
                                  padding: EdgeInsets.only(
                                    left: SizeVariables.getHeight(context) *
                                        0.025,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xfffC5E3F4),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height:
                                        SizeVariables.getHeight(context) * 0.07,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: SizeVariables.getWidth(context) *
                                            0.04,
                                        top: SizeVariables.getHeight(context) *
                                            0.014,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    '09.30 - 12.30',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff7B7B7B),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right:
                                                        SizeVariables.getWidth(
                                                                context) *
                                                            0.04,
                                                  ),
                                                  child: Text(
                                                    '3 Hours',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff7B7B7B),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeVariables.getHeight(
                                                    context) *
                                                0.002,
                                          ),
                                          Container(
                                            child: Text(
                                              'Claimz demo app design',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 16,
                                                  ),
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
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeVariables.getWidth(context) * 0.01,
                              right: SizeVariables.getWidth(context) * 0.05,
                            ),
                            child: Container(
                              height: SizeVariables.getHeight(context) * 0.1,
                              child: TimelineTile(
                                indicatorStyle: const IndicatorStyle(
                                  color: Color(0xfff51C0B7),
                                  height: 20,
                                  width: 16,
                                ),
                                beforeLineStyle: const LineStyle(
                                  color: Color(0xfffD9D9D9),
                                  thickness: 2,
                                ),

                                // alignment: TimelineAlign.start,
                                endChild: Padding(
                                  padding: EdgeInsets.only(
                                    left: SizeVariables.getHeight(context) *
                                        0.025,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xfffC2EDEA),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height:
                                        SizeVariables.getHeight(context) * 0.07,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: SizeVariables.getWidth(context) *
                                            0.04,
                                        top: SizeVariables.getHeight(context) *
                                            0.014,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    '09.30 - 12.30',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff7B7B7B),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right:
                                                        SizeVariables.getWidth(
                                                                context) *
                                                            0.04,
                                                  ),
                                                  child: Text(
                                                    '3 Hours',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff7B7B7B),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeVariables.getHeight(
                                                    context) *
                                                0.002,
                                          ),
                                          Container(
                                            child: Text(
                                              'Meeting with Mr.John Kumar',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 16,
                                                  ),
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
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeVariables.getWidth(context) * 0.01,
                              right: SizeVariables.getWidth(context) * 0.05,
                            ),
                            child: Container(
                              height: SizeVariables.getHeight(context) * 0.1,
                              child: TimelineTile(
                                indicatorStyle: const IndicatorStyle(
                                  color: Color(0xfffEDA39E),
                                  height: 20,
                                  width: 16,
                                ),
                                beforeLineStyle: const LineStyle(
                                  color: Color(0xfffD9D9D9),
                                  thickness: 2,
                                ),

                                // alignment: TimelineAlign.start,
                                endChild: Padding(
                                  padding: EdgeInsets.only(
                                    left: SizeVariables.getHeight(context) *
                                        0.025,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xfffF5D8D6),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height:
                                        SizeVariables.getHeight(context) * 0.07,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: SizeVariables.getWidth(context) *
                                            0.04,
                                        top: SizeVariables.getHeight(context) *
                                            0.014,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    '09.30 - 12.30',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff7B7B7B),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right:
                                                        SizeVariables.getWidth(
                                                                context) *
                                                            0.04,
                                                  ),
                                                  child: Text(
                                                    '3 Hours',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                          color: const Color(
                                                              0xfff7B7B7B),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizeVariables.getHeight(
                                                    context) *
                                                0.002,
                                          ),
                                          Container(
                                            child: Text(
                                              'Bug Fix for new demo application',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 16,
                                                  ),
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
