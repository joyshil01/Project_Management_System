import 'package:flutter/material.dart';
import '../../../common_widgets/containerStyle.dart';

class Projects_Detalis extends StatefulWidget {
  @override
  State<Projects_Detalis> createState() => _Projects_DetalisState();
}

class _Projects_DetalisState extends State<Projects_Detalis> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ContainerNewStyle(
          width: double.infinity,
          child: Container(
            height: 200,
          ),
        ),
      ),
    );
  }
}
