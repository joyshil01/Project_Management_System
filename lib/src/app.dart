import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'routing/app_router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        SizerUtil.deviceType == DeviceType.mobile
            ? Container(
                // Widget for Mobile
                width: 100.w,
                height: 20.5.h,
              )
            : Container(
                // Widget for Tablet
                width: 100.w,
                height: 12.5.h,
              );
        return GetMaterialApp(
          getPages: RoutesClass.routes,
          initialRoute: RoutesClass.login,
          onGenerateTitle: (BuildContext context) => 'PMS',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            highlightColor: Color(0xfffEEEEEE), //list container color
            hintColor: Colors.white, //text color
            buttonColor: Colors.white,
            scaffoldBackgroundColor: Color(0xfff3A4D88),
            // const Color(0xfffFFFFFF), // bg color
            primaryColor: const Color(0xfffFFFFFF),
            colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: const Color(0xfff0D0336), //App bar Color
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              bodyMedium: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontSize: 13,
              ),
              bodySmall: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        );
      },
    );
  }
}
