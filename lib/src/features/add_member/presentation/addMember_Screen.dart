import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../../../../constans.dart';
import '../../../utils/media-query.dart';
import 'customProjectDialog.dart';
import '../../../common_widgets/string_hardcoded.dart';

class Addmember_Screen extends StatefulWidget {
  @override
  State<Addmember_Screen> createState() => _Addmember_ScreenState();
}

class _Addmember_ScreenState extends State<Addmember_Screen> {
  TextEditingController _searchAddmember = new TextEditingController();
  final List<bool> isChecked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<String> _texts = [
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
    "Joy Shil",
    "Rachhel Sekh",
  ];

  final List<String> _designation = [
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
    "Frontend Developer",
    "Backend Developer",
  ];
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return Colors.blue;
  }

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
                      IconButton(
                        onPressed: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return CustomProjectDialog();
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.filter_list,
                          color: backiconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Project Assigning'.hardcoded,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 24,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.004,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Select team member'.hardcoded,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                            fontSize: 14,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.004,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                        controller: _searchAddmember,
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
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: SizeVariables.getWidth(context) * 0.02,
                right: SizeVariables.getWidth(context) * 0.02,
              ),
              child: Container(
                height: SizeVariables.getHeight(context) * 0.76,
                child: ListView.builder(
                  itemCount: _texts.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        bottomsheetProject(context);
                      },
                      child: Container(
                        height: SizeVariables.getHeight(context) * 0.1,
                        decoration: BoxDecoration(
                          color: Color(0xfff000000).withAlpha(12),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 8,
                              fit: FlexFit.tight,
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        radius:
                                            SizeVariables.getHeight(context) *
                                                0.035,
                                        backgroundImage: const AssetImage(
                                          'assets/img/team.jpg',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                        top: 22,
                                      ),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                _texts[index],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                      color: Theme.of(context)
                                                          .hintColor,
                                                      fontSize: 18,
                                                    ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              child: Text(
                                                _designation[index],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                      color: Theme.of(context)
                                                          .hintColor,
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
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                child: Checkbox(
                                  checkColor: Colors.white,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: isChecked[index],
                                  shape: CircleBorder(),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked[index] = value!;
                                    });
                                  },
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
            ),
          ],
        ),
      ),
    );
  }

  Future bottomsheetProject(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          height: SizeVariables.getHeight(context) * 0.54,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xfff394C86),
                Color(0xfff1F2957),
              ],
            ),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: SizeVariables.getHeight(context) * 0.03,
              left: SizeVariables.getWidth(context) * 0.05,
              right: SizeVariables.getWidth(context) * 0.02,
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: SizeVariables.getHeight(context) * 0.03,
                            backgroundImage: const AssetImage(
                              'assets/img/team.jpg',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeVariables.getWidth(context) * 0.025,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'Joy Shil'.hardcoded,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              color:
                                                  Theme.of(context).hintColor,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: SizeVariables.getWidth(context) *
                                          0.01,
                                    ),
                                    Container(
                                      height: SizeVariables.getHeight(context) *
                                          0.017,
                                      width: SizeVariables.getWidth(context) *
                                          0.08,
                                      decoration: BoxDecoration(
                                        color: Color(0xfffC44A41),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '100%'.hardcoded,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                color:
                                                    Theme.of(context).hintColor,
                                                fontSize: 8,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Frontend Developer'.hardcoded,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 14,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.05,
                      right: SizeVariables.getWidth(context) * 0.05,
                    ),
                    child: Container(
                      height: SizeVariables.getHeight(context) * 0.1,
                      child: TimelineTile(
                        indicatorStyle: const IndicatorStyle(
                          color: Color(0xfffD2D5F5),
                          height: 20,
                          width: 16,
                        ),
                        beforeLineStyle: const LineStyle(
                          color: Color(0xfffD9D9D9),
                          thickness: 2,
                        ),

                        // alignment: TimelineAlign.start,
                        endChild: Padding(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getHeight(context) * 0.008,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xfffD2D5F5),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            height: SizeVariables.getHeight(context) * 0.06,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeVariables.getWidth(context) * 0.04,
                                top: SizeVariables.getHeight(context) * 0.008,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Claimz'.hardcoded,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 12,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeVariables.getHeight(context) *
                                        0.002,
                                  ),
                                  Container(
                                    child: Text(
                                      'Busy. Not free at the moment'.hardcoded,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 14,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.05,
                      right: SizeVariables.getWidth(context) * 0.05,
                    ),
                    child: Container(
                      height: SizeVariables.getHeight(context) * 0.1,
                      child: TimelineTile(
                        indicatorStyle: const IndicatorStyle(
                          color: Color(0xfffC5E3F4),
                          height: 20,
                          width: 16,
                        ),
                        beforeLineStyle: const LineStyle(
                          color: Color(0xfffD9D9D9),
                          thickness: 2,
                        ),

                        // alignment: TimelineAlign.start,
                        endChild: Padding(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getHeight(context) * 0.008,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xfffC5E3F4),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            height: SizeVariables.getHeight(context) * 0.06,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeVariables.getWidth(context) * 0.04,
                                top: SizeVariables.getHeight(context) * 0.008,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Claimz'.hardcoded,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 12,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeVariables.getHeight(context) *
                                        0.002,
                                  ),
                                  Container(
                                    child: Text(
                                      'Busy. Not free at the moment'.hardcoded,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 14,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.05,
                      right: SizeVariables.getWidth(context) * 0.05,
                    ),
                    child: Container(
                      height: SizeVariables.getHeight(context) * 0.1,
                      child: TimelineTile(
                        indicatorStyle: const IndicatorStyle(
                          color: Color(0xfffC2EDEA),
                          height: 20,
                          width: 16,
                        ),
                        beforeLineStyle: const LineStyle(
                          color: Color(0xfffD9D9D9),
                          thickness: 2,
                        ),

                        // alignment: TimelineAlign.start,
                        endChild: Padding(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getHeight(context) * 0.008,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xfffC2EDEA),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            height: SizeVariables.getHeight(context) * 0.06,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeVariables.getWidth(context) * 0.04,
                                top: SizeVariables.getHeight(context) * 0.008,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Claimz'.hardcoded,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 12,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeVariables.getHeight(context) *
                                        0.002,
                                  ),
                                  Container(
                                    child: Text(
                                      'Busy. Not free at the moment'.hardcoded,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 14,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.05,
                      right: SizeVariables.getWidth(context) * 0.05,
                    ),
                    child: Container(
                      height: SizeVariables.getHeight(context) * 0.1,
                      child: TimelineTile(
                        indicatorStyle: const IndicatorStyle(
                          color: Color(0xfffF5D8D6),
                          height: 20,
                          width: 16,
                        ),
                        beforeLineStyle: const LineStyle(
                          color: Color(0xfffD9D9D9),
                          thickness: 2,
                        ),

                        // alignment: TimelineAlign.start,
                        endChild: Padding(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getHeight(context) * 0.008,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xfffF5D8D6),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            height: SizeVariables.getHeight(context) * 0.06,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeVariables.getWidth(context) * 0.04,
                                top: SizeVariables.getHeight(context) * 0.008,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Claimz'.hardcoded,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 12,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeVariables.getHeight(context) *
                                        0.002,
                                  ),
                                  Container(
                                    child: Text(
                                      'Busy. Not free at the moment'.hardcoded,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 14,
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
