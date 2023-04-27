import 'package:flutter/material.dart';
import 'package:project_management_system/constans.dart';
import 'ChatMessage.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20 * 0.75,
        vertical: 20 / 2,
      ),
      decoration: BoxDecoration(
        color: chatBgColor.withOpacity(message!.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        message!.text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).hintColor,
            ),
      ),
    );
  }
}
