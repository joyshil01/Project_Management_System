import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'routing/app_router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      final width = constraints.maxWidth;
      final height = constraints.maxHeight;
      double _bodySmallFontSize(constraints) {
        const double baseFontSize = 12.0;
        final maxDimension = width > height ? width : height;
        final double fontSize = maxDimension * 0.005 + baseFontSize;
        return fontSize;
      }

      double _bodyMediumFontSize(constraints) {
        const double baseFontSize = 14;
        final maxDimension = width > height ? width : height;
        final double fontSize = maxDimension * 0.005 + baseFontSize;
        return fontSize;
      }

      double _bodyLargeFontSize(constraints) {
        const double baseFontSize = 20.0;
        final maxDimension = width > height ? width : height;
        final double fontSize = maxDimension * 0.008 + baseFontSize;
        return fontSize;
      }

      double _titleSmallFontSize(constraints) {
        const double baseFontSize = 8.0;
        final maxDimension = width > height ? width : height;
        final double fontSize = maxDimension * 0.008 + baseFontSize;
        return fontSize;
      }

      double _titleMediumFontSize(constraints) {
        const double baseFontSize = 10.0;
        final maxDimension = width > height ? width : height;
        final double fontSize = maxDimension * 0.008 + baseFontSize;
        return fontSize;
      }

      double _titleLargeFontSize(constraints) {
        const double baseFontSize = 12.0;
        final maxDimension = width > height ? width : height;
        final double fontSize = maxDimension * 0.008 + baseFontSize;
        return fontSize;
      }

      return GetMaterialApp(
        getPages: RoutesClass.routes,
        initialRoute: RoutesClass.login,
        onGenerateTitle: (BuildContext context) => 'PMS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          unselectedWidgetColor: Colors.grey,
          highlightColor: Color(0xfffEEEEEE), //list container color
          hintColor: Colors.white, //text color
          buttonColor: Colors.white,
          scaffoldBackgroundColor: Color(0xfff3A4D88),
          // const Color(0xfffFFFFFF), // bg color
          primaryColor: const Color(0xfffFFFFFF),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: const Color(0xfff0D0336), //App bar Color
          ),
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              fontFamily: 'Roboto',
              fontSize: _bodyLargeFontSize(constraints),
              color: Colors.black,
            ),
            bodyMedium: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: _bodyMediumFontSize(constraints),
            ),
            bodySmall: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: _bodySmallFontSize(constraints),
            ),
            titleSmall: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: _titleSmallFontSize(constraints),
            ),
            titleMedium: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: _titleMediumFontSize(constraints),
            ),
            titleLarge: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: _titleLargeFontSize(constraints),
            ),
          ),
        ),
      );
    });
  }
}
