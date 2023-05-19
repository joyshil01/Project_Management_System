import 'dart:math';
import 'package:analog_clock/analog_clock.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management_system/src/features/dashboard/presentation/homepage_Card.dart';
import 'package:project_management_system/src/features/dashboard/presentation/velocity.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../../constans.dart';
import '../../../common_widgets/drawer_widget.dart';

class Homepage_Screen extends StatefulWidget {
  @override
  State<Homepage_Screen> createState() => _Homepage_ScreenState();
}

class _Homepage_ScreenState extends State<Homepage_Screen> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xfff0D0336),
                Color(0xfff0D0336),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ),
          const SafeArea(
            child: drawer_widget(),
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: value,
            ),
            duration: Duration(milliseconds: 500),
            builder: (context, double val, child) {
              return (Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                child: Scaffold(
                  // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.01,
                      right: SizeVariables.getWidth(context) * 0.01,
                    ),
                    child: ListView(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    value == 0 ? value = 1 : value = 0;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left:
                                        SizeVariables.getWidth(context) * 0.01,
                                  ),
                                  child: Image.asset(
                                    'assets/drawer/menu 1.png',
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: SizeVariables.getHeight(context) *
                                        0.005,
                                    right:
                                        SizeVariables.getWidth(context) * 0.02,
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
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.015,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // color: Colors.amber,

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultTextStyle(
                                  // textWidthBasis: TextWidthBasis.longestLine,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'PT Serif',
                                  ),
                                  child: AnimatedTextKit(
                                    totalRepeatCount: 1,
                                    animatedTexts: [
                                      // FlickerAnimatedText(),
                                      WavyAnimatedText(
                                        'Hey Joy,',
                                        textAlign: TextAlign.left,
                                        // speed: Duration(milliseconds: 300),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    'How can i help you?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: 'PT Serif',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.015,
                        ),
                        Container(
                          height: SizeVariables.getHeight(context) * 0.47,
                          child: GridView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
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
                              Padding(
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
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 70,
                                          // color: Colors.purple,
                                          child: Image.asset(
                                            'assets/img/sun.png',
                                            // height: SizeVariables.getHeight(context)*0.1,
                                            // width: SizeVariables.getWidth(context) *0.05,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                top: SizeVariables.getHeight(
                                                        context) *
                                                    0.022,
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Monday',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium!
                                                          .copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .hintColor,
                                                            fontSize: 20,
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      'Kolkata',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium!
                                                          .copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .hintColor,
                                                            fontSize: 16,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: SizeVariables.getHeight(
                                                      context) *
                                                  0.06,
                                            ),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            '22',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall!
                                                                .copyWith(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .hintColor,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            bottom: 10,
                                                          ),
                                                          child: Container(
                                                            child: Text(
                                                              '0',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyMedium!
                                                                  .copyWith(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .hintColor,
                                                                      fontSize:
                                                                          8),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'c',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium!
                                                                .copyWith(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .hintColor,
                                                                  fontSize: 16,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 60,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            '71.6',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall!
                                                                .copyWith(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .hintColor,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            bottom: 10,
                                                          ),
                                                          child: Container(
                                                            child: Text(
                                                              '0',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyMedium!
                                                                  .copyWith(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .hintColor,
                                                                      fontSize:
                                                                          8),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'F',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium!
                                                                .copyWith(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .hintColor,
                                                                  fontSize: 16,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
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
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top:
                                              SizeVariables.getHeight(context) *
                                                  0.01,
                                          bottom:
                                              SizeVariables.getHeight(context) *
                                                  0.01,
                                        ),
                                        child: Container(
                                          child: Text(
                                            'Progress',
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
                                      ),
                                      Center(
                                        child: Container(
                                          height: 130,
                                          width: 130,
                                          // color: Colors.amber,
                                          child: SfRadialGauge(
                                            enableLoadingAnimation: true,
                                            animationDuration: 2500,
                                            axes: <RadialAxis>[
                                              RadialAxis(
                                                minimum: 0,
                                                maximum: 100,
                                                ranges: <GaugeRange>[
                                                  GaugeRange(
                                                    label: '50',
                                                    labelStyle:
                                                        const GaugeTextStyle(
                                                      color: Colors.white,
                                                    ),
                                                    startValue: 0,
                                                    endValue: 50,
                                                    color: Colors.green,
                                                  ),
                                                  GaugeRange(
                                                    label: '25',
                                                    labelStyle:
                                                        const GaugeTextStyle(
                                                      color: Colors.white,
                                                    ),
                                                    startValue: 50,
                                                    endValue: 75,
                                                    color: Colors.orange,
                                                  ),
                                                  GaugeRange(
                                                    label: '25',
                                                    labelStyle:
                                                        const GaugeTextStyle(
                                                      color: Colors.white,
                                                    ),
                                                    startValue: 75,
                                                    endValue: 100,
                                                    color: Colors.red,
                                                  )
                                                ],
                                                pointers: const <GaugePointer>[
                                                  NeedlePointer(
                                                    animationType: AnimationType
                                                        .easeInCirc,
                                                    enableAnimation: true,
                                                    animationDuration: 500,
                                                    value: 70,
                                                    needleColor: Colors.red,
                                                  ),
                                                ],
                                                axisLabelStyle:
                                                    const GaugeTextStyle(
                                                  color: Colors.white,
                                                  fontSize: 5,
                                                ),
                                                majorTickStyle:
                                                    const MajorTickStyle(
                                                  color: Colors.amber,
                                                ),
                                                endAngle: 40,
                                                startAngle: 140,
                                                showLastLabel: true,
                                                annotations: <GaugeAnnotation>[
                                                  GaugeAnnotation(
                                                    widget: Container(
                                                      child: Text(
                                                        '11:42',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall!
                                                            .copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .hintColor,
                                                              fontSize: 18,
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
                        ),
                        // SizedBox(
                        //   height: SizeVariables.getHeight(context) * 0.02,
                        // ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getWidth(context) * 0.03,
                            right: SizeVariables.getWidth(context) * 0.03,
                          ),
                          child: Container(
                            child: HomepageCard(),
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getWidth(context) * 0.03,
                            right: SizeVariables.getWidth(context) * 0.03,
                          ),
                          child: Velocitygraph(),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
            },
          ),
        ],
      ),
    );
  }
}
