import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ShowcaseView extends StatelessWidget {
  const ShowcaseView({
    Key? key,
    required this.globalKey,
    required this.title,
    required this.child,
    required this.description,
  }) : super(key: key);

  final GlobalKey globalKey;
  final String title;
  final String description;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: globalKey,
      title: title,
      description: description,
      child: child,
    );
  }
}
