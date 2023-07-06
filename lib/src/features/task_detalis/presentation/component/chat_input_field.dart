import 'package:flutter/material.dart';
import '../../../../common_widgets/string_hardcoded.dart';
import '../../../../../constans.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20 / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            const Icon(
              Icons.add_circle,
              color: Color(0xfffA5B0EC),
              size: 25,
            ),
            const SizedBox(width: 7),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20 * 0.75,
                ),
                decoration: BoxDecoration(
                  color: kSentColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10 / 6),
                    Expanded(
                      child: TextFormField(
                        maxLines: 2,
                        decoration: InputDecoration(
                          hintText: "Type message".hardcoded,
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 14,
                                  ),
                          border: InputBorder.none,
                        ),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).hintColor,
                              fontSize: 14,
                            ),
                      ),
                    ),
                    const SizedBox(width: 20 / 4),
                    const Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: backiconColor,
                    ),
                  ],
                ),
              ),
            ),
            const CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 37, 94, 140),
              child: Center(
                child: Icon(
                  Icons.send,
                  color: backiconColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
