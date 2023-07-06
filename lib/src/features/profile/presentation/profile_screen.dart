import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constans.dart';
import '../../../common_widgets/containerStyle.dart';
import '../../../utils/media-query.dart';
import 'profileWidget.dart';

enum Col {
  Blue,
  Purple,
  Green,
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _darkMode = false;
  var _notifications = false;
  var _pAccount = false;
  Col _color = Col.Blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Firstgradient,
              Secondgradient,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: backiconColor,
                                  size: 18,
                                ),
                                Text(
                                  'Back',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 16,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   width: 25,
                        // ),
                        // Text(
                        //   'My Profile',
                        //   style:
                        //       Theme.of(context).textTheme.bodyMedium!.copyWith(
                        //             color: Theme.of(context).hintColor,
                        //           ),
                        // ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: SizeVariables.getHeight(context) * 0.005,
                          right: SizeVariables.getWidth(context) * 0.02,
                        ),
                        child: Image.asset(
                          'assets/drawer/bell.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const profileWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: ContainerNewStyle(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchListTile(
                        value: _darkMode,
                        onChanged: (isChecked) {
                          setState(() {
                            _darkMode = isChecked;
                          });
                        },
                        secondary: CircleAvatar(
                          backgroundColor: calThemeColor,
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.dark_mode,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          'Dark mode',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        activeColor: Theme.of(context).colorScheme.tertiary,
                      ),
                      const SizedBox(height: 4),
                      SwitchListTile(
                        value: _notifications,
                        onChanged: (isChecked) {
                          setState(() {
                            _notifications = isChecked;
                          });
                        },
                        secondary: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 22, 111, 120),
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          'Notifications',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        activeColor: Theme.of(context).colorScheme.tertiary,
                      ),
                      const SizedBox(height: 4),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 164, 124, 44),
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.grid_view,
                            color: Colors.blue,
                          ),
                        ),
                        title: Row(
                          children: [
                            Text(
                              'Icon',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            const SizedBox(width: 5),
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.blue),
                              focusColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.blue),
                              value: Col.Blue,
                              groupValue: _color,
                              onChanged: (value) {
                                setState(() {
                                  _color = value!;
                                });
                              },
                            ),
                            Text(
                              'Blue',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 10,
                                  ),
                            ),
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.purple),
                              focusColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.purple),
                              value: Col.Purple,
                              groupValue: _color,
                              onChanged: (value) {
                                setState(() {
                                  _color = value!;
                                });
                              },
                            ),
                            Text(
                              'Purple',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 10,
                                  ),
                            ),
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green),
                              focusColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green),
                              value: Col.Green,
                              groupValue: _color,
                              onChanged: (value) {
                                setState(() {
                                  _color = value!;
                                });
                              },
                            ),
                            Text(
                              'Green',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 10,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: ContainerNewStyle(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 154, 71, 78),
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          'Security & Privacy',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: addbuttonColor,
                            size: 16,
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(height: 4),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 63, 26, 105),
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.text_fields,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          'Text Size',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: addbuttonColor,
                            size: 16,
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(height: 4),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 58, 124, 132),
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.language,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          'Languages',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: addbuttonColor,
                            size: 16,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: ContainerNewStyle(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 184, 138, 53),
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.message,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          'Send us a message',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: addbuttonColor,
                            size: 16,
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(height: 4),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 112, 55, 58),
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.info_outline,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          'About Us',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: addbuttonColor,
                            size: 16,
                          ),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(height: 4),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 61, 34, 95),
                          radius: MediaQuery.of(context).size.width * 0.06,
                          child: const Icon(
                            Icons.question_mark_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          'FAQs',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: addbuttonColor,
                            size: 16,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: ContainerNewStyle(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 109, 31, 25),
                      radius: MediaQuery.of(context).size.width * 0.06,
                      child: const Icon(
                        Icons.logout_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    title: Text(
                      'Log-out',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    trailing: const Padding(
                      padding: EdgeInsets.only(right: 17),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: addbuttonColor,
                        size: 16,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
