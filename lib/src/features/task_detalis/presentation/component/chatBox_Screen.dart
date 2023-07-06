import 'package:flutter/material.dart';
import '../../../../common_widgets/string_hardcoded.dart';
import '../../../../utils/media-query.dart';
import 'chatBody.dart';

class chatBox_Screen extends StatefulWidget {
  @override
  State<chatBox_Screen> createState() => _chatBox_ScreenState();
}

class _chatBox_ScreenState extends State<chatBox_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xfff374984),
      title: Row(
        children: [
          const BackButton(),
          const CircleAvatar(
            backgroundImage: AssetImage(
              "assets/img/taskdemo1.jpg",
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: SizeVariables.getWidth(context) * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rachhel Sekh".hardcoded,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 16,
                      ),
                ),
                Text(
                  "Active 3m ago".hardcoded,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 10,
                      ),
                )
              ],
            ),
          )
        ],
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.videocam,
          ),
        ),
        const SizedBox(width: 16 / 2),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.local_phone,
          ),
        ),
        const SizedBox(width: 16 / 2),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.more_vert,
          ),
        ),
        const SizedBox(width: 12 / 2),
      ],
    );
  }
}
