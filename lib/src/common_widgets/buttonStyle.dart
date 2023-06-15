import 'package:flutter/material.dart';
import '../../constans.dart';
import '../utils/media-query.dart';

class SubmitButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  SubmitButton(
      {required this.label, required this.onPressed, this.width, this.height});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width ?? SizeVariables.getWidth(context) * 0.8,
        height: height ?? SizeVariables.getHeight(context) * 0.062,
        decoration: BoxDecoration(
          // color: Color(0xfff1E1E1E),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Color(0xfff50BFE3),
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Color(0xfff50BFE3),
                    fontSize: 21,
                  ),
            ),
            const SizedBox(
              width: 4,
            ),
            const Icon(
              Icons.arrow_circle_right,
              color: Color(0xfff50BFE3),
            )
          ],
        ),
      ),
    );
  }
}

class AppButtonStyle extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;
  final double height;
  AppButtonStyle({
    required this.label,
    required this.onPressed,
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          // color: Color(0xfff1E1E1E),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Color(0xfff50BFE3),
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Color(0xfff50BFE3),
                    fontSize: 16,
                  ),
            ),
            const SizedBox(
              width: 4,
            ),
            const Icon(
              Icons.arrow_circle_right,
              size: 14,
              color: Color(0xfff50BFE3),
            )
          ],
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;
  final double height;
  AddButton({
    required this.label,
    required this.onPressed,
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xfff51C3E5),
              Color(0xfff2D5FC5),
            ],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 18,
                  ),
            ),
            const SizedBox(
              width: 4,
            ),
            const Icon(
              Icons.add_circle,
              size: 16,
              color: addbuttonColor,
            )
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;
  final double height;
  LoginButton({
    required this.label,
    required this.onPressed,
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfff51C3E5),
              Color(0xfff2D5FC5),
            ],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: MediaQuery.of(context).size.width*0.045,
                  ),
            ),
            // const SizedBox(
            //   width: 4,
            // ),
            // const Icon(
            //   Icons.add_circle,
            //   size: 16,
            //   color: addbuttonColor,
            // )
          ],
        ),
      ),
    );
  }
}
