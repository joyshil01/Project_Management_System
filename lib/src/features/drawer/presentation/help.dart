import 'package:flutter/material.dart';
import '../../../common_widgets/drawer_widget.dart';

class Help_Screen extends StatefulWidget {
  @override
  State<Help_Screen> createState() => _Help_ScreenState();
}

class _Help_ScreenState extends State<Help_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Container(
            child: Text(
              'Help',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                  ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Theme.of(context).buttonColor,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: drawer_widget(),
      ),
    );
  }
}
