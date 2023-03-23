import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'features/dashboard/presentation/home_screen.dart';
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
        return MaterialApp.router(
          restorationScopeId: 'app',
          routerConfig: goRouter,
          onGenerateTitle: (BuildContext context) => 'PMS',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            buttonColor: Colors.white,
            scaffoldBackgroundColor: const Color(0xfffFFFFFF),
            primaryColor: const Color(0xfffFFFFFF),
            colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: const Color(0xfff0D0336),
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              bodyMedium: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 13,
              ),
              bodySmall: TextStyle(
                fontFamily: 'Poppins',
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
