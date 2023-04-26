import 'package:flutter/material.dart';
import '../../../../../constans.dart';
import '../../../../utils/media-query.dart';
import '../tabView/completeTab.dart';
import '../tabView/inProgressTab.dart';
import '../tabView/inReviewtab.dart';
import '../tabView/todaTab.dart';

class Board_Widget extends StatefulWidget {
  @override
  State<Board_Widget> createState() => _Board_WidgetState();
}

class _Board_WidgetState extends State<Board_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeVariables.getHeight(context) * 0.8,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Color(0xfff374984),
            bottom: TabBar(
              indicatorColor: Color(0xfff4EBDE2),
              tabs: [
                Tab(
                  child: Text(
                    'To Do',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 11,
                        ),
                  ),
                ),
                Tab(
                  child: Text(
                    'In Progress',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 11,
                        ),
                  ),
                ),
                Tab(
                  child: Text(
                    'In Review',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 11,
                        ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Complete',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 11,
                        ),
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            // width: 300,
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
            child: TabBarView(
              children: [
                TodoTabview(),
                InProgresstabview(),
                InReviewTabview(),
                CompleteTabview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
