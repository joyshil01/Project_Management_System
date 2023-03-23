import 'package:flutter/material.dart';
import '../../../common_widgets/drawer_widget.dart';

class Homepage_Screen extends StatefulWidget {
  @override
  State<Homepage_Screen> createState() => _Homepage_ScreenState();
}

class _Homepage_ScreenState extends State<Homepage_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Container(
            child: Text(
              'Home',
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
