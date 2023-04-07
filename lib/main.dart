import 'package:flutter/material.dart';
import 'package:serials/widgets/auth/auth_widget.dart';
import 'package:serials/widgets/main_screen/main_screen_widget.dart';

import 'Theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: AppColors.mainLightGreen
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.mainLightGreen,
            unselectedItemColor: Colors.greenAccent,
        ),
      ),
      routes: {
        '/': (context) => MainScreenWidget(),
        '/auth': (context) => AuthWidget(),
      },
      initialRoute: "/",
    );
  }
}
