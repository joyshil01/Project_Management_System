import 'package:flutter/material.dart';

class Department_Dailog extends StatelessWidget {
  final Widget child;
  final double? width;
  // final double height;

  const Department_Dailog({
    required this.child,
    this.width,
    // required this.height,
  });

  dialogContent(BuildContext context) {
    return Container(
      // height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          tileMode: TileMode.repeated,
          colors: [
            // Color(0xfff50C2E4),
            Color(0xfff2F66C7),
            Color(0xfff2F66C7),
          ],
        ),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}
