import 'package:flutter/material.dart';
import 'package:serials/widgets/auth/auth_widget.dart';
import 'package:serials/widgets/main_screen/main_screen_widget.dart';

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
        appBarTheme: const AppBarTheme(backgroundColor: Colors.lightGreen),
      ),
      routes: {
        '/': (context) => MainScreenWidget(),
        '/auth': (context) => AuthWidget(),
      },
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text('Произошла ошибка навигации'),
            ),
          );
        });
      },
    );
  }
}
