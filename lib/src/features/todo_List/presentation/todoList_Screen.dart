import 'package:flutter/material.dart';
import '../../../../constans.dart';
import '../../../utils/media-query.dart';
import 'component_todo/board_Widget.dart';
import 'component_todo/calender_Widget.dart';
import 'component_todo/files_Widget.dart';
import 'component_todo/list_Widget.dart';

class TodoList_Screen extends StatefulWidget {
  @override
  State<TodoList_Screen> createState() => _TodoList_ScreenState();
}

class _TodoList_ScreenState extends State<TodoList_Screen> {
  int _selection = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeVariables.getWidth(context) * 0.035,
        right: SizeVariables.getWidth(context) * 0.025,
      ),
      child: Container(
        height: SizeVariables.getHeight(context) * 0.9,
        child: ListView(
          children: [
            Container(
              child: Text(
                'My Task',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 23,
                    ),
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.015,
            ),
            Container(
              height: SizeVariables.getHeight(context) * 0.05,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 4,
                        top: 4,
                        bottom: 4,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: _selection == 0
                                ? BorderRadius.circular(20)
                                : BorderRadius.circular(10),
                            side: _selection == 0
                                ? BorderSide.none
                                : const BorderSide(
                                    color: Color(0xfff4EBDE2),
                                    width: 1,
                                  ),
                          ),
                          primary: _selection == 0
                              ? Color(0xfff4EBDE2)
                              : Firstgradient,
                        ),
                        child: Container(
                          width: SizeVariables.getWidth(context) * 0.15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.list,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                'List',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 16,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _selection = 0;
                          });
                          print('SELECTION: $_selection');
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: _selection == 1
                                ? BorderRadius.circular(20)
                                : BorderRadius.circular(10),
                            side: _selection == 1
                                ? BorderSide.none
                                : const BorderSide(
                                    color: Color(0xfff4EBDE2),
                                    width: 1,
                                  ),
                          ),
                          primary: _selection == 1
                              ? Color(0xfff4EBDE2)
                              : Firstgradient,
                        ),
                        child: Container(
                          width: SizeVariables.getWidth(context) * 0.17,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.monitor,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Board',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 16,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _selection = 1;
                          });
                          print('SELECTION: $_selection');
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: _selection == 2
                                ? BorderRadius.circular(20)
                                : BorderRadius.circular(10),
                            side: _selection == 2
                                ? BorderSide.none
                                : const BorderSide(
                                    color: Color(0xfff4EBDE2),
                                    width: 1,
                                  ),
                          ),
                          primary: _selection == 2
                              ? Color(0xfff4EBDE2)
                              : Firstgradient,
                        ),
                        child: Container(
                          width: SizeVariables.getWidth(context) * 0.22,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Calender',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 16,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _selection = 2;
                          });
                          print('SELECTION: $_selection');
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: _selection == 3
                                ? BorderRadius.circular(20)
                                : BorderRadius.circular(10),
                            side: _selection == 3
                                ? BorderSide.none
                                : const BorderSide(
                                    color: Color(0xfff4EBDE2),
                                    width: 1,
                                  ),
                          ),
                          primary: _selection == 3
                              ? Color(0xfff4EBDE2)
                              : Firstgradient,
                        ),
                        child: Container(
                          width: SizeVariables.getWidth(context) * 0.15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.file_copy,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Files',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 16,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _selection = 3;
                          });
                          print('SELECTION: $_selection');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  _selection == 0
                      ? List_widget()
                      : _selection == 1
                          ? Board_Widget()
                          : _selection == 2
                              ? Calender_Widget()
                              : _selection == 3
                                  ? Files_Widget()
                                  : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
