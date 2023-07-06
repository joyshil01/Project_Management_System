import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widgets/string_hardcoded.dart';
import '../../../common_widgets/showCase.dart';
import '../../../features/dashboard/presentation/homepage_Card.dart';
import '../../../features/dashboard/presentation/velocity.dart';
import '../../../utils/media-query.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../../constans.dart';
import '../../../common_widgets/drawerMain/widget/drawerMenu_widget.dart';

class Homepage_Screen extends StatefulWidget {
  final VoidCallback openDrawer;
  const Homepage_Screen({
    required this.openDrawer,
    super.key,
  });

  @override
  State<Homepage_Screen> createState() => _Homepage_ScreenState();
}

class _Homepage_ScreenState extends State<Homepage_Screen> {
  final GlobalKey _globalKeyOne = GlobalKey();
  final GlobalKey _globalKeyTwo = GlobalKey();
  final GlobalKey _globalKeyThree = GlobalKey();
  final GlobalKey _globalKeyFour = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShowCaseWidget.of(context).startShowCase(
        [_globalKeyOne, _globalKeyTwo, _globalKeyThree, _globalKeyFour],
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Widget _homeScreen = Scaffold(
      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        width: double.infinity,
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
        padding: EdgeInsets.only(
          left: SizeVariables.getWidth(context) * 0.01,
          right: SizeVariables.getWidth(context) * 0.01,
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShowcaseView(
                  globalKey: _globalKeyOne,
                  title: 'Menu'.hardcoded,
                  description: ''.hardcoded,
                  child: DrawerMenuWidget(
                    onClicked: widget.openDrawer,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How can i help you?'.hardcoded,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.055,
                        fontFamily: 'PT Serif',
                      ),
                    ),
                    Text(
                      'Hey Joy,'.hardcoded,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.055,
                        fontFamily: 'PT Serif',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.015,
            ),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xfff172983),
                          Color(0xfff172983),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(2, 1),
                          blurRadius: 6,
                          spreadRadius: 0,
                          color: Color(0xfffA0A0A0),
                        ),
                      ],
                    ),
                  ),
                ),
                ShowcaseView(
                  globalKey: _globalKeyTwo,
                  title: 'Weather'.hardcoded,
                  description: '',
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          end: Alignment.bottomLeft,
                          begin: Alignment.topLeft,
                          colors: [
                            Color(0xfff55CDE8),
                            Color(0xfff2750C0),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 1),
                            blurRadius: 6,
                            spreadRadius: 0,
                            color: Color(0xfffA0A0A0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/img/sun.png',
                            // height: maxHeight < 900 ? 50 : 70,
                            // width: maxWidth < 600 ? 70 : 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 16, 20, 16),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Column(
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Monday'.hardcoded,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color:
                                                  Theme.of(context).hintColor,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                            ),
                                      ),
                                      Text(
                                        'Kolkata'.hardcoded,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color:
                                                  Theme.of(context).hintColor,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.04,
                                            ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '22'.hardcoded,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .hintColor,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.04,
                                                ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 10,
                                            ),
                                            child: Text(
                                              '0'.hardcoded,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                    color: Theme.of(context)
                                                        .hintColor,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.02,
                                                  ),
                                            ),
                                          ),
                                          Text(
                                            'c',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .hintColor,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.04,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '71.6'.hardcoded,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .hintColor,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.042,
                                                ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 10,
                                            ),
                                            child: Text(
                                              '0'.hardcoded,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                    color: Theme.of(context)
                                                        .hintColor,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.02,
                                                  ),
                                            ),
                                          ),
                                          Text(
                                            'F'.hardcoded,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .hintColor,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.042,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
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
                ShowcaseView(
                  globalKey: _globalKeyThree,
                  title: 'Progress'.hardcoded,
                  description: '',
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xfff8B10B6),
                            Color(0xfff0A0023),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 1),
                            blurRadius: 6,
                            spreadRadius: 0,
                            color: Color(0xfffA0A0A0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: SizeVariables.getHeight(context) * 0.01,
                          bottom: SizeVariables.getHeight(context) * 0.01,
                        ),
                        child: SizedBox(
                          child: Column(
                            children: [
                              Text(
                                'Progress'.hardcoded,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.045,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              Expanded(
                                child: Container(
                                  child: SfRadialGauge(
                                    enableLoadingAnimation: true,
                                    animationDuration: 2500,
                                    axes: <RadialAxis>[
                                      RadialAxis(
                                        minimum: 0,
                                        maximum: 100,
                                        ranges: <GaugeRange>[
                                          GaugeRange(
                                            label: '50'.hardcoded,
                                            labelStyle: GaugeTextStyle(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.034,
                                            ),
                                            startValue: 0,
                                            endValue: 50,
                                            color: Colors.green,
                                          ),
                                          GaugeRange(
                                            label: '25'.hardcoded,
                                            labelStyle: GaugeTextStyle(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.034,
                                            ),
                                            startValue: 50,
                                            endValue: 75,
                                            color: Colors.orange,
                                          ),
                                          GaugeRange(
                                            label: '25'.hardcoded,
                                            labelStyle: GaugeTextStyle(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.034,
                                            ),
                                            startValue: 75,
                                            endValue: 100,
                                            color: Colors.red,
                                          ),
                                        ],
                                        pointers: const <GaugePointer>[
                                          NeedlePointer(
                                            animationType:
                                                AnimationType.easeInCirc,
                                            enableAnimation: true,
                                            animationDuration: 500,
                                            value: 70,
                                            needleColor: Colors.red,
                                          ),
                                        ],
                                        axisLabelStyle: const GaugeTextStyle(
                                          color: Colors.white,
                                          fontSize: 5,
                                        ),
                                        majorTickStyle: const MajorTickStyle(
                                          color: Colors.amber,
                                        ),
                                        endAngle: 40,
                                        startAngle: 140,
                                        showLastLabel: true,
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                            widget: Container(
                                              child: Text(
                                                '11:42'.hardcoded,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                      color: Theme.of(context)
                                                          .hintColor,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.046,
                                                    ),
                                              ),
                                            ),
                                            angle: 90,
                                            positionFactor: 0.8,
                                          ),
                                        ],
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 170,
                    height: 180,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xfff172983),
                          Color(0xfff172983),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(2, 1),
                          blurRadius: 6,
                          spreadRadius: 0,
                          color: Color(0xfffA0A0A0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: AnalogClock(
                        useMilitaryTime: GetPlatform.isIOS,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 5,
                              color: Color(0xfff0030AC),
                            ),
                            color: Color(0xfff172983),
                            shape: BoxShape.circle), // decoration
                        width: 200.0,
                        isLive: true,
                        hourHandColor: Colors.white,
                        minuteHandColor: Colors.white,
                        showSecondHand: true,
                        numberColor: Colors.white,
                        showNumbers: true,
                        textScaleFactor: 1.5,
                        showTicks: true,
                        showDigitalClock: true,
                        digitalClockColor: Colors.white,
                        datetime: DateTime(2020, 8, 4, 9, 11, 0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.02,
            ),
            ShowcaseView(
              globalKey: _globalKeyFour,
              title: 'Project'.hardcoded,
              description: 'All projects status'.hardcoded,
              child: HomepageCard(),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.02,
            ),
            Velocitygraph(),
          ],
        ),
      ),
    );

    return LayoutBuilder(
      builder: (ctx, constraints) {
        final maxWidth = constraints.maxWidth;
        final maxHeight = constraints.maxHeight;
        Widget child;
        if (maxWidth >= 600) {
          child = _homeScreen;
        } else {
          child = _homeScreen;
        }
        return child;
      },
    );
  }
}
