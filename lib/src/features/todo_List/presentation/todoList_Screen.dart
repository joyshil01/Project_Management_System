import 'package:flutter/material.dart';
import '../../../common_widgets/string_hardcoded.dart';
import '../../../../constans.dart';
import '../../../utils/media-query.dart';
import '../data/edit.dart';
import '../data/note.dart';
import 'component_todo/board_Widget.dart';
import 'component_todo/calender_Widget.dart';
import 'component_todo/files_Widget.dart';
import 'component_todo/list_Widget.dart';
import '../../../features/todo_List/presentation/toto_componted/calendarAddbuttom.dart';

class TodoList_Screen extends StatefulWidget {
  @override
  State<TodoList_Screen> createState() => _TodoList_ScreenState();
}

class _TodoList_ScreenState extends State<TodoList_Screen> {
  int _selection = 0;
  List<Note> filteredNotes = [];
  bool sorted = false;

  @override
  void initState() {
    super.initState();
    filteredNotes = sampleNotes;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeVariables.getHeight(context) * 0.9,
      child: Scaffold(
        floatingActionButton: _selection == 0
            ? Container()
            // TaskAddButton(context)
            : _selection == 1
                ? Container()
                : _selection == 2
                    ? const CalenderAddButton()
                    : _selection == 3
                        ? Container()
                        : Container(),
        body: Container(
          padding: EdgeInsets.only(
            left: SizeVariables.getWidth(context) * 0.035,
            right: SizeVariables.getWidth(context) * 0.025,
          ),
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
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                child: Text(
                  'My Task'.hardcoded,
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
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: _selection == 0
                                  ? BorderRadius.circular(20)
                                  : BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Color(0xfff4EBDE2),
                                width: 1,
                              ),
                            ),
                            primary:
                                _selection == 0 ? Color(0xfff4EBDE2) : null,
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
                                  'List'.hardcoded,
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
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: _selection == 1
                                  ? BorderRadius.circular(20)
                                  : BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Color(0xfff4EBDE2),
                                width: 1,
                              ),
                            ),
                            primary:
                                _selection == 1 ? Color(0xfff4EBDE2) : null,
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
                                  'Board'.hardcoded,
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
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: _selection == 2
                                  ? BorderRadius.circular(20)
                                  : BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Color(0xfff4EBDE2),
                                width: 1,
                              ),
                            ),
                            primary:
                                _selection == 2 ? Color(0xfff4EBDE2) : null,
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
                                  'Calender'.hardcoded,
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
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: _selection == 3
                                  ? BorderRadius.circular(20)
                                  : BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Color(0xfff4EBDE2),
                                width: 1,
                              ),
                            ),
                            primary:
                                _selection == 3 ? Color(0xfff4EBDE2) : null,
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
                                  'Files'.hardcoded,
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
              Column(
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
            ],
          ),
        ),
      ),
    );
  }

  FloatingActionButton TaskAddButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const EditScreen(),
          ),
        );
        if (result != null) {
          setState(() {
            sampleNotes.add(Note(
                id: sampleNotes.length,
                title: result[0],
                content: result[1],
                modifiedTime: DateTime.now()));
            filteredNotes = sampleNotes;
          });
        }
      },
      elevation: 10,
      backgroundColor: Colors.grey.shade800,
      child: const Icon(
        Icons.add,
        size: 38,
      ),
    );
  }
}
