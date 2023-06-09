import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management_system/src/common_widgets/buttonStyle.dart';
import '../../../common_widgets/string_hardcoded.dart';
import '../../../../constans.dart';
import '../../../utils/media-query.dart';

class AddReport_Screen extends StatefulWidget {
  @override
  State<AddReport_Screen> createState() => _AddReport_ScreenState();
}

class _AddReport_ScreenState extends State<AddReport_Screen> {
  final _searchAddStory = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomsheet(context);
        },
        child: const Icon(
          Icons.add,
          size: 25,
          color: backiconColor,
        ),
      ),
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
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getWidth(context) * 0.01,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: backiconColor,
                                size: 18,
                              ),
                              Text(
                                'Back'.hardcoded,
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
                      GestureDetector(
                        onTap: () {},
                        child: Container(
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add Your Project Story'.hardcoded,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 23,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.008,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // height: SizeVariables.getHeight(context) * 0.04,
                    width: SizeVariables.getWidth(context) * 0.8,
                    decoration: BoxDecoration(
                        color: Color(0xfffFFFFFF),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      controller: _searchAddStory,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                        prefixIconColor: Colors.grey,
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.mic,
                          ),
                        ),
                        hintText: 'Search Project List'.hardcoded,
                        hintStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xfff000000).withAlpha(67),
                                  fontSize: 14,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: SizeVariables.getHeight(context) * 0.05,
                decoration: BoxDecoration(
                  color: const Color(0xfff000000).withAlpha(24),
                  border: Border.all(
                    color: const Color.fromARGB(255, 83, 82, 82),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeVariables.getWidth(context) * 0.05,
                      ),
                      child: Text(
                        'Story'.hardcoded,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                              fontSize: 16,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeVariables.getWidth(context) * 0.05,
                      ),
                      child: Text(
                        'Add Story On'.hardcoded,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                              fontSize: 16,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: SizeVariables.getWidth(context) * 0.05,
                right: SizeVariables.getWidth(context) * 0.05,
              ),
              child: Container(
                height: SizeVariables.getHeight(context) * 0.72,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: SizeVariables.getHeight(context) * 0.06,
                      decoration: BoxDecoration(
                        color: Color(0xfff000000).withAlpha(12),
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 7,
                            fit: FlexFit.tight,
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                                  .hardcoded,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 14,
                                  ),
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: SizeVariables.getWidth(context) * 0.05,
                              ),
                              child: Text(
                                '03-May-2023'.hardcoded,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future bottomsheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xfff3A4D87),
                Color(0xfff1E2755),
              ],
            ),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          height: SizeVariables.getHeight(context) * 0.44,
          child: Padding(
            padding: EdgeInsets.only(
              top: SizeVariables.getHeight(context) * 0.03,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Write about your project'.hardcoded,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 24,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.005,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Write something about your project'.hardcoded,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 14,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.03,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: SizeVariables.getHeight(context) * 0.2,
                      decoration: BoxDecoration(
                        color: const Color(0xfff000000).withAlpha(35),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: TextFormField(
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 14,
                                  ),
                          maxLines: 10,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: SizeVariables.getWidth(context) * 0.06,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AddButton(
                        label: 'Add'.hardcoded,
                        onPressed: () {},
                        width: SizeVariables.getWidth(context) * 0.2,
                        height: SizeVariables.getHeight(context) * 0.045,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
