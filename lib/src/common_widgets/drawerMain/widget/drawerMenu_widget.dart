import 'package:flutter/material.dart';

class DrawerMenuWidget extends StatelessWidget {
  final VoidCallback onClicked;
  const DrawerMenuWidget({
    required this.onClicked,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClicked,
      icon: const Icon(
        Icons.align_horizontal_left,
        color: Colors.white,
      ),
    );
  }
}
