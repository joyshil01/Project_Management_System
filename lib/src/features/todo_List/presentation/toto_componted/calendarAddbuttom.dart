import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../../../../constans.dart';
import '../../../../utils/media-query.dart';

class CalenderAddButton extends StatelessWidget {
  const CalenderAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      shape: const CircleBorder(
        side: BorderSide(
          color: Colors.white,
        ),
      ),
      overlayOpacity: 0.5,
      spacing: 12,
      overlayColor: Colors.black12,
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        SpeedDialChild(
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          labelWidget: Container(
            padding: EdgeInsets.only(
              right: SizeVariables.getWidth(context) * 0.03,
            ),
            child: Text(
              'Event',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 16,
                  ),
            ),
          ),
          child: const Icon(
            Icons.event,
            color: backiconColor,
          ),
          onTap: () {
            bottomsheetEvent(context);
          },
        ),
        SpeedDialChild(
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          labelWidget: Container(
            padding: EdgeInsets.only(
              right: SizeVariables.getWidth(context) * 0.03,
            ),
            child: Text(
              'Task',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 16,
                  ),
            ),
          ),
          child: const Icon(
            Icons.task,
            color: backiconColor,
          ),
          onTap: () {
            bottomsheetTask(context);
          },
        ),
        SpeedDialChild(
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          labelWidget: Container(
            padding: EdgeInsets.only(
              right: SizeVariables.getWidth(context) * 0.03,
            ),
            child: Text(
              'Remainder',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 16,
                  ),
            ),
          ),
          child: const Icon(
            Icons.notifications_active,
            color: backiconColor,
          ),
          onTap: () {
            bottomsheetRemainder(context);
          },
        ),
      ],
    );
  }

  Future bottomsheetRemainder(BuildContext context) {
    bool light0 = false;
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
      ),
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              height: SizeVariables.getHeight(context) * 0.47,
              decoration: const BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeVariables.getHeight(context) * 0.03,
                        ),
                        child: SizedBox(
                          child: Text(
                            'Reminders',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 26,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          'Reminders',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.edit,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Container(
                              width: SizeVariables.getWidth(context) * 0.65,
                              child: TextFormField(
                                // controller: projectName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 20,
                                    ),
                                decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  hintText: 'Remind me to',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Color(0xfff7B7B7B),
                                        fontSize: 20,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.018,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.notifications,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Remind me to',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Color(0xfff7B7B7B),
                                        fontSize: 20,
                                      ),
                                ),
                                Text(
                                  'jshil@vitwo.in',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Color(0xfff7B7B7B),
                                        fontSize: 11,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.015,
                        ),
                        Container(
                          width: SizeVariables.getWidth(context) * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                  bottomsheetAllDay(context);
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.topic,
                                        color: Colors.grey,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        width: SizeVariables.getWidth(context) *
                                            0.05,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'All Day',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Color(0xfff7B7B7B),
                                                  fontSize: 20,
                                                ),
                                          ),
                                          Text(
                                            'Tue, Mar28, 2023',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Color(0xfff7B7B7B),
                                                  fontSize: 14,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Switch(
                                value: light0,
                                onChanged: (bool value) {
                                  setState(() {
                                    light0 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.015,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.repeat,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'Doesn’t repeat',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.05,
                        ),
                        Container(
                          width: SizeVariables.getWidth(context) * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                child: Container(
                                  height:
                                      SizeVariables.getHeight(context) * 0.05,
                                  width: SizeVariables.getWidth(context) * 0.27,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xfff0C0338),
                                        Color(0xfff020054),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Save',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Color(0xfffCCCCCC),
                                            fontSize: 22,
                                          ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                },
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
        );
      },
    );
  }

  Future bottomsheetAllDay(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
      ),
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              height: SizeVariables.getHeight(context) * 0.7,
              decoration: const BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    // color: Colors.amber,
                    height: SizeVariables.getHeight(context) * 0.62,
                    child: SfCalendar(
                      viewHeaderHeight: -1,
                      headerHeight: SizeVariables.getHeight(context) * 0.07,
                      view: CalendarView.month,
                      cellBorderColor: Color(0xfffFFFFFF),
                      monthViewSettings: MonthViewSettings(
                        agendaItemHeight: 20,
                        monthCellStyle: MonthCellStyle(
                          textStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                      headerStyle: CalendarHeaderStyle(
                        textStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 20,
                                ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "Cancle",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff0C85E0),
                                    fontSize: 16,
                                  ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "ok",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff0C85E0),
                                    fontSize: 16,
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
          ),
        );
      },
    );
  }

  Future bottomsheetTask(BuildContext context) {
    bool light1 = false;
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
      ),
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              height: SizeVariables.getHeight(context) * 0.5,
              decoration: const BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeVariables.getHeight(context) * 0.03,
                        ),
                        child: SizedBox(
                          child: Text(
                            'Task Remind',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 22,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          'Reminders',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.edit,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Container(
                              width: SizeVariables.getWidth(context) * 0.65,
                              child: TextFormField(
                                // controller: projectName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 20,
                                    ),
                                decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  hintText: 'Add title',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Color(0xfff7B7B7B),
                                        fontSize: 20,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.018,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.display_settings,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Container(
                              width: SizeVariables.getWidth(context) * 0.65,
                              child: TextFormField(
                                // controller: projectName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 20,
                                    ),
                                decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  hintText: 'Add details',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Color(0xfff7B7B7B),
                                        fontSize: 20,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.015,
                        ),
                        Container(
                          width: SizeVariables.getWidth(context) * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                  bottomsheetAllDay(context);
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.topic,
                                        color: Colors.grey,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        width: SizeVariables.getWidth(context) *
                                            0.05,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'All Day',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Color(0xfff7B7B7B),
                                                  fontSize: 20,
                                                ),
                                          ),
                                          Text(
                                            'Tue, Mar28, 2023',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Color(0xfff7B7B7B),
                                                  fontSize: 14,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Switch(
                                value: light1,
                                onChanged: (bool value) {
                                  setState(() {
                                    light1 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.015,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.repeat,
                              size: 35,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'Doesn’t repeat',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.05,
                        ),
                        Container(
                          width: SizeVariables.getWidth(context) * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                child: Container(
                                  height:
                                      SizeVariables.getHeight(context) * 0.05,
                                  width: SizeVariables.getWidth(context) * 0.27,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xfff0C0338),
                                        Color(0xfff020054),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Save',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Color(0xfffCCCCCC),
                                            fontSize: 22,
                                          ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                },
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
        );
      },
    );
  }

  Future bottomsheetEvent(BuildContext context) {
    bool light2 = false;
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
      ),
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              height: SizeVariables.getHeight(context) * 0.75,
              decoration: const BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeVariables.getHeight(context) * 0.03,
                        ),
                        child: SizedBox(
                          child: Text(
                            'Task Remind',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 22,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          'Reminders',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.edit,
                              color: Colors.grey,
                              size: 30,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Container(
                              width: SizeVariables.getWidth(context) * 0.65,
                              child: TextFormField(
                                // controller: projectName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 18,
                                    ),
                                decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  hintText: 'Add event',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Color(0xfff7B7B7B),
                                        fontSize: 18,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Container(
                          width: SizeVariables.getWidth(context) * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                  bottomsheetAllDay(context);
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.topic,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: SizeVariables.getWidth(context) *
                                            0.05,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'All Day',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Color(0xfff7B7B7B),
                                                  fontSize: 18,
                                                ),
                                          ),
                                          Text(
                                            'Tue, Mar28, 2023',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Color(0xfff7B7B7B),
                                                  fontSize: 12,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Switch(
                                value: light2,
                                onChanged: (bool value) {
                                  setState(() {
                                    light2 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.timer,
                              size: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'India Standard Time',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.repeat,
                              size: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'Doesn’t repeat',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.group_add,
                              size: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'Add People',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.video_call,
                              size: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'Add video conferencing',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.add_location,
                              size: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'Add location',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.notification_add,
                              size: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'Add notification',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color(0xfff0C85E0),
                              radius: 10,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.06,
                            ),
                            Text(
                              'Doesn’t repeat',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.description,
                              size: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Container(
                              width: SizeVariables.getWidth(context) * 0.65,
                              child: TextFormField(
                                // controller: projectName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 18,
                                    ),
                                decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xfff7B7B7B),
                                    ),
                                  ),
                                  hintText: 'Add description',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Color(0xfff7B7B7B),
                                        fontSize: 18,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.attach_file,
                              size: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: SizeVariables.getWidth(context) * 0.05,
                            ),
                            Text(
                              'Add attachment',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7B7B7B),
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.05,
                        ),
                        Container(
                          width: SizeVariables.getWidth(context) * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                child: Container(
                                  height:
                                      SizeVariables.getHeight(context) * 0.05,
                                  width: SizeVariables.getWidth(context) * 0.27,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xfff0C0338),
                                        Color(0xfff020054),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Save',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Color(0xfffCCCCCC),
                                            fontSize: 22,
                                          ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                },
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
        );
      },
    );
  }
}
