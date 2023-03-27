import 'package:flutter/material.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import 'package:sizer/sizer.dart';
import '../../../common_widgets/drawer_widget.dart';

class Project_Permission_Screen extends StatefulWidget {
  @override
  State<Project_Permission_Screen> createState() =>
      _Project_Permission_ScreenState();
}

class _Project_Permission_ScreenState extends State<Project_Permission_Screen> {
  TextEditingController _search = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Container(
            child: Text(
              'Project Permission',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                  ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Theme.of(context).buttonColor,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: drawer_widget(),
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: SizeVariables.getHeight(context) * 0.05,
                width: double.infinity,
                child: TextFormField(
                  controller: _search,
                  cursorColor: Colors.black,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                      ),
                  decoration: InputDecoration(
                    hintText: 'Search By Filter',
                    hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.grey,
                        ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        // width: 2.0,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: SizeVariables.getWidth(context) * 0.04,
                right: SizeVariables.getWidth(context) * 0.04,
              ),
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Text(
                          'Sl No',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Text(
                          'Name',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Permissions',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Center(
                        child: Container(
                          child: Text(
                            'Action',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height > 850
                  ? 77.h
                  : height > 750
                      ? 70.h
                      : height < 650
                          ? 64.h
                          : 60.h,
              child: ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: 50,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    left: SizeVariables.getWidth(context) * 0.04,
                    right: SizeVariables.getWidth(context) * 0.04,
                    top: SizeVariables.getHeight(context) * 0.01,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    '1',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 44),
                                  child: Container(
                                    child: Text(
                                      'Joy Shil',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Container(
                                    child: Text(
                                      'User',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 34),
                                  child: Container(
                                    child: Image.asset(
                                      'assets/img/Settings.png',
                                      height: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
}
