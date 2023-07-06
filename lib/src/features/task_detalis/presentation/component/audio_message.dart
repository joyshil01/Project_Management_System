import 'package:flutter/material.dart';
import 'package:project_management_system/constans.dart';
import '../../../../common_widgets/string_hardcoded.dart';
import 'ChatMessage.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage? message;

  const AudioMessage({Key? key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.symmetric(
        horizontal: 20 * 0.75,
        vertical: 20 / 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xfff000000).withAlpha(12).withOpacity(message!.isSender ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message!.isSender ? Colors.white : kSentColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message!.isSender
                        ? Colors.white
                        : kSentColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: message!.isSender ? Colors.white : kSentColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "0.37".hardcoded,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).hintColor,
                ),
          ),
        ],
      ),
    );
  }
}
