import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'routing/app_router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
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
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: Colors.black,
              ),
              bodyMedium: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontSize: 14,
              ),
              bodySmall: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              titleSmall: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontSize: 8,
              ),
              titleMedium: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontSize: 10,
              ),
              titleLarge: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
        );
      },
    );
  }
}
